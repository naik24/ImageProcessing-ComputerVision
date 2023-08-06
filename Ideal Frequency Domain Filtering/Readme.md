# Ideal Frequency Domain Filtering [![access-code-here](https://img.shields.io/badge/Access%20Code-Here-1f425f.svg)](https://github.com/naik24/ImageProcessing/blob/master/Ideal%20Frequency%20Domain%20Filtering/Ideal_Frequency_Domain_Filtering.ipynb)


## Ideal Lowpass Filters

A 2D lowpass filter that passes without attenuation all frequencies within a circle of radius from the origin, and "cuts off" all frequencies outside this circle is called an ideal lowpass filter(ILPF) and is specified by the transfer function:

<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/dd5e5e4b-6e49-4faf-88ed-4da69d10eae8"></p>

where D(u, v) are given as 
<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/8f201dbc-84be-4fde-93f8-a10245b43696"</p>

The following image shows the result of multiplying the ideal lowpass filter transfer function with the fourier spectrum of an image
<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/dcc18742-fcdf-4b50-996a-4a8c250f42c5"></p>

The name ***ideal*** indicates that all frequencies on or inside a circle of radius D0 are passed without attenuation, whereas all frequencies outside the circle are completely attenuated. The ILPF is radially symmetric about the origin. For an ILPF cross section, the point of transition between the values H(u, v) = 1 and H(u, v) = 0 is called the ***cutoff frequency***.

## Ideal Highpass Filters

As is the case with kernels in spatial domain, subtracting a lowpass filter transfer function from 1 yields the corresponding highpass filter transfer function in the frequency domain:

Thus, it follows that an ideal highpass filter (IHPF) transfer function is given by

<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/3c429bf7-3c31-4b05-8583-87cb1c07d1b8"></p>

where D(u, v) remains the same as defined before.

The following figure shows the result after multiplying image with an IHPF in the frequency domain
<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/6a2fd8e4-b242-4636-bbc4-d0df0a414061"></p>

<hr>

References:

[1] Rafael C. Gonzalez, Richard E. Woods, *Digital Image Processing*, 4th Edition.

[2] Image Database, https://www.imageprocessingplace.com/root_files_V3/image_databases.htm
