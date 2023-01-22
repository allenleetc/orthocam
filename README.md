# Orthocam

#### Weak Perspective Camera Calibration

Orthocam provides camera calibration tools for cameras/rigs in the weak perspective regime. This regime occurs when Δz << z, usually occurring when the camera's angle of view is <10° (according to doi:10.1088/0957-0233/26/9/095203). In this regime, the standard camera model has one too many degrees of freedom relative to the perspective information available, and calibrations optimizations can fail to converge. 

This software is integrated with (and requires) the Stereo Camera Calibration App in **MATLAB R2016b specifically**. Orthocam is working software and has not been polished for ease of use.

Orthocam was developed by Allen Lee, Stephen Huston, and Kristin Branson in the Branson Lab at HHMI/Janelia Research Campus.


#### Requirements and Setup

1. Orthocam calibration requires **MATLAB R2016b specifically**, as well as the MATLAB **Computer Vision Toolbox**.
2. Clone the repo or download the code.
3. Start MATLAB and navigate to the repo directory.
4. Run `getVisionFiles` in MATLAB. This will copy a few MATLAB toolbox files into a `vision` directory underneat the repo.
5. A patchfile `diffs.patch` has been supplied in this repo that specifies updates to these toolbox files. Run the command in `patch.cmd` **in a unix shell** (eg on Windows, use WSL2).
6. Run `setupPaths` in MATLAB. This will add the modified toolbox files to your MATLAB path. These modified toolbox files will shadow their built-in counterparts. **Don't save your MATLAB path if you need to use the standard Stereo Calibration App.** Note that the original toolbox code is untouched under `matlabroot`.
7. Follow the recipe in README_Calibration_Recipe.md to perform your calibrations!


