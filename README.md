# fftprocdir MATLAB Python Package

`fftprocdir` is a package written in Matlab (version R2018b) that performs Fast Fourier Transform (FFT) and periodogram analyses on Electron Microscopy (EM) images in TIF (Tagged Image File) format. version 1.1 (Aug. 2021).

This package is based on code from the [Fourier Tool For Analysis of Coherent Scattering by Biological Nanostructures](https://prumlab.yale.edu/research/fourier-tool-analysis-coherent-scattering-biological-nanostructures) (Prum, R. O., and Torres, R. H. 2003. A Fourier tool for the analysis of coherent light scattering by bio-optical nanostructures. Integrative and Comparative Biology 43: 591-610) and includes image filtering code from [MATLAB and Octave Functions for Computer Vision and Image Processing](https://www.peterkovesi.com/matlabfns/) on an as-is basis (&copy; Peter Kovesi). The algorithm to select multiple ROIs for Fourier transform is based on [Image Analyst's MATLAB Answer](https://www.mathworks.com/matlabcentral/answers/345466-selecting-multiple-regions-of-interest-with-roipoly).


## Pre-requisites

(1) To run the Matlab-compiled python wrapper code, you will need a working installation of your platform-specific [MATLAB
runtime, version R2018b (9.5)](https://www.mathworks.com/products/compiler/matlab-runtime.html). 
For more info about how to install MCR, see [Install and Configure MATLAB Runtime](https://se.mathworks.com/help/compiler/install-the-matlab-runtime.html).

(2) Verify that a platform-specific Python 3.6 (or below) is installed. If not, install python from [python.org](https://www.python.org). 
This code was tested with [Python 2.7](https://www.python.org/downloads/release/python-2718/).

(3) N.B. (Mac users):
`python` installed using Anaconda will apparently NOT work. You can use `brew` or download directly from [python.org](https://www.python.org). 
Once you have installed a correct version of python (<3.6), however, you need to use MATLAB's own interpreter `mwpython` to import and run compiled matlab code. 



## Installation

After installing the pre-requisites as detailed above, download the zipfile, and extract it. 

You can, if you wish, copy/move the entire contents of the `fftprocdir.distrib` folder, including the subdirectory `fftprocdirpy` into the folder containing any EM images you wish to analyse. Or you can simply run the package and navigate to the folder containing `TIF` format images, when asked to. These images are preferably organized by taxa or some other criterion of interest (color, tissue type, etc.), as the results will be stored in the working directory you first set. 



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

The `fftprocdirpy` application will recursively check the working directory that is set at runtime (`.`) as well as all folders within for any `.TIF` images. 
If any of these folders do not have `.TIF` images, then the application window will show an empty gallery (i.e., a blank window), just press `OK` and close the window to proceed to check the next folder. The code will automatically convert color images to 8-bit grayscale for processing.



### Bugs

(1) Known issue with Mac OS X (Catalina)
when run using `mwpython`, this throws a `dyld: Symbol not found: "mecab_get_feature"` error. `csrutil disable` does not seem to fix this.
For more info, see [here](https://www.mathworks.com/matlabcentral/answers/492796-can-t-call-matlab-from-java-code-with-macos-catalina)

Please report any bugs by including your python and OS versions as well as a verbose command line output of the console or terminal window.
