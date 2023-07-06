# Image Interpolation [Code:  <a href = "https://github.com/naik24/ImageProcessing/blob/master/Image%20Interpolation/Image_Interpolation.py">💻</a>]

Interpolation is the process of using known data to estimate values at unknown locations. Suppose that n image of size 500 x 500 pixels has to be enlarged 1.5 times to 750 x 750 pixels. A simple way to visualize zooming is to create an imaginary 750 x 750 grid with the same pixels spacing as the original image, then shrink it so that it exactly overlays the original image. To assign an intensity value to any point in the overlay, we look for its **closest** pixel in the underlying original image and assign the intensity of that pixel to the new pixel in the 750 x 750 grid. When the intensities have been assigned to all the points in the overlay grid, we expand it back to the specified size to obtain the resized image. The method just discussed is called *nearest neighbor interpolation*. 

Take the following image as our test image: The image is of the size (3692, 2812)
<p align = "center"><img src="https://github.com/naik24/ImageProcessing/assets/69704762/aca7e467-c343-4052-87e4-c34b80a9eb90">
</p>

On applying nearest neighbor interpolation on this image to resize image to the size (1000,1000), we get the following image:
<p align = "center"><img width="497" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/dec5a737-cac8-4c05-9323-e291a47c1499">
</p>

A more suitable approach is bilinear interpolation, in which we use the four nearest neighbors to estimate the intensity at a given location. Let *(x, y)* denote the coordinates of the location to which we want to assign an intensity value, and let *v(x, y)* denote that intensity value. For bilinear interpolation, the assigned value is obtained using the equation:
<p align = "center"><img alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/feca11fa-43fb-4c6b-88aa-36ac3bfddb01"></p>
where the four coefficients are determined form the four equations in four unknowns that can be written using the four nearest neighbors of the point *(x, y)*

Applying bilinear interpolation on our sample image generates the following output:
<p align = "center"><img width="497" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/0d3e8d3f-06cb-4193-bc6f-921669c85bd7">
</p>

The next level of complexity is bicubic interpolation, which involves the sixteen nearest neighbors of a point. The intensity value assigned to the point *(x, y)* is obtained using the equation:
<p align = "center"><img href = "<img width="156" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/69efaeb2-823d-40ff-99f3-b158951528a7"></p>
The sixteen coefficients are determined from the sixteen equations with sixteen unknowns that can be written using the sixteen nearest neighbors.

Applying Cubic Interpolation on the sample image gives the follwing result:
<p align = "center"><img width="497" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/2085350c-a859-41d7-9229-2dabbb343473">
</p>

Although the above interpolation techniques show little difference in their output, bicubic interpolation tends to give sharper results that the other two methods.

<hr>

References:

[1] Rafael C. Gonzalez, Richard E. Woods, *Digital Image Processing*, 4th Edition.
