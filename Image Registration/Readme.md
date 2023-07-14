# Image Registration [![access-code-here](https://img.shields.io/badge/Access%20Code-Here-1f425f.svg)](https://github.com/naik24/ImageProcessing/blob/master/Image%20Registration/ImageRegistration.ipynb)


Image registration is an important application of digital image processing used to align two or more images of the same scene. In image registration, we have available an input image and a reference image. The objective is to transform the input image geometrically to produce an output image that is aligned(registered) with the reference image. 

Examples of image registration include aligning two or more images taken at approximately the same time, but using different imaging systems, such as an MRI scanner and a PET scanner. Combining the images or performing quantitative analysis and comparisons between them requires compensating for geometric distortions caused by differences in viewing angle, distance, orientation, sensor resolution, shifts in object location, and other factors.

One of the principal approaches for solving the prolem just discussed is to use tie points. These are corresponding points whose locations are known precisely in the input and reference images. Approaches for selecting tie points range from selecting them interactively to using algorithms that detect these points automatically. 

The problem of estimating the transformation function is one of modelling. For example, suppose that we have a set of four tie points each in an input and a reference image. A simple model based on a bilinear approximation is given by
<p align = "center"><img width="206" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/9c6f7743-a86f-401b-ac04-deeb9243fa5c">
</p>
<p align = "center"><img width="206" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/0f641c9d-6f64-4a4a-ae4a-1497ca220ac5">
</p>
During the estimation phase, (v, w) and (x, y) are the coordinates of tie points in the input and reference images, respectively. If we have four pairs of corresponding tie points in both images, we can write eight equations using the above equations and use them to solve for the eight coefficients. Once we have the coefficients, the above equations become our vehicle for transforming all the pixels in the input image. The result is the desired registered image. 

After the coefficients have been computed, we let (v, w) denote the coordinate of each pixel in the input image, and (x, y) become the corresponding coordinates of the output image. The same set of coefficients are used to computer all coordinates (x, y) in the output, registered image.

The following figure shows a reference image and the input image (image to be registered)
<p align = "center"><img width="514" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/96442770-00c0-4ba6-a968-ee3be2ead25f">
</p>

To align the input image, we first have to detect features in both, the input as well as the reference image.For this purpose, we can use a brute force matcher like OpenCV's NORM_HAMMING. On detecting the key features and matching them, we get the following result:
<p align = "center"><img width="709" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/8723b180-0517-4fb7-a09a-076a71a7ad35">
</p>
The lines that you see are basically the matching points in the input and the reference image.

Once we get these points, the next step is to map the coordinates from the input image to the reference image to get the final registered image.
<p align = "center"><img width="709" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/400b9237-f057-4433-a6e3-bd8ac0b3c902">
</p>

Difference between the reference image and the registered image show us that the input image was not referenced perfectly. It is difficult to achieve perfect matches for tie points when distortion is so severe.
<p align = "center"><img width="709" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/bf3c0db3-d6bf-4302-a65d-c3f060382eb3">
</p>

<hr>

References:

[1] Rafael C. Gonzalez, Richard E. Woods, *Digital Image Processing*, 4th Edition.
