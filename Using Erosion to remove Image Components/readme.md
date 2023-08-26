# Using Erosion to Remove Image Components [![access-code-here](https://img.shields.io/badge/Access%20Code-Here-1f425f.svg)](https://github.com/naik24/ImageProcessing/blob/master/Using%20Erosion%20to%20remove%20Image%20Components/Using_Erosion_to_Remove_Image_Components.ipynb)

Morphological expressions are written in terms of structuring elements and a set A, of foreground pixels, or in terms of structuring elements and an image I, that contains A. With A and B as sets, the erosion of A by B, is defined as:

<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/8d003b77-487b-49a0-8bd0-2f7c33d67049"></p>

where A is a set of foreground pixels, B is a structuring element, and z's are foreground values (1's). In words, this equation indicates that the erosion of A by B is the set of all points z such that B, translated by z, is contained in A.

The following is a binary image depicting a simple wire-bond mask. 

<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/ae81a8e5-c96b-489c-820a-cca253cee606"></p>

Suppose we want to remove the lines connecting the center region to the border pads. Eroding the image with a square structuring element of size 11 x 11 whose components are all 1's removed most of the lines:

<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/1e618cf4-70f2-474d-bc93-16b40e8b4d82"></p>

Change the SE (structuring element) size to 15 x 15 elements and eroding the original image again did remove all the connecting lines, as shown below

<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/ac451c9c-e680-4b66-9348-440f0c71583c"></p>

Increasing the size of the structuring element even more would eliminate larger components. For example, the connecting lines and the border pads can be removed with a structuring element of size 45 x 45 elements applied to the original image.

<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/d3d5c15b-3f01-4859-a84f-8b098a13e08c"></p>

We see from this example that erosion shrinks or thins object in a binary image. In fact, we can view erosion as a morphological filtering operation in which image details smaller than the structuring element are filtered from the image.

<hr>

References:

[1] Rafael C. Gonzalez, Richard E. Woods, *Digital Image Processing*, 4th Edition.

[2] Image Database, https://www.imageprocessingplace.com/root_files_V3/image_databases.htm
