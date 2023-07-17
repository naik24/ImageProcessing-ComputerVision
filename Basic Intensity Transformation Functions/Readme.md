# Basic Intensity Transformation Functions [![access-code-here](https://img.shields.io/badge/Access%20Code-Here-1f425f.svg)](https://github.com/naik24/ImageProcessing/blob/master/Basic%20Intensity%20Transformation%20Functions/Basic_Intensity_Transformation_Functions.ipynb)

## Image Negatives
The negative of an image with intensity levels in the range [0, L-1] is obtained by using the negative transformation function which has the form:
<p align = "center"><img width="128" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/c0849b55-455e-41a9-8f25-b614d5c195ba">
</p>
Reversing the intensity levels of a digital image in this manner produces the equivalent of a photographic negative. This type of processing is used, for example in enhancing white or gray detail embedded in dark regions of an image, especially when the black areas are dominant in size. The folling example is an example of generating image negatives.

<p align = "center"><img width="513" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/2c9f8208-b36d-40c0-a293-0502a980de1f">
</p>
Although the visual content is the same in both images, some viewers find it easier to analyze the fine details of the breast tissue using the negative image

## Log Transformations
The general form of log transformation is:
<p align = "center"><img width="119" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/4afe6237-a395-41bb-88b1-792255dec278">
</p>
where c is a constant and it is assumed that r >= 0.This transformation maps a narrow range of low intensity values in the input to a wider range of output levels. We use a transformation of this type to expand the values of dark pixels in an image, while compressing the higher-level values.

The following figure shows a a Fourier spectrum with values in the range 0 to 1.5 x 10<sup>6</sup>. When these values are scaled linearly for display in an 8-bit system, the brightest pixels dominate the display, at the expense of lower values of the spectrum. Applying log transfomation to this image enables a greater range of intensitites to be shown on the display. 
<p align = "center"><img width="517" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/62de87f7-ea46-4189-a2d3-dbc985fe4f53">
</p>

## Power Law Transformations
Power-law transformations have the form:
<p align = "center"><img width="71" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/6a560376-9b7b-4e58-a17d-93d58ae01c20">
</p>
where c and gamma are positive constants. Power law maps a narrow range of dark input values into a wider range of output values, with the opposite being true for higher values of input levels.

Power-law transformations are useful for general purpose contrast manipulation. The following image shows a MRI of a human upper thoracic spine with a fracture dislocation. Because the image is predominantly dar, an expansion of intensity levels is desirable. This can be accomplished using a power-law transformation with a fractional component.
<p align = "center"><img width="418" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/141b722c-a2f5-4fc0-834b-866fafac15cc">
</p>

## Contrast Stretching
Low-contrast images can result from poor illumination, lack of dynamic range in the imaging sensor, or even the wrong setting of a lens aperture during image acquisition. Contrast stretching expands the range of intensity levels in an image so that it spans the ideal full intensity range of recoding medium or display device.

<hr>
References:

[1] Rafael C. Gonzalez, Richard E. Woods, *Digital Image Processing*, 4th Edition.
