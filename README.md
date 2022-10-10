# Facial Reconstruction using Marching Cubes
This is a Matlab implementation of the Marching Cubes Algorithm for constructing facial and skeletal surfaces from DICOM images.

The Marching Cubes algorithm is a computer graphics algorithm to extract a polygonal mesh (in this implementation, a triangular mesh) of an isosurface from a three-dimensional discrete scalar field.

A three-dimensional scalar field can be specified as a txt file or a DICOM file and the triangular mesh is obtained using MATLAB meshgrid() in this implementation.

### Usage
- This project contains only 2 files: ```main.m``` and ```MarchingCubes.m```
- For visualisation and image processing, install Image Processing Toolbox from MathWorks.
- Run the ```main.m``` in MATLAB.

### Demo
The following images are obtained by running this implementation obtained from the MRI scan of the human brain.

**1. Extraction of Tissue Surface at isovalue 255**
![Tissue Surface Constrcution](/results/Tissue Surface Construction)


**2. Extraction of Bone Surface at isovalue 1500**
![Bone Surface Constrcution](/results/Bone Surface Construction)


### References
[1] **Marching Cubes by Peter Hammer**: [Implementation of Marching Cubes in MATLAB](https://in.mathworks.com/matlabcentral/fileexchange/32506-marching-cubes)

[2] **A COMPUTER APPLICATION FOR 3D CRANIOFACIAL RECONSTRUCTION AND AUTOMATIC SKULL-PHOTO IDENTIFICATION**
International Journal of Computer Science and Applications Techno mathematics Research Foundation.

[3] **MARCHING CUBES: A HIGH RESOLUTION 3D SURFACE CONSTRUCTION ALGORITHM**
William E. Lorensen Harvey E. Cline, General Electric Company Corporate Research and Development, Schenectady, New York 12301 Date: Number 4, July 1987.


