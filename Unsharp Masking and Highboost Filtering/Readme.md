# Unsharp Masking and HighBoost Filtering [![access-code-here](https://img.shields.io/badge/Access%20Code-Here-1f425f.svg)](https://github.com/naik24/ImageProcessing/blob/master/Unsharp%20Masking%20and%20Highboost%20Filtering/Unsharp_Masking_and_High_Boost_Filtering.ipynb)

Subtracting an unsharp(smoothed) version of an image from the original image is a process that has been used since the 1930s by the printing and publishing industry to sharpen images. This process, called unsharp masking, consists of following steps:

1. Blur the original image
2. Subtract the blurred image from the original image (the resulting difference is called the *mask*)
3. Add the mask to the original

The *mask* in equation form is given by:
<p align = "center"><img width="201" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/d67a62ae-7faa-4314-9b33-33a6ee18668b">
</p>

Then we add a weighted portion of the mask back to the original image:
<p align = "center"><img width="201" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/96f2b27e-1a2b-4588-bb29-a43a93e3f0d6">
</p>
where we include a weighted *k* for generality. When *k* = 1, we have unsharp masking. When *k* > 1, the process is referred to as highboost filtering.

<hr>
References:

[1] Rafael C. Gonzalez, Richard E. Woods, *Digital Image Processing*, 4th Edition.
