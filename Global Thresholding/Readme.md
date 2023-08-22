# Global Thresholding [![access-code-here](https://img.shields.io/badge/Access%20Code-Here-1f425f.svg)](https://github.com/naik24/ImageProcessing/blob/master/Global%20Thresholding/Global_Thresholding.ipynb)


Because  of its intuitive properties, simplicity of implementation, and computational speed, image thresholding enjoys a central position in applications of image segmentation. Suppose the following histogram corresponds to an image composed of of light objects on a dark background, in such a way that object and background pixels have intensity values grouped into two domains:

<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/26323c4d-fc35-4970-bcc3-ed31b1a1a9af"</p>

One obvious way to extract the objects from the background is to select a threshold T, that separates these modes. Then, any point (x, y) in the image at which f(x, y) > T, is called an *object point*. Otherwise, the point is called a *background point*.

When T is a constant applicable over an entire image, the process is called global thresholding. When value of T changes over an image, we use the term variable thresholding.

## Basic Global Thresholding

When the intensity distributions of objects and background pixels are sufficiently distinct, it is possible tot use a single (global) threshold applicable over the entire image. In most applications, there is usually enough variablility between images that, even if global thresholding is a suitable approach, an algorithm capable of estimating the threshold value for each image is required. The following iterative algorithm can be used for this purpose:

(1) Select an initial estimate for the global threshold T
(2) Segment the image using T. This will produce two groups of pixels: G1, consisting of of pixels with intensity values > T; and G2, consisting of pixels with values <= T. 
(3) Computer the average intensity values m1 and m2 for the pixels in G1 and G2, respectively
(4) Compute a new threshold value midway between m1 and m2
(5) Repeat Steps 2 through 4 until the difference between the values of T in successive iterations is smaller than a predefined value, $\Delta$ T

The follwing images show the result of basic global thresholding:

<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/8ce2e56c-f5a4-42b6-b727-037e211a7831"></p>

Basic global thresholding works well in situations where there is a reasonably clear valley between the modes of the histogram related to objects and background. Parameter $\Delta$ T is used to stop iterating when the changes in threshold values is small. The initial threshold must be chosen greater than the miniumum and less than the maximum intensity level in the image. If this condition is met, the algorithm converges in a finite number of steps, whether or not the modes are separable.

## Optimum GLobal Thresholding Using Otsu's Method

Thresholding may be viewed as a statistical-decision theory problem whose objective is to minimize the average error incurred in assigning pixels to two or more groups. This problem is known to have an elegant closed-from solution known as the Bayes decision function. The solution is based on only two parameters: the probability density function of the intensity levels of each class, and the probability that each class occurs in a given application. Unfortunately, estimating PDFs is not a trivial matter, so the problem usually is simplified by making workable assumptions about the form of the PDFs, such as assuming that they are Gaussian functions. Even with simplifications, the process of implementing solutions using these assumptions can be complex and not always well suited for real-time applications.

The approach, called Otsu's method is an attractive alternative. The basic idea is that properly thresholded classes should be distinct with respect to the intensity values of their pixels and, conversely, that a threshold giving the best separation between classes in their terms of intensity would be the best threshold

The following images show the result of applying Otsu's method:

<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/300d16ed-fa22-40fb-a436-c43c51b6451f"</p>

<hr>

References:

[1] Rafael C. Gonzalez, Richard E. Woods, *Digital Image Processing*, 4th Edition.

[2] Image Database, https://www.imageprocessingplace.com/root_files_V3/image_databases.htm
