# Butterworth Frequency Domain Filtering [![access-code-here](https://img.shields.io/badge/Access%20Code-Here-1f425f.svg)](https://github.com/naik24/ImageProcessing/blob/master/Butterworth%20Frequency%20Domain%20Filtering/Butterworth_Frequency_Domain_Filtering.ipynb)

## Butterworth Lowpass Frequency Domain Filtering

The transfer function of a Butterworth lowpass filter (BLPF) of order ***n***, with cutoff frequency at a distance D0 from the center of the frequency rectangle, is defined as

<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/1c06a997-7b3f-4ef9-acd9-0bf778aff626"></p>

where D(u, v) is given by

<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/8f201dbc-84be-4fde-93f8-a10245b43696"</p>

The following image shows the frequency domain representation of the original image as well as the Butterworth lowpass filter and their product.

<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/ab0cc56d-b6e8-4837-af98-4f301d8b2c44"></p>

BLPF function can be controlled to approach the characteristics of the ILPF using higher values of n, and the GLPF for lower values of n, while providing smooth transition in from low to high frequencies. Thus, we can use a BLPF to approach the sharpness of an ILPF function with considerably less ringing. 

The spatial domain kernel obtainable from a BLPF of order 1 has no ringing. Generally, ringing is imperceptible in filters of order 2 or 3, but can become significant in filters of higher orders. 

## Butterworth Highpass Frequency Domain Filtering

As is the case with kernels in spatial domain, subtracting a lowpass filter transfer function from 1 yields the corresponding highpass transfer filter transfer function in the frequency domain.

The transfer function of a Butterworth highpass filter (BHPF) is
<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/9b0af567-419c-43ce-9e88-b2cf4badd120"</p>

with D(u, v) given by the same equation mentioned above. 

BHPF transfer function represents a transition between the sharpness of the Ideal Highpass Frequency filter (IHPF) and the broad smoothness of the Gaussian Highpass Filter transfer function.

The following image shows the effect of applying BHPF on an image

<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/f62b8538-6a26-44c7-aac4-d321850abca6"></p>
