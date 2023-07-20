# Histogram Equalization [![access-code-here](https://img.shields.io/badge/Access%20Code-Here-1f425f.svg)](https://github.com/naik24/ImageProcessing/blob/master/Histogram%20Equalization/Histogram_Equalization.ipynb)

Histogram equalization is a method in image processing of contrast adjustment using the image's histogram. This method usually increases the global contrast of many images, especially when the image is represented by a narrow range of intensity values. Through this adjustment, the intensities can be better distributed on the histogram utilizing the full range of intensities evenly. This allows for areas of lower local contrast to gain a higher contrast. Histogram equalization accomplishes this by effectively spreading out the highly populated intensity values which are used to degrade image contrast.

The discrete tranformation for Histogram Equalization is:
<p align = "center"><img width="306" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/52dfd3aa-ad3c-4c18-9f71-0637197bbedc">
</p>
where s is the output image after equalization and L is the number of possible intensity levels in the image. p<sub>r</sub>(r<sub>j</sub> is the probability of occurence of intensity level r<sub>j</sub> in the input image.

The following image shows the histogram of the input image.
<p align = "center"><img width="515" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/3d946916-b9a7-4edd-adc2-7580a3bc4e3b">
</p>

After equalization, we get the following histogram
<p align = "center"><img width="515" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/56f13220-9014-4451-b425-f0991db7a989">
</p>

<hr>
References:

[1] Rafael C. Gonzalez, Richard E. Woods, *Digital Image Processing*, 4th Edition.

[2] *Histogram Equalization*, https://en.wikipedia.org/wiki/Histogram_equalization

[3] Image Database, https://www.imageprocessingplace.com/root_files_V3/image_databases.htm
