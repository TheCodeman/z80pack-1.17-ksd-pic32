// lp_main.cpp   light panel main interface

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


#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include <pthread.h>
#include <sys/types.h>
#include <sys/signal.h>
#include <sys/prctl.h>
#include <sys/stat.h>

#include "lpanel.h"
#include "lp_main.h"
#include "lp_utils.h"


static pthread_mutex_t data_lock;
static thread_info_t thread_info;
static Lpanel *panel = new Lpanel;
static int samplecount = 0;

void *
lp_mainloop_thread(void *n)
{
  int quit = 0;
  double t1, t2;
  int framecount = 0;

 //printf("mainloop thread starting\n");
 thread_info.running = 1;
 panel->openWindow("FrontPanel");

 t1 = frate_gettime();
 framerate_start_frame();

 while(!quit)
 {
  // lock
  pthread_mutex_lock(&data_lock);

  //  proc events

//  panel->sampleData();
  panel->procEvents();

  // draw

  panel->draw();

  // unlock
  pthread_mutex_unlock(&data_lock);

  // sleep remainder of fps time
  glFinish();
  framerate_wait();
  t2 = frate_gettime();
  framecount++;
  framerate_start_frame();

  if(t2 - t1 > 1.0)
   {
     panel->frames_per_second = framecount;
     panel->samples_per_second = samplecount;
     t1 = frate_gettime();
     framecount = 0;
     samplecount = 0;
   }

  if( !thread_info.run ) quit = 1;

 } // end while(!quit)
  pthread_mutex_lock(&data_lock);
  panel->Quit();
  panel->destroyWindow();
  pthread_mutex_unlock(&data_lock);
  thread_info.running = 0;
  return NULL;
}

int start_threads(void)
{
  static pthread_attr_t attr;
  int n;

  pthread_mutex_init(&data_lock,NULL);
  thread_info.run = 1;
  n = pthread_create(&thread_info.thread_id, &attr, lp_mainloop_thread, &thread_info.thread_no);
  if(n)
   { fprintf(stderr,"error %d starting mainloop thread\n",n);
     return 0;
   }

  return 1;
}

// bind functions

int fp_bindLight32(char *name, uint32 *bits, int bitnum)
{
 panel->bindLight32(name,bits,bitnum);
 return 1;
}

int fp_bindLight16(char *name, uint16 *bits, int bitnum)
{
 panel->bindLight16(name,bits,bitnum);
 return 1;
}

int fp_bindLight8(char *name, uint8 *bits, int bitnum)
{
 panel->bindLight8(name,bits,bitnum);
 return 1;
}

int fp_bindLight8invert(char *name, uint8 *bits, int bitnum, uint8 mask)
{
 panel->bindLight8invert(name,bits,bitnum, mask);
 return 1;
}

int fp_bindLight16invert(char *name, uint16 *bits, int bitnum, uint16 mask)
{
 panel->bindLight16invert(name,bits,bitnum, mask);
 return 1;
}

int fp_bindLight32invert(char *name, uint32 *bits, int bitnum, uint32 mask)
{
 panel->bindLight32invert(name,bits,bitnum, mask);
 return 1;
}

void fp_bindRunFlag(uint8 *addr)
{
 panel->bindRunFlag(addr);
}

void fp_bindSimclock( uint64 *addr)
{
 panel->bindSimclock(addr);
}

int fp_bindSwitch8(char *name, uint8 *loc_down, uint8 *loc_up, int bitnum)
{
 panel->bindSwitch8(name, loc_down, loc_up, bitnum);
 return 1;
}

int fp_bindSwitch16(char *name, uint16 *loc_down, uint16 *loc_up, int bitnum)
{
 panel->bindSwitch16(name, loc_down, loc_up, bitnum);
 return 1;
}

int fp_bindSwitch32(char *name, uint32 *loc_down, uint32 *loc_up, int bitnum)
{
 panel->bindSwitch32(name, loc_down, loc_up, bitnum);
 return 1;
}

void fp_ignoreBindErrors(int n)
{ panel->ignoreBindErrors(n);
}

void fp_framerate(float v)
{
 framerate_set(v);
}

int fp_init(char *cfg_fname)
{
 printf("\nFrontPanel Simulator v2.0 Copyright (C) 2007-2008 by John Kichury\n");

 if(panel == NULL) panel = new Lpanel;

  if(!panel->readConfig(cfg_fname))
   { fprintf(stderr, "fp_init: error initializing the panel\n");
     return 0;
   }

  start_threads();
  return 1;
}

int  fp_openWindow(char *title)
{
   start_threads();
   return 1;
}

void fp_procEvents(void)
{
 panel->procEvents();
}
void fp_draw(void)
{
 panel->draw();
}

void fp_sampleData(void)
{ panel->sampleData();
  samplecount++;
}

void fp_sampleLightGroup(int groupnum, int clockwarp)
{ panel->sampleLightGroup(groupnum, clockwarp);
  samplecount++;
}

void fp_sampleSwitches(void)
{ panel->sampleSwitches();
}

// callback functions

int fp_addSwitchCallback(char *name, void (*cbfunc)(int state, int val), int userval)
{
 panel->addSwitchCallback(name, cbfunc, userval);
 return 1;
}

void fp_addQuitCallback(void (*cbfunc)(void))
{
 panel->addQuitCallback(cbfunc);
}

void fp_quit(void)
{
 int i, okay=0;

  pthread_mutex_lock(&data_lock);
 thread_info.run = 0;
  pthread_mutex_unlock(&data_lock);

 for(i=0;i<10;i++)
  {
  pthread_mutex_lock(&data_lock);
    if(thread_info.running == 0) 
     {  okay = 1;
	break;
     }
  pthread_mutex_unlock(&data_lock);
    sleep(1);
  }

 if(!okay) fprintf(stderr, "Error. lightpanel draw thread did not terminate\n");

}


int 
fp_test(int n)
{
 return(panel->test(n));
}

