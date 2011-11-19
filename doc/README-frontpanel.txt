The frontpanel library is available at:

	http://sourceforge.net/projects/frontpanel/

z80pack is integrated with a released version of the frontpanel library,
sources are unmodified but the makefile is different for the integration.
It should be possible to integrate later releases of the library without
problems, as long as the z80pack makefile is used and updated appropriate.

Also the frontpanel configuration files have small modifications from
the released version at sourceforge, due to somewhat different directory
structure of the packages.

To build the Altair 8800 and IMSAI 8080 emulations including the frontpanel
first change to directory ~/z80pack-x.y/frontpanel and execute make in
this directory. This will build the shared library libfrontpanel.so.
This library needs to be in the LD_LIBRARY_PATH for the runtime linker,
so that the emulation programs can find this library. On my systems I
copy the library to /usr/local/lib and my ~/.profile includes:

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/bin

I have seen systems where this won't work, on such systems I copied the
library to /usr/lib, so that it was found by the programs.

After you upgraded the library or the z80pack distribution this step
needs to be repeated, so that the latest version of the library is used.

After the library is in place build the simulated machines as follows:

cd ~/z80pack/altairsim/srcsim
make
make clean

cd ~/z80pack/imsaisim/srcsim
make
make clean

To run the systems change into directory ~/z80pack-x.y/imsaisim
and run the program imsasim. To load memory with the included
programs use imsaisim -xbasic8k.hex. The IMSAI emulation by default
is the 3D model, if you want the 2D model change the symbolic link
to the 2D configuration as follows:

cd ~/z80pack-x.y/imsaisim
rm conf
ln -s conf_2d conf

Ruuning the Altair emulation is the same, just change to directory
~/z80pack-x.y and run program altairsim. The Altair emulation comes
with 2D model only.

The default CPU speed for the Altair and IMSAI emulations is 2 MHz as
with the original machines. This can be changed with the commandline
option -fx, where x is the desired CPU speed in MHz. With a value of 0
the CPU speed is unlimited and the emulation runs as fast as possible.

Some behavior of I/O devices such as the emulated SIO boards can be
configured in the configuration file:

~/z80pack-x.y/imsaisim/conf/iodev.conf

This configuration files include comments, usage of the options should
be obvious.
