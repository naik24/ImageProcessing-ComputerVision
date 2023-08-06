# Image Noise Models

The principal sources of noise in digital images arise during image acquisition and/or transmission. The performance of imaging sensors is affected by a variety of environmental factors during image acquisition, and by the quality of the sensing elements themselves. Images are corrupted during transmission principally by interference in the transmission channel. For example, an image transmitted using a wireless network might be corrupted by lightning or other atmospheric disturbance.

## Spatial and Frequency Properties of Noise

Relevant to our discussion are parameters that define the spatial characteristics of noise, and whether the noise is correlated with the image. Frequency properties refer to the frequency content of noise in the Fourier (frequency) domain. For example, when the Fourier spectrum of noise is constant, the noise is called *white noise* This terminology is a carryover from the physical properties of white light, which contains all frequencies in the visible spectrum in equal proportions.

With the exception of spatially periodic noise, we assume that noise is independent of spatial coordinates, and that it is uncorrelated with respect to the image itself (that is, there is no correlation between pixel values and the values of noise components). Although these assumptions are at least partially invalid in some applications, the complexities of dealing with spatially dependent and correlated noise are beyong the scope of our discussion.

We shall be concerned with the statistical behavior of the intensity values in the noise component. These may be considered random variables, characterized by a probability density function (PDF). The noise component is an image of the same size as the input image. We create a noise image for simulation purposes by generating an array whose intensity values are random numbers with a specified probability density function.

We will consider the following pattern when applying different noise models:
<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/e0d553b0-22d1-4624-8363-e0296d89d6cf"></p>

## Gaussian Noise
Because of its mathematical tractability in both the spatial and frequency domains, Gaussian noise models are used frequently in practice. In fact, this tractability is so convenient that it often results in Gaussian models being used in situations in which they are marginally applicable at best.

The PDF of a Gaussian random variable, *z*, is defined by the following expression:
<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/5c03e576-7e80-41dd-ab10-16a7e1b5ed73"></p>

Applying Gaussian Noise to the original image gives us the following result:
<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/eaec4168-d738-4c30-a584-60a7b98e4f9a"></p>

## Rayleigh Noise
The PDF of Rayleigh noise is given by
<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/4e1de102-b87a-4714-afd0-79b8ea9bfc80"></p>

The mean and variance of *z* when this random variable is characterized by a Rayleigh PDF are:
<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/558f8edb-be4f-4ae5-bbb4-d251248deffb"></p>

Applying Rayleigh Noise to the original image gives us thw following result:
<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/f6b26490-3d02-4393-b4eb-b9eb04fb84e3"></p>

## Erlang (Gamma) Noise
The PDF of Erlan Noise is:
<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/948d9e6e-1192-4181-9eb3-d69be4843827"></p>

where the parameters are such that a > b, b is a positive integer. The mean and variance of z are:
<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/bb5f859c-b0ef-4da6-9d8d-f60626393fa8"></p>

Applying Erlang noise to the original image gives us the following result:

<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/1036de72-85e2-4392-90a6-f6ac93d5b49f"></p>

## Exponential Noise
The PDF of exponential noise is given by:
<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/ea3b6a21-79e3-4e19-8f24-ae9f7fc7e6cd"></p>

where a > 0. The mean and variance of z are:
<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/a1e69001-631f-44e7-9368-4c547c8a9757"></p>

Note that this PDF is a special case of the Erlang PDF with b = 1.

Applying Exponential noise to the original image gives us the following result:
<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/ea3001a7-8921-4e6a-bca6-c3bc32451ca0"></p>

## Uniform Noise
The PDF of uniform noise is:
<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/f5e5bc43-a6cf-4a3d-b2f6-95a3f85f7278"></p>

The mean and variance of z are:
<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/a4e2317b-23c9-4777-9099-9f79b73ced05"></p>

Applying uniform noise to the original image gives us the following result:
<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/1bc61fe1-d8df-48a0-bf19-2f71eca3f90e"></p>

## Salt and Pepper Noise
If *k* represents the number of bits used to represent the intensity values in a digital image, then the range of possible intensity values for that image is [0, 2<sup>k</sup> - 1]. The PDF of salt and pepper noise is given by:
<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/0863869c-3a45-469c-8ddb-13f4a9b9808b"></p>

where V is any integer value in the range 0 < V < 2<sup>k</sup> - 1. Let $\eta$(x, y) denote a salt and pepper noise image, whose intensity values satisfy the above equation. Given an image f(x, y), of the same size as $\eta$(x, y), we corrupt it with salt-and-pepper noise by assigning a 0 to all locations in f where a 0 occurs in $\eta$. Similarly, we assign a value of 2<sup>k</sup> -1 to all locations in f where that value appears in $\eta$. Finally, we leave unchanged all location in f where V occurs in $\eta$

Applying Salt and Pepper noise to the original image gives use the following result:
<p align ="center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/a531fc35-dd4d-45d0-a633-1039e3da531a"></p>

<hr>

References:

[1] Rafael C. Gonzalez, Richard E. Woods, *Digital Image Processing*, 4th Edition.

[2] Image Database, https://www.imageprocessingplace.com/root_files_V3/image_databases.htm
