# Opening and Closing for Morphological Filtering [![access-code-here](https://img.shields.io/badge/Access%20Code-Here-1f425f.svg)](https://github.com/naik24/ImageProcessing/blob/master/Opening%20and%20Closing%20for%20Morphological%20Filtering/Opening_and_Closing_for_Morphological_Filtering.ipynb)

Opening generally smoothes the contour of an object, breaks narrow isthmuses, and eliminates thin protrusions. Closing also tends to smooth sections of contours but, as opposed to opening, it generally fuses narrow breaks and long thin gulfs, eliminates small holes, and fills gaps in the contour. The opening of set A by structuring element B, is defined as:

<p align = "center"><img width="225" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/5a1c56e6-1a70-49e6-8fde-0568e87da42e"></p>

Thus, the opening of A by B is the erosion of A by B, followed by a dilation of the result by B. The above equation has a simple geometrical interpretation: The opening of A by B is the union of all the translations of B so that B fits entirely in A. 

Similarly, the closing of set A by structuring element B, is defined as

<p align = "center"><img width="225" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/e04c4950-fe1a-4692-aaaa-55a86874b5a0"></p>

which says that the closing of A by B is simply the dilation of A by B, followed by erosion of the result by B. Closing has a simple geometrical interpretation, except that now we translate B outside A. The closing is then the complement of the union of all translations of B that do not overlap A. 

The binary image below shows a section of a fingerprint corrupted by noise. In terms of the notation above, A is the set of all foreground (white) pixels, which includes objects of interest (the fingerprint ridges) as well as white specks of random noise. The noise manifests itself as white specks on a dark background and dark specks on the white components of the fingerprint. The objective is to eliminate the noise and its effects on the print, while distorting it as little as possible. A morphological filter consisting of an opening followed by a closing can be used to accomplish this objective. The structuring element used is a 3 x 3 matrix of ones.

<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/6192e57c-952e-4a6d-a7bd-2c732da71ed7"></p>

As seen in the figure above, most of the breaks were restored, but the ridges were thickened, a condition that can be remedied by erosion. The final result is remarkably clean of noise specks, but it still shows some specks of noise that appear as single pixels.

<hr>

References:

[1] Rafael C. Gonzalez, Richard E. Woods, *Digital Image Processing*, 4th Edition.

[2] Image Database, https://www.imageprocessingplace.com/root_files_V3/image_databases.htm
