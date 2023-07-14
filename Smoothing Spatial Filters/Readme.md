# Smoothing (Lowpass) Spatial Filters (Code: [![Made withJupyter](https://img.shields.io/badge/Made%20with-Jupyter-orange?style=for-the-badge&logo=Jupyter)](https://github.com/naik24/ImageProcessing/blob/master/Smoothing%20Spatial%20Filters/Smoothing_(Lowpass)_Spatial_Filters.ipynb))


Smoothing spatial filters are used to reduce sharp transitions in intensity. Because random noise typically consists of sharp transitions in intensity, an obvious application of smoothing is noise reduction. Smoothing is used to reduce irrelevant detail in an image, where "irrelevant" refers to pixel regions that are small with respect to the size of filter kernel. Another application is for smoothing the false contours that result from using an insufficient number of intensity levels in an image. Smoothing filters are used in combination with other techniques for image enhancement, such as histogram processing techniques.

Linear spatial filtering consists of convolving an image with a filter kernel. Convolving a smooth kernel with an image blurs the image, with the degree of blurring being determined by the size of the kernel and its coefficients. Low pass filters are fundamental, in the sense that other important filters, including sharpening(highpass), bandpass, and bandreject filters, can be derived from lowpass filters.

## Box Filter Kernels
The simplest, separable lowpass filter kernel is the box kernel, whose coefficients have the same value. Because in a box kernel all rows and columns are identical, the rank of the kernels is 1, which, as we discussed, means that they are separable. The follwing figure shows effect of box filtering using different kernel sizes:
<p align = "center"><img src="https://github.com/naik24/ImageProcessing/assets/69704762/5b238db4-68dd-4f1a-a999-60f0bbc7c927">
</p>

## Lowpass Gaussian Filter Kernels

Because of their simplicity, box filters are suitable for quick experimentation and they often yield smoothing filters that are visually acceptable. However, box filters have limitations that make them poor choices in many applications. One of the limitation is the fact that box filters favor blurring along perpendicular direction. In applications involving images with a high level of detail, or with strong geometrical components, the directionality of box filters often produces undesirable results. The kernels of choice in applications such as those mentioned are circularly symmetric. As it turns our Gaussian kernels are the only circularly symmetric kernels that are also separable. Following figure shows Gaussian filtering effects:
<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/64306c0f-d2a5-4e19-845d-9852d203ee74">
</p>

## Order Statistic (Non-Linear) Filters
Order-statistic filters are nonlinear spatial filters whose response is based on ordering (ranking) the pixels contained in the region encompassed by the filter. Smoothing is achieved by replacing the value of the center pixel with the value determined by the ranking result. The best-known filter in this category is the median filter, which, as its name implies, replaces the value of the center pixel by the median of the intensity values in the neighborhood of that pixel. Median filters provide excellent noise reduction capabilities for certain types of random noise, with considerably less blurring than linear smoothing filters of similar size. Median filters are particularly effective in the presence of impulse noise (sometimes called as salt and pepper noise).

The median filter is by far the most useful order-statistic filter in image processing, but is not the only one. The median represents the 50th percentile of a ranked set of numbers, but ranking lends itself to many other possibilities. For example, using the 100th percentile results in the so-called max filter, which is useful for finding the brightest points in an image or eroding dark areas adjacent to light regions. The 0th percentile filter is the min filter, used for the opposite purpose. The following example shows effect of max, min, and median filter on a noisy image. The type of noise is salt and pepper noise.
<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/7949a60a-34a1-420d-adc5-d9354861b0e8">
</p>

<hr>
References:

[1] Rafael C. Gonzalez, Richard E. Woods, *Digital Image Processing*, 4th Edition.

[2] Image Database, https://www.imageprocessingplace.com/root_files_V3/image_databases.htm
