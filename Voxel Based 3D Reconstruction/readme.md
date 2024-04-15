# Voxel-Based 3D Reconstruction

In recent years, the fusion of computer vision and 3D reconstruction has revolutionized various fields, from entertainment to healthcare and beyond. Among the myriad techniques, voxel-based modeling stands out for its ability to capture intricate spatial details and generate highly accurate 3D representations. In this project, I have built a Voxel-Based 3D Reconstruction System. The aim of this project is to build a 3D model of the dancer given her 2D images from different camera angles as shown below:

![image](https://github.com/naik24/ImageProcessing-ComputerVision/assets/69704762/730f0ca6-3c66-45ae-a0dd-e845a904c541)
![image](https://github.com/naik24/ImageProcessing-ComputerVision/assets/69704762/c908705a-155d-47ea-8159-fc0f2fe2a538)
![image](https://github.com/naik24/ImageProcessing-ComputerVision/assets/69704762/0deea8ed-8cc9-46dd-b8b5-dbfdbbf032c1)

We also have the silhouettes of the dancer in each camera angle. Some examples are shown below:
<p align = "center"><img src = "https://github.com/naik24/ImageProcessing-ComputerVision/assets/69704762/9c345164-4bd8-47af-8c07-e9c26187ccc1"></p>
<p align = "center"><img src = "https://github.com/naik24/ImageProcessing-ComputerVision/assets/69704762/ce6c2606-addc-444c-944a-47a0dd087253"></p>

## Voxel Grid Definition
We define a 3D voxel grid with a length of 5m in x direction, 6m in y direction and 2.5m in z direction. We set the size of each voxel to be 0.03m in each direction. More details about voxels can be found <a href = "https://en.wikipedia.org/wiki/Voxel">here</a>

## Constructing the Visual Hull
A visual hull is a geometric entity created by shape-from-silhouette 3D construction technique. This technique assumes the foreground object in an image can be separated from the background. Under this assumption, the original image can be thresholded into a foreground/background binary image, which we call a silhouette image. The foreground mask, known as a silhouette, is a 2D projection of the corresponding 3D foreground object.

All the voxels are labeled as empty at first. Then we project the center of each voxel to all the images (there are total 8 images) and label as occupied only those voxels whose projection resides insides all the silhouettes. By doing this, we ensure that the camera is indeed capturing the dancer.

Once we construct the visual hull, we give it a false color to ensure our visual hull is correct. 

https://github.com/naik24/ImageProcessing-ComputerVision/assets/69704762/2e12c317-517c-45b7-946f-a52933f80627

## True Coloring
We now color the model by assigning per-channel (Red, Green, Blue) median values of the pixels in our 2D images to which a surface voxel projects into. In other words, for every point in the above 3D reconstructed model, we check where that point projects into the 8 images. Next, we compute the median of the RGB values where that point is projected. After true coloring, we get our final 3D reconstructed model:

https://github.com/naik24/ImageProcessing-ComputerVision/assets/69704762/1eae6159-ab78-428f-ab86-2bee6e3bcd4e

