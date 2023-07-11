# Histogram Matching [Code: <a href = "https://github.com/naik24/ImageProcessing/blob/master/Histogram%20Matching/Histogram_Matching.ipynb">💻</a>]

Sometimes, it is useful to be able to specify the shape of the histogram that we wish the processed image to have. The method used to generate images that have a specified histogram is called histogram matching or histogram specification.

Before listing the steps for histogram matching, let's look at some of the useful functions. The first required equation is of Histogram Equalizaion:
<p align = "center"><img width="313" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/539152fa-8bbf-438c-b817-c21d8968f275">
</p>

Next, define a function G on variable z(intensity levels of output processed image):
<p align = "center"><img width="313" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/c32ece98-cb87-40a9-a52d-2bcdb5b82300">
</p>

Given, the above two equations, let's list down the steps required to computer histogram matching:
- Compute the histogram p<sub>r</sub>(r) of the input image, and use it in the first equation above to map the intensities in the input image to the intensities in the histogram-equalized image. Round the resulting values to the integer range [0, L-1]
- Compute all the values of function G(z<sub>q</sub>) using the second equation above where p<sub>z</sub>(z<sub>i</sub>) are the values of the specified histogram. Round the values of G to integers in the range [0, L-1]. Store the rounded values of G in a lookup table.
- For every value of s<sub>k</sub>, use the stored values of G from Step 2 to find the corresponding value of z<sub>q</sub> so that G(z<sub>q</sub>)is closes to s<sub>k</sub>. Store these mappings from s to z. When more than onve value of z<sub>q</sub> gives the same match, choose the smallest value by convention.
- Form the histogram-specified image by mapping every equalized pixel with value s<sub>k</sub> to the corresponding pixel with value z<sub>q</sub> in the histogram-specified image, using the mappings found in Step 3.

<hr>

References:
[1] Rafael C. Gonzalez, Richard E. Woods, *Digital Image Processing*, 4th Edition.
