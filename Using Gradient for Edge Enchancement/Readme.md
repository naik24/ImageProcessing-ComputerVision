# Using Gradient for Edge Enhancement [![access-code-here](https://img.shields.io/badge/Access%20Code-Here-1f425f.svg)](https://github.com/naik24/ImageProcessing/blob/master/Using%20Gradient%20for%20Edge%20Enchancement/Using_Gradient_for_Edge_Enhancement.ipynb)

First derivatives in image processing are implemented using the magnitude of the gradient. The gradient of an image *f* at coordinates *(x, y)* is defined as the two dimensional column vector

<p align = "center"><img width="192" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/dad7eb4d-d6b9-433d-99c8-1dbf6610e134">
</p>

This vector has important geometrical property that it points in the direction of the greatest rate of change of *f* at location *(x, y)*. The magnitude of vector *f*, denoted as *M(x, y)* is defined as
<p align = "center"><img width="244" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/98e98d7a-e575-4bb0-b250-cc90998b7909">
</p>

where *M(x, y)* is the value at *(x, y)* of the rate of change in the direction of the gradient vector. Note that *M(x, y)* is an image of the same size as the original, created when *x* and *y* are allowed to vary over all pixel locations in *f*. It is common practice to refer to this image as the gradient image.

The gradient is used frequently in industrial inspection, either to aid humans in the detection of defects or as a preprocessing step in automated inspection. The following is an optical image of a contact lens, illuminated by a lightning arrangement designed to highlight imperfections, such as the two edge defects in the lens boundary seen at 4 and 5 o'clock.

<p align = "center"><img width="225" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/9bbda527-285a-4ec8-8c69-5aa877610c74">
</p>

On using the following Sobel kernels,

<p align="center"><img width="228" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/ca9a720d-d5f5-400d-8688-a98fc0f42a0c"></p>

we get the following gradient of the original image

<p align = "center"><img width="227" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/9060f2d8-657d-4c50-a15d-667638263679">
</p>

The edge defects are also quiet visible in this image, but with the added advantage that constant or slowly varying shades of gray have been eliminated, thus simplifying considerably the computational task required for automated inspection. The gradient can be used also to highlight small specs that may not be readily visible in a gray-scale image. The ability to enhance small discontinuities in an otherwise flat gray field is another important feature of the gradient.

<hr>
References:

[1] Rafael C. Gonzalez, Richard E. Woods, *Digital Image Processing*, 4th Edition.

[2] Image Database, https://www.imageprocessingplace.com/root_files_V3/image_databases.htm
