// lp_window.cpp   lightpanel  window functions


/* Copyright (c) 2007-2008, John Kichury

   This software is freely distributable free of charge and without license fees with the 
   following conditions:

   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
   IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
   JOHN KICHURY BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
   IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
   CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

   The above copyright notice must be included in any copies of this software.

*/

#include <GL/glu.h>
#include <GL/glx.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <X11/Xlib.h>
#include <X11/keysym.h>
#include <X11/Xatom.h>

#include "lpanel.h"
#include "lp_materials.h"
#include "lp_font.h"


static int RGBA_DB_attributes[] = {
  GLX_RGBA,
  GLX_RED_SIZE, 1,
  GLX_GREEN_SIZE, 1,
  GLX_BLUE_SIZE, 1,
  GLX_DOUBLEBUFFER,
  GLX_DEPTH_SIZE, 1,
  None,
};

// OpenGL Light source

static GLfloat light_pos0[] = { 0.,0.5,1.,0.};
static GLfloat light_pos1[] = { 0.,-0.5,-1.,0.};
static GLfloat light_diffuse[] = { 1.,1.,1.,1.};
static GLfloat light_specular[] = { 1.,1.,1.,1.};

static GLfloat mtl_amb[] = { 0.2, 0.2, 0.2, 1.0 };
static GLfloat mtl_dif[] = { 1.0, 1.0, 1.0, 1.0 };
static GLfloat mtl_spec[] = { 0.0, 0.0, 0.0, 1.0 };
static GLfloat mtl_shine[] = { 0.0 };
static GLfloat mtl_emission[] = { 0.0, 0.0, 0.0, 1.0 };

static int mousex, mousey, omx, omy, lmouse, mmouse, rmouse;


static Bool WaitForMapNotify(Display *d, XEvent *e, char *arg)
{
  if ((e->type == MapNotify) && (e->xmap.window == (Window)arg)) {
    return GL_TRUE;
  }
  return GL_FALSE;
}

void
Lpanel::procEvents(void)
{

  XEvent event;
  char buffer[5];
  int bufsize = 5;
  KeySym key;
  XComposeStatus compose;
  

  while(XPending(dpy)) 
  {
      XNextEvent(dpy, &event);

      switch(event.type) 
      {
	case ConfigureNotify:

		resizeWindow();
		break;
	case ClientMessage:
		if(event.xclient.data.l[0] == wmDeleteMessage)
		 {
		   // call user quit callback if exists
		   if(quit_callbackfunc) 
		    { (*quit_callbackfunc)();
		    }
		   else
		    { XCloseDisplay(dpy);
		      exit(0);
		    }
		 }
		break;
	case UnmapNotify:
		
		break;
	case DestroyNotify:
	

		break;

	case ButtonPress:

		if(!pick(event.xbutton.button-1, 1, event.xbutton.x, event.xbutton.y))
		{
		  if(event.xbutton.button == 1)	// left mousebutton ?
		   { lmouse = 1;
		     mousex = event.xbutton.x;
		     mousey = event.xbutton.y;
		   }
		}		

		break;

	case ButtonRelease:

		if(!pick(event.xbutton.button-1, 0, event.xbutton.x, event.xbutton.y))
		{
		  if(event.xbutton.button == 1) lmouse = 0;
		}
		break;

       case KeyRelease:

		XLookupString(&event.xkey, buffer, bufsize, &key, &compose);
		switch (key) 
		{
		  case XK_Shift_L:
		  case XK_Shift_R:
			shift_key_pressed = 0;
			break;

		}
		break;

       case KeyPress:

		XLookupString(&event.xkey, buffer, bufsize, &key, &compose);

		switch (key) 
		{
		  case XK_Escape:
			//exit(0);
			break;
		  case XK_Shift_L:
		  case XK_Shift_R:
			shift_key_pressed = 1;
			break;
		  case XK_c:
		  case XK_C:
			do_cursor = !do_cursor;
			break;
		  case XK_d:
		  case XK_D:
			view.pan[1] -= 0.1;
			view.redo_projections = 1;
			break;
		  case XK_s:
		  case XK_S:
			do_stats = !do_stats ;
			break;

		  case XK_l:
		  case XK_L:
			view.rot[1] += -1.;
			view.redo_projections = 1;
			break;

		  case XK_r:
		  case XK_R:
			view.rot[1] -= -1.;
			view.redo_projections = 1;
			break;

		  case XK_u:
		  case XK_U:
			view.pan[1] += 0.1;
			view.redo_projections = 1;
			break;

		  case XK_v:
		  case XK_V:
			if( view.projection == LP_ORTHO)
				view.projection = LP_PERSPECTIVE;
			else
				view.projection = LP_ORTHO;

			view.redo_projections = 1;
			break;

		  case XK_z:
			view.pan[2] -= .1;
			view.redo_projections = 1;
			break;

		  case XK_Z:
			view.pan[2] += .1;
			view.redo_projections = 1;
			break;

		  case XK_Up:
			if(do_cursor)
			  inc_cursor(0.,cursor_inc );
			else
			  { 
			    if(shift_key_pressed)
			      view.pan[1] += -0.1;
			    else
			      view.rot[0] += -1.;

			    view.redo_projections = 1;
			  }
			break;
		  case XK_Down:
			if(do_cursor)
			   inc_cursor(0.,-cursor_inc );
			else
			  { 
			    if(shift_key_pressed)
			      view.pan[1] += 0.1;
			    else
			      view.rot[0] += 1.;

			    view.redo_projections = 1;
			  }
			break;
		  case XK_Right:
			if(do_cursor)
			   inc_cursor(cursor_inc, 0.);
			else
			  { 
			    if(shift_key_pressed)
			      view.pan[0] += -.1;
			    else
			      view.rot[1] += 1.;

			    view.redo_projections = 1;
			  }
			break;
		  case XK_Left:
			if(do_cursor)
			  inc_cursor(-cursor_inc, 0.);
			else
			  { 
			    if(shift_key_pressed)
			      view.pan[0] += .1;
			    else
			      view.rot[1] += -1.;

			    view.redo_projections = 1;
			  }
			break;

		  case XK_1:
		  case XK_KP_1:
          		break;

		  default:
		  break;
		}

	case MotionNotify:

		if(lmouse)
		{
		    omx = mousex;
		    omy = mousey;

		    if(shift_key_pressed)
		     {
			view.pan[0] +=  ((float) event.xbutton.x - (float) omx) *.02;
			view.pan[1] -=  ((float) event.xbutton.y - (float) omy) *.02;

		     }
		    else
		     {
			view.rot[1] +=  ((float) event.xbutton.x - (float) omx) *.2;
			view.rot[0] +=  ((float) event.xbutton.y - (float) omy) *.2;
		     }

		     mousex = event.xbutton.x;
		     mousey = event.xbutton.y;
		     view.redo_projections = 1;
		}
		break;
        default:
		break;
      }

   } // end while
} // end procEvents()

int 
Lpanel::openWindow(const char *title)
{

  int status;
  
  XVisualInfo *vi = NULL;
  XSetWindowAttributes swa;
  XSizeHints hints;
  XEvent ev;

  int *attr;

  dpy = XOpenDisplay(0);
  if (dpy == NULL)
   {
    fprintf(stderr, "Can't connect to display \"%s\"\n", getenv("DISPLAY"));
    return 0;
   }

  attr = RGBA_DB_attributes;
  vi = glXChooseVisual(dpy, DefaultScreen(dpy), attr);
  if (vi == NULL) 
   {
    fprintf(stderr, "Can't find visual\n");
    return 0;
  }


  glXGetConfig(dpy, vi, GLX_USE_GL, &status);
  if (!status) 
   {
    printf("Your system must support OpenGL to run FrontPanel\n");
    return 0;
  }

  swa.border_pixel = 0;
  swa.colormap = XCreateColormap(dpy, RootWindow(dpy, vi->screen),
                                 vi->visual, AllocNone);
  swa.event_mask = ExposureMask | StructureNotifyMask | KeyPressMask | KeyReleaseMask |
    ButtonPressMask | ButtonReleaseMask | PointerMotionMask ;

  float geom_aspect = (bbox.xyz_max[0] - bbox.xyz_min[0]) / (bbox.xyz_max[1] - bbox.xyz_min[1]);
  window_ysize = (int) ( (float) window_xsize / geom_aspect);

  window = XCreateWindow(dpy, RootWindow(dpy, vi->screen), 500, 500, window_xsize, window_ysize,
                         0, vi->depth, InputOutput, vi->visual,
                         CWBorderPixel | CWColormap | CWEventMask, &swa);

  wmDeleteMessage = XInternAtom(dpy, "WM_DELETE_WINDOW", False);
  XSetWMProtocols(dpy, window, &wmDeleteMessage, 1);

  XStoreName(dpy, window, title);

  hints.width = 500;
  hints.height = 125;
  hints.min_aspect.x = window_xsize;
  hints.min_aspect.y = window_ysize;
  hints.max_aspect.x = window_xsize;
  hints.max_aspect.y = window_ysize;
  hints.flags = PSize | PAspect;
  XSetNormalHints(dpy, window, &hints);

  XMapWindow(dpy, window);
  XIfEvent(dpy, &ev, WaitForMapNotify, (char *)window);

  if ((cx = glXCreateContext(dpy, vi, 0, GL_TRUE)) == NULL) {
    printf("lightpanel: Can't create context\n");
    return 0;
  }
  if (!glXMakeCurrent(dpy, window, cx)) {
    printf("lightpanel: Can't make window current to context\n");
    return 0;
  }

 resizeWindow();
 initGraphics();

 cursor[0] = (bbox.xyz_max[0] + bbox.xyz_min[0]) * .5;
 cursor[1] = (bbox.xyz_max[1] + bbox.xyz_min[1]) * .5;
 makeRasterFont();
 make_cursor_text();

 return 1;
}

void
Lpanel::destroyWindow(void)
{

 glFlush();
 glFinish();

  if (!glXMakeCurrent(dpy, None, None)) {
    printf("lightpanel: destroyWindow: Can't release context\n");
  }

 glXDestroyContext(dpy,cx);
 XDestroyWindow(dpy, window);
 XCloseDisplay(dpy);
 dpy = 0;
 cx = 0;
 window = 0;



}

void
Lpanel::setModelview(int dopick)
{
  float x,y;

 if(!dopick)
  {
   glMatrixMode(GL_MODELVIEW);
  }
   glLoadIdentity();

  switch(view.projection)
  {
    case LP_ORTHO:
  	glTranslatef(0.,0.,-10.);	// so objects at z=0 don't get clipped
	break;

    case LP_PERSPECTIVE:
	x = -(( bbox.xyz_min[0] + bbox.xyz_max[0]) * 0.5 - view.pan[0]);
	y = -(( bbox.xyz_min[1] + bbox.xyz_max[1]) * 0.5 - view.pan[1]);

  	glTranslatef(x,y,view.pan[2]);	

  	glTranslatef(bbox.center[0], bbox.center[1], bbox.center[2]);
	glRotatef(view.rot[2],0.,0.,1.);
	glRotatef(view.rot[0],1.,0.,0.);
	glRotatef(view.rot[1],0.,1.,0.);
  	glTranslatef(-bbox.center[0], -bbox.center[1], -bbox.center[2]);

	break;
  }

}

void
Lpanel::setProjection(int dopick)
{

  switch(view.projection)
  {
    case LP_ORTHO:

	if(!dopick) 
	 { glMatrixMode(GL_PROJECTION);
	   glLoadIdentity();
	 }

	glOrtho(bbox.xyz_min[0], bbox.xyz_max[0], bbox.xyz_min[1], bbox.xyz_max[1], .1, 1000.);
	if(!dopick) glMatrixMode(GL_MODELVIEW);
	break;

    case LP_PERSPECTIVE:

	if(!dopick) 
	 { glMatrixMode(GL_PROJECTION);
	   glLoadIdentity();
	 }

	gluPerspective(view.fovy, view.aspect, view.znear, view.zfar);
	if(!dopick) glMatrixMode(GL_MODELVIEW);


	break;

  }

}


void
Lpanel::resizeWindow(void)
{
  XWindowAttributes windowattr;

  XGetWindowAttributes(dpy, window, &windowattr);

  window_xsize = windowattr.width;
  window_ysize = windowattr.height;
  view.aspect = (double) window_xsize / (double) window_ysize;
  glViewport(0, 0, windowattr.width, windowattr.height);
  glGetIntegerv (GL_VIEWPORT, viewport);

  setProjection(0);

  setModelview(0);

}

void
Lpanel::doPickProjection(void)
{
//  glOrtho(bbox.xyz_min[0], bbox.xyz_max[0], bbox.xyz_min[1], bbox.xyz_max[1], .1, 1000.);
  setProjection(1);

}

void
Lpanel::doPickModelview(void)
{
  setModelview(1);
  //glTranslatef(0.,0.,-10.);	// so objects at z=0 don't get clipped
}

void
Lpanel::initGraphics(void)
{
  // initialize materials

  lp_init_materials_dlist();

  // define lights in case we use them

 glLoadIdentity();
 glLightfv(GL_LIGHT0,GL_POSITION,light_pos0);
 glLightfv(GL_LIGHT0,GL_DIFFUSE,light_diffuse);
 glLightfv(GL_LIGHT0,GL_DIFFUSE,light_specular);

// glLightfv(GL_LIGHT1,GL_POSITION,light_pos1);
// glLightfv(GL_LIGHT1,GL_DIFFUSE,light_diffuse);
 //glLightfv(GL_LIGHT1,GL_DIFFUSE,light_specular);

 glEnable(GL_LIGHT0);
 glEnable(GL_DEPTH_TEST);
 glPolygonOffset(0.,-10.);
 //glEnable(GL_LIGHT1);

 glDisable(GL_LIGHTING);
 //glEnable(GL_LIGHTING);
 glClearColor(0.,0.,0.,1.);

 glMaterialfv(GL_FRONT_AND_BACK, GL_AMBIENT, mtl_amb);
 glMaterialfv(GL_FRONT_AND_BACK, GL_DIFFUSE, mtl_dif);
 glMaterialfv(GL_FRONT_AND_BACK, GL_SPECULAR, mtl_spec);
 glMaterialfv(GL_FRONT_AND_BACK, GL_SHININESS, mtl_shine);
 glMaterialfv(GL_FRONT_AND_BACK, GL_EMISSION, mtl_emission);


 glEnable(GL_NORMALIZE);
 glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT );
 glXSwapBuffers(dpy, window);

 // download any textures that may have been read in 

 textures.downloadTextures();

 if(envmap_detected)
  {
    glTexGenf(GL_S,GL_TEXTURE_GEN_MODE,GL_SPHERE_MAP);
    glTexGenf(GL_T,GL_TEXTURE_GEN_MODE,GL_SPHERE_MAP);
  }

}

void
Lpanel::draw_stats(void)
{ 
  glMatrixMode(GL_PROJECTION);
  glPushMatrix();
  glLoadIdentity();
  glOrtho(0.,window_xsize, 0., window_ysize, .1, 1000.);

  glMatrixMode(GL_MODELVIEW);
  glPushMatrix();
  glTranslatef(0.,0.,-10.);
  glDisable(GL_DEPTH_TEST);

  glColor3f(1.,1.,0.);
  sprintf(perf_txt,"fps:%d sps:%d",frames_per_second, samples_per_second);
  printStringAt(perf_txt, bbox.xyz_min[0] + .2, bbox.xyz_min[1] + .2);

  glMatrixMode(GL_PROJECTION);
  glPopMatrix();
  glMatrixMode(GL_MODELVIEW);
  glPopMatrix();
  glEnable(GL_DEPTH_TEST);
}

void
Lpanel::draw_cursor(void)
{ float size = 0.1;
  glColor3f(1.,1.,0.);
  glDisable(GL_DEPTH_TEST);
  glDisable(GL_LIGHTING);
  glBegin(GL_LINES);
  glVertex3f( cursor[0] - size , cursor[1] - size, cursor[2]);
  glVertex3f( cursor[0] + size , cursor[1] + size, cursor[2]);

  glVertex3f( cursor[0] - size , cursor[1] + size, cursor[2]);
  glVertex3f( cursor[0] + size , cursor[1] - size, cursor[2]);

  glEnd();
  
  glMatrixMode(GL_PROJECTION);
  glPushMatrix();
  glLoadIdentity();
  glOrtho(0.,window_xsize, 0., window_ysize, .1, 1000.);
  glMatrixMode(GL_MODELVIEW);
  glPushMatrix();
  glLoadIdentity();
  glTranslatef(0.,0.,-10.);

  printStringAt(cursor_txt, cursor_textpos[0], cursor_textpos[1]);

  glMatrixMode(GL_PROJECTION);
  glPopMatrix();
  glMatrixMode(GL_MODELVIEW);
  glPopMatrix();

  glEnable(GL_DEPTH_TEST);
}


void
Lpanel::inc_cursor(float x, float y)
{
  if(shift_key_pressed)
   { x *= 10.;
     y *= 10.;
   }
  cursor[0] += x;
  cursor[1] += y;
  make_cursor_text();
}

void
Lpanel::make_cursor_text(void)
{
 cursor_textpos[0] = (bbox.xyz_max[0] + bbox.xyz_min[0]) * .5;
 cursor_textpos[1] = bbox.xyz_min[1] + .1;
 sprintf(cursor_txt,"cursor position=%7.3f,%7.3f", cursor[0], cursor[1]);
}

