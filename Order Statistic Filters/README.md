# Image-Filters-in-MATLAB

--------------------------
### Introduction 
Order Statistic Filters are spatial filters whose response is based on ordering (ranking) the values of the pixels combined in the image area encompasses by the filter. The ranking result determines the response of the filter

### Max Filter
Max filter is used for finding the brightest points in the image. Pepper noise is reduced by using max filter as it has very low values. 

### Min Filter
Min filter, on the other hand is used for finding the darkest points in an image. It reduces salt noise

### Median Filter
Median filter is the best known order statistic filter which replaces the value of a pixel by the median of the intensity levels in the neighborhood of that pixel. Median filters are popular because for certain types of random noise, they provide excellent noise reduction capabilities, with considerably less blurring than linear smoothing filters of similar size

### Adaptive Median Filter
The median filter performs well if the spatial density of the impulse noise is not large. For this purpose, the adaptive median filter can be used. An additional benefit of the adaptive median filter is that it seeks to preserve detail while smoothing non-impulse noise, something which traditional filters do not do

---------------------------------
## Algorithm for Max Filter
* STEP 1: START
* STEP 2:  Import the image
* STEP 3: Pad the image with zeros
* STEP 4: Find the maximum intensity point in the image in the window size of 3x3
* STEP 5: Form a matrix of brightest points by sliding the window on the whole image
* STEP 6: Convert the output matrix in 0-255 range
* STEP 7: Display the image 
* STEP 8: STOP

## Algorithm for Min Filter
* STEP 1: START
* STEP 2:  Import the image
* STEP 3: Pad the image with zeros
* STEP 4: Find the minimum intensity point in the image in the window size of 3x3
* STEP 5: Form a matrix of darkest points by sliding the window on the whole image
* STEP 6: Convert the output matrix in 0-255 range
* STEP 7: Display the image 
* STEP 8: STOP

## Algorithm for Median Filter
* STEP 1: START
* STEP 2:  Import the image
* STEP 3: Pad the image with zeros
* STEP 4: Find the median from the image in the window size of 3x3
* STEP 5: Form a matrix of the median points by sliding the window on the whole image
* STEP 6: Convert the output matrix in 0-255 range
* STEP 7: Display the image 
* STEP 8: STOP

## Algorithm for Adaptive Median Filter
* STEP 1: START
* STEP 2: Import the image
* STEP 3: Pad the image with zeros
* STEP 4: Consider gray levels in a window of size 3x3
* STEP 5: Calculate <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Zmin = Minimum intensity values in the 3x3 window<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Zmax = Maximum intensity values in the 3x3 window<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Zmed = Median intensity values in the 3x3 window<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Zxy= Intensity values at coordinates (x,y)<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Smax= maximum allowed size of the window = 7x7<br />
* STEP 6: Calculate
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; A1 = (Zmed - Zmin)<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; A2= (Zmed - Zmax)<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; IF A1>0 and A2<0<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; GO TO STEP 7<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ELSE<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Increase window sizeE<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; IF WINDOW SIZE <= Smax<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; GO TO STEP 5<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ELSE<br /> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Display Zmed<br />
* STEP 7: Calculate<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; B1= Zxy – Zmin<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; B2= Zxy – Zmax<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; IF B1> 0 and B2 < 0<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Display Zxy<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ELSE<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Display Zmed<br />
* STEP 8: STOP<br />

----------------------------------------------

## Reference
Digital Image Processing, Third Edition, Rafael C. Gonzalez, Richard E. Woods

