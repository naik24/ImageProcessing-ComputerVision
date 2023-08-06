# Gaussian Frequency Domain Filtering [![access-code-here](https://img.shields.io/badge/Access%20Code-Here-1f425f.svg)](https://github.com/naik24/ImageProcessing/blob/master/Gaussian%20Frequency%20Domain%20Filtering/Gaussian_Frequency_Domain_Filtering.ipynb)

## Gaussian Lowpass Filter

Gaussian Lowpass Filter (GLPF) transfer functions have the form:
<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/9ee43112-f67f-4ca8-b801-206b7b394c25"</p>

where D(u, v) is given by:
<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/8f201dbc-84be-4fde-93f8-a10245b43696"</p>

In the GLPF formula, sigma is a measure of spread about the center. By letting sigma = D0, we can express Gaussian transfer function in the same notation as other functions:

<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/422e53ef-0f03-46b3-9542-9886b0b05e87"></p>
where D0 is the cutoff frequency.

We know that the inverse Fourier transform of a frequency domain Gaussian function is Gaussian also. This means that a spatial Gaussian filter kernel, obtained by computing the IDFT of the above equation will have no ringing. 

Narrow Gaussian transfer functions in the frequency domain imply broader kernel function in the spatial domain, and vice versa. 

The following figure shows the effect of multiplying Gaussian lowpass filter transfer functions and an image in the frequency domain:
<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/d6ea5641-4bb1-45d2-83c9-cbded621ffff"></p>

## Gaussian Highpass Filter

As is the case with kernels in the spatial domain, subtracting a lowpass filter transfer function from 1 yields the corresponding highpass filter transfer function in the frequency domain

The transfer function of a Gaussian highpass filter (GHPF) transfer function is given by:
<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/994a5337-db4c-41a1-bb92-74890b8dccac"></p>

The following figure shows the effect of multiplying a GHPF with an image in the frequency domain:
<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/172051f5-d66c-4a33-977a-1665915e701a"></p>

<hr>

References:

[1] Rafael C. Gonzalez, Richard E. Woods, *Digital Image Processing*, 4th Edition.

[2] Image Database, https://www.imageprocessingplace.com/root_files_V3/image_databases.htm
