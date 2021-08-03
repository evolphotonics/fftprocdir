#!/bin/bash

# export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/Path-to-Matlab-Runtime/v95/runtime/glnxa64:/Path-to-Matlab-Runtime/v95/bin/glnxa64:/Path-to-Matlab-Runtime/v95/sys/os/glnxa64:/Path-to-Matlab-Runtime/v95/sys/opengl/lib/glnxa64
## replace Path-to-Matlab-Runtime with appropriate installed location. For example:

export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/DATA/Programs/MATLAB/MATLAB_Runtime/v95/runtime/glnxa64:/DATA/Programs/MATLAB/MATLAB_Runtime/v95/bin/glnxa64:/DATA/Programs/MATLAB/MATLAB_Runtime/v95/sys/os/glnxa64:/DATA/Programs/MATLAB/MATLAB_Runtime/v95/sys/opengl/lib/glnxa64

export XAPPLRESDIR="/Path-to-Matlab-Runtime/v95/X11/app-defaults"

python start.py

