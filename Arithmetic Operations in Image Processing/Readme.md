# Arithmetic Operations In Image Processing [Code <a href = "https://github.com/naik24/ImageProcessing/blob/master/Arithmetic%20Operations%20in%20Image%20Processing/Arithmetic%20Operations%20in%20Image%20Processing.ipynb">💻</a>]

Arithmetic operations between two images are denoted as:
<p align = "center"><img width="176" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/f77e069f-b7a3-4cfe-8300-469fb843a690">
</p>

These are elementwise operations, means that they are performed between corresponding pixel pairs in *f* and *g*. 

## Using image addition for noise reduction

Consider the following image. This is a noiseless image.
<p align = "center"><img width="565" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/93b56a07-a5f8-4aa9-bc5e-008805c7b783">
</p>

On adding Gaussian noise to this image, we get the following image.
<p align = "center"><img width="565" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/cc0a475b-fbe6-4fc6-a57e-b07d6683d88e"></p>

Our objective now is to remove this noise. The approach to achieve this objective is called image addition or averaging. To remove the noise, we add the noisy image N times to itself and divide the result by N. As the number N increases, so does the noise reduction in the image.

An important application of image averaging is in the field of astronomy, where imaging under very low light levels often cause sensor noise to render individual images virtually useless for analysis. 

## Comparing Images using Subtraction

Image subtraction is used routinely for enhancing differences between images. An example of this is mask mode radiography. In this case, the mask image is an X-ray image of a region of patient's body captured by an intensified TV camera located opposite an X-ray source.
<p align = "center"><img width="239" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/30163483-304a-48d8-a66d-cd388c878a1b">
</p>

The procedure consists of injecting X-ray contrast medium into the patient's bloodstream, taking a series of images called live images of the same anatomical region,
<p align = "center"><img width="239" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/e7206409-8be9-4c92-831a-0e6ab3637086">
</p>
and subtracting the mask from the series of each sample live image after injection of the contrast medium. The net effect of subtracting the mask from each sample live image is that the areas that are different between the mask and the live image appear in the output image as enhanced detail.
<p align = "center"><img width="419" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/d683b34a-f0e0-44dd-be58-7a835baef11b">
</p>

As seen in the above image, some fine blood vessel structures are visible in this image.

## Using Image Multiplication for Masking

One use of image multiplication is in masking, also called *region of interest* operations. As the below figures show, the process consist of multiplying given image by a mask image that has 1's in the ROI and 0's elsewhere.

<p align = "center"><img width="519" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/c4c0c470-ce37-49bb-b887-98a511e906e2">
</p>

The result of multiplying the two images above is
<p align = "center"><img width="596" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/5bbc71a8-ef35-4214-99e1-c4bb0c6f969d">
</p>

<hr>

References:

[1] Rafael C. Gonzalez, Richard E. Woods, *Digital Image Processing*, 4th Edition.
[2] Image Database, https://www.imageprocessingplace.com/root_files_V3/image_databases.htm
