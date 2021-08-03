#!/bin/bash


###Comment in/out the three lines (to set the dynamic library path, XAPPLRESDIR and execute python/mwpython on start.py) with a single leading #, as appropriate for your OS.


#***Mac OS X***#
###export DYLD_LIBRARY_PATH=/Path-to-Matlab-Runtime/v95/runtime/maci64:/Path-to-Matlab-Runtime/v95/sys/os/maci64:/Path-to-Matlab-Runtime/v95/bin/maci64
###Replace Path-to-Matlab-Runtime with the full path to the installed location. For example, on my Macbook:
#export DYLD_LIBRARY_PATH=/Applications/MATLAB/MATLAB_Runtime/v95/runtime/maci64:/Applications/MATLAB/MATLAB_Runtime/v95/sys/os/maci64:/Applications/MATLAB/MATLAB_Runtime/v95/bin/maci64

###export XAPPLRESDIR="/Path-to-Matlab-Runtime/v95/X11/app-defaults"
#export XAPPLRESDIR="/Applications/MATLAB/MATLAB_Runtime/v95/X11/app-defaults"

###/Path-to-Matlab-Runtime/v95/bin/mwpython start.py
#/Applications/MATLAB/MATLAB_Runtime/v95/bin/mwpython start.py



#***Linux***#
###export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/Path-to-Matlab-Runtime/v95/runtime/glnxa64:/Path-to-Matlab-Runtime/v95/bin/glnxa64:/Path-to-Matlab-Runtime/v95/sys/os/glnxa64:/Path-to-Matlab-Runtime/v95/sys/opengl/lib/glnxa64
###Replace Path-to-Matlab-Runtime with the full path to the installed location. For example, on my linux box:
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/DATA/Programs/MATLAB/MATLAB_Runtime/v95/runtime/glnxa64:/DATA/Programs/MATLAB/MATLAB_Runtime/v95/bin/glnxa64:/DATA/Programs/MATLAB/MATLAB_Runtime/v95/sys/os/glnxa64:/DATA/Programs/MATLAB/MATLAB_Runtime/v95/sys/opengl/lib/glnxa64

###export XAPPLRESDIR="/Path-to-Matlab-Runtime/v95/X11/app-defaults"
export XAPPLRESDIR="/DATA/Programs/MATLAB/MATLAB_Runtime/v95/X11/app-defaults"

python start.py
