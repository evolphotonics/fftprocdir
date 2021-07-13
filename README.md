# fftprocdir MATLAB Python Package


## Prerequisites

(1) To run the compiled python code, you will need a working installation of your platform-specific [MATLAB
runtime, version R2018b (9.5)](https://www.mathworks.com/products/compiler/matlab-runtime.html). 
For more info about how to install MCR, see [Install and Configure MATLAB Runtime](https://se.mathworks.com/help/compiler/install-the-matlab-runtime.html).

(2) Verify that a platform-specific Python 3.6 (or below) is installed. If not, install python from [python.org](https://www.python.org). 
This code was tested with [Python 2.7](https://www.python.org/downloads/release/python-2718/).

(3) N.B. (Mac users):
`python` installed using Anaconda will apparently not work. You can use `brew` or download directly from [python.org](https://www.python.org). 
Once you have installed a correct version of python, you need to use MATLAB's own interpreter `mwpython` to import compiled matlab code. 


## Installation

After installing the pre-requisites as detailed above, download the zipfile, and extract it. Copy/move the entire contents of the 
`fftprocdir.distrib` folder, including the subdirectory `fftprocdirpy` into the folder containing any EM images you wish to analyse. 
These images are preferably organized by taxa or some other criterion of interest (color, tissue type, etc.), for best results. 


### For Linux/Mac OS X:

(1) Open `runfftprocdir.sh` using a text editor and replace 'Path-to-Matlab-Runtime' with the full path to the directory where the 
MATLAB Runtime (v95) is installed. For instance, on my machine, this is `/DATA/Programs/MATLAB/MATLAB_Runtime/`. 
This is to set the environment variables so that our python wrapper can call the MATLAB Runtime. Be sure to save and close this file.

(2) Open a console or a terminal window and run

```shell
sh runfftprocdir.sh
```


### For Windows:

(1) If you used the automated installer to set-up Python and Matlab Runtime, then you are all set. The paths should be already configured.
In Windows Explorer, navigate to the folder where you copied/moved the contents of `fftprocdir.distib` and double click `start.py`.

(2) Alternatively or in order to debug, open a Windows Command Prompt (press start/windows and type in `cmd` + enter). Navigate (change directory - `cd`) 
to the folder with `fftprocdirpy` subdirectory and run (type + enter) the following:
```shell
python start.py
```


### Run-time

The `fftprocdirpy` application will recursively check the current directory (`.`) where it is installed, the parent directory (`..`) 
as well as all folders within for any images ending in `.TIF` format. If any of these folders have no `.TIF` images, then the application
window will show an empty gallery of images to select (i.e. a blank window), just press `OK` and close the window to proceed to check the next folder. 
The code will automatically convert color images to 8-bit grayscale for processing.


### Bugs

Please report any bugs via e-mail by including the output on the command line output of the console or terminal window.
