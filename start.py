#!/usr/bin/env python
import fftprocdirpy

def main():
    
    # Start a matlab engine
    eng = fftprocdirpy.initialize()
    # Start the fftproc routines
    eng.fftprocdir(nargout=0)
    # Shut down the matlab engine
    eng.terminate()

if __name__ == "__main__":
        main()
        
raw_input("Press Enter key to exit.")        
