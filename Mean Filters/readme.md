# Mean Filters [![access-code-here](https://img.shields.io/badge/Access%20Code-Here-1f425f.svg)](https://github.com/naik24/ImageProcessing/blob/master/Mean%20Filters/Mean_Filter.ipynb)

## Arithmetic Mean Filter

The arithmetic mean filter is the simplest of the mean filters. It computes the average value of the corrupted image in the area defined by the window. The value of the restored image at point (x, y) is the arithmetic mean computed using the pixels in the region defined by the window. To put it in mathematical terms:

<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/3c45c498-b33d-4e89-a131-d0625efb4dd3">
</p>

## Geometric Mean Filter

An image restored using a geometric mean filter is given by the expression

<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/0c231142-ac30-4a8d-9aa8-495fc8012155">
</p>

Here, each restored pixel is given by the product of all the pixels in the subimage area, raised to the power of 1/mn. Geometric mean filter achieves higher smoothing comparable to an arithmetic mean filter, but it tends to lose image detail in the process.

## Harmonic Mean Filter

The harmonic mean filtering operation is given by the expression

<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/9db916c5-b62d-450f-af2b-b7f3027786e7"></p>

<hr>

References:

[1] Rafael C. Gonzalez, Richard E. Woods, *Digital Image Processing*, 4th Edition.

[2] Image Database, https://www.imageprocessingplace.com/root_files_V3/image_databases.htm
