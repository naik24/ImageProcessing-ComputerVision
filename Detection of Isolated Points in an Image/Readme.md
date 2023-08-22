# Detection of Isolated Points in an Image [![access-code-here](https://img.shields.io/badge/Access%20Code-Here-1f425f.svg)](https://github.com/naik24/ImageProcessing/blob/master/Detection%20of%20Isolated%20Points%20in%20an%20Image/Detection_of_Isolated_Points_in_an_Image.ipynb)

Image Segmentation methods are based on detecting sharp, local changes in intensity. Edge pixels are pixels at which the intensity of an image changes abruptly, and edges are sets of connected edge pixels. Edge detectors are local image processing tools designed to detect edge pixels. An isolated point may be viewed as a foreground pixel surrounded by background pixels

## Background

Local averaging smoothes an image. Given that averaging is analogous to integration, it is intuitive that abrupt, local changes in intensity can be detected using derivatives. First and second-order derivatives are well suited for this purpose. Derivatives of a digital function are defined in terms of *finite differences*. There are various ways to compute these differences but we require that any approximation used for first derivatives (1) must be non zero in areas of constant intensity; (2) must be nonzero at the onset of an intensity step or ramp; and (3) must be nonzero at points along an intensity ramp. Similarly, we require that an approximation used for second derivatives (1) must be zero in areas of constant intensity; (2) must be nonzero at the onset and end of an intensity step or ramp; and (3) must be zero along intensity ramps. Because we are dealing with digital quantities whose values are finite, the maximum possible intensity change is also finite and the shortest distance over which a change can occur is between adjacent pixels.

Some important points to note about First and Second Order Derivatives:
(1) First-order derivatives generally produce thicker edges
(2) Second-order derivatives have a stronger response to fine detail, such as thin lines, isolated points, and noise
(3) Second-order derivatives produce a double-edge response at ramp and step transitions in intensity
(4) The sign of the second derivative can be used to determine whether a transition into an edge is form light to dark or dark to light

The approach of choice for computing first and second derivatives at every pixel location in an image is to use spatial convolution

## Detection of Isolated Points

The magnitude of response at isolated points is much stronger for second- than for first-order derivative. This is not unexpected, because a second-order derivative is much more aggressive than a first-order derivative in enhancing sharp changes. Using the second derivative means using the Laplacian:
<p align = "center"><img width="144" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/ad758333-b2de-4013-a468-848bc6ea02f5"></p>

where the partial derivatives are computed using the following second-order finite differences:

<p align = "center"><img width="275" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/efcf1f72-5aa3-40d5-ab8b-fe519fdd181a"></p>

The Laplacian is then:

<p align = "center"><img width="387" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/ee8269fb-4177-4a0d-8501-8dcff506f39a"></p>

This expression can be implemented using the following Laplacian kernel:

<p align = "center"><img width="133" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/254414d9-23cb-4cd2-ae8c-2c7ec681cdbb"></p>

We can then say that a point has been detected at location (x, y) on which the kernel is centered if the absolute value of the response of the filter at that point exceeds a specified threshold. Such points are labeled 1 and all others are labeled 0 in the output image, thus producing a binary image. In other words, we use the expression:

<p align = "center"><img width="171" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/3845ca54-44e1-4746-bd2d-3fa807ea3968"></p>

where g(x, y) is the output image, T is a nonnegative threshold, and Z is the result of convolving the kernel with the pixels covered by the kernel.

The following figure is an X-ray image of a turbine blade from a jet engine:

<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/a36d2cfe-cc50-42f6-ae75-010dba15b364"></p>

The blade has a porosity manifested by a single black pixel in the upper right quadrant of the image. The following figure is the result of filtering the image with the Laplacian kernel:

<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/4ce06c9d-843f-44c9-ad65-1548598c8c6f"></p>

Thresholding the above figure gives us the final result where we can see an isolated point on the right upper side of the image:

<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/5cc6c46b-d90b-4957-bd81-3fc7c0b787b1"></p>

<hr>

References:

[1] Rafael C. Gonzalez, Richard E. Woods, *Digital Image Processing*, 4th Edition.

[2] Image Database, https://www.imageprocessingplace.com/root_files_V3/image_databases.htm
