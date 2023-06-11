# Digital Image Processing

## Acknowledgments
The reference for the notes in this repository is **Digital Image Processing** by **Rafael C. Gonzalez** and **Richard E. Woods**.

## Table of Contents
1. Introduction

## 1. Introduction
**1.1 Objectives**:

- Understand the concept of a digital image.

- Have a broad overview of the historical underpinnings of the field of digital image processing.

- Understand the definition and scope of digital image processing.

- Know the fundamentals of the electromagnetic spectrum and its relationship to image
generation.

- Be aware of the different fields in which digital image processing methods are applied.

- Be familiar with the basic processes involved in image processing.

- Be familiar with the scope of the literature where image processign work is reported.

#### 1.2 What is Digital Image Processing

An **image** may be defined as a two-dimensional function, ***f(x, y)***, where ***x*** and ***y*** are spatial coordinates, and the amplitude at ***f*** at any pair of coordinates (***x, y***) is called the intensity or gray level of the image at that point.

When ***x***, ***y*** and the intensity values of ***f*** are all finite, discrete quantities, we call the image a **digital image**.

A digital image is composed of a finite number of elements, each of which has a particular location and value. These elements are called ***pixels***.

#### 1.3 Applications of Digital Image Processing

One of the simplest ways to develop a basic understanding of the extent of image processing applications is to categorize images according to their source. The principal energy source for images in use today is the electromagnetic energy spectrum.

- **Gamma Ray Imaging**: Applications of gamma ray imaging include nuclear medicine and astronomical observations. In nuclear medicine, the approach is to inject a patient with a radioactive isotope that emits gamma rays as it decays. Images are produced from the emissions collected by gamma-ray detectors. On major modality of nuclear imaging is Positron Emission Tomography. The patient is given a radioactive isotope that emits positrons as it decays. When a positron meets a electron, both are annihilated and two gamma rays are given off. These are detected and a tomographic image is created. 

<p align = "center">
<img width="493" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/f60e84c1-46bb-4d83-8cf2-6406e79cd7b1">
</p>

- **X Ray Imaging**: The best known use of X-rays is medical diagnostics, but they are also used extensively in industry and other areas, such as astronomy. X-rays for medical and industrial imaging are generated using an X-ray tube, which is a vaccum tube with a cathode and anode. The cathode is heated, causing free electrons to be released. These electrons flow at a high speed to the positively charged anode. When the electrons strike a nucleus, energy is released in the form of an X-ray radiation. In medical diagnosis, a patient is placed between an X-ray source and a film sensitive to the X-ray energy. The intensiity of the X-rays is modified by absorption as they pass through the patient, and the resulting energy falling on the film develops it, much in the same way that light develops photographic film. Angiography and CAT are another important applications of X-ray imaging.

<p align = "center">
<img width="578" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/f286b0b9-bd16-4a61-b383-d1d9e98e9f35">
</p>

- **UV Imaging**: Applications of UV include lithography, industrial inspection, microscopy, lasers, biological imaging, and astronomical observations. 

<p align = "center"><img width="613" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/e568fd8c-1336-436e-babe-346402682914">
</p>

- **Imaging in Visible and Infrared Bands**: Applications range from pharma and microinspection to materials characterization. Another major area of visual processing is remote sensing, which usually includes several bands in the visual and infrared regions of the spectrum. 

<p align = "center"><img width="617" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/61b3a7bd-4320-4fb1-988d-9daaced9de2d"></p>

- **Imaging in Radio Band**: In medicine, radio waves are used in MRI. This technique places a patient in a powerful magnet and passes radio waves through the individual's body in short pulses. Each pulse causes a responding pulse of radio waves to be emitted by the patient's tissues. The location from which these signals originate and their strength are determined by a computer, which produces a two-dimensional image of a section of the patient.

#### 1.4 Fundamental Steps in Digital Image Processing

- Image acquisition is the first process of digital image processing. Acquisition could be as simple as being given an image that is already in digital form.
- Image enhancement is the process of manipulating an image so the result is more suitable than the original for a specific application.
- Image restoration is an area that also deals with improving the appearance of an image. However, unlike enhancement, which is subjective, image restoration is objective, in the sense that restoration techniques tend to be based on mathematical or probabilistic models of image degradation. 
- Color image processing is the area that has been gaining in importance because of the significant increase in the use of digital images over the internet. Color is used also as the basis for extracting features of interest in an image.
- Wavelets are the foundation for representing images in various degrees of resolution. Wavelets are used for image data compression and for pyramidal representation, in which images are subdivided successively into smaller regions.
- Compression deals with techniques for reducing the storage required to save an image, or the bandwidth required to transmit it. Although storage technology has improved significantly over the past decade, the same cannot be said for transmission capacity. 
- Morphological processing deals with tools for extracting image components that are useful in the representation and description of shape.
- Segmentation partitions an image into its constituent parts or objects. 
- Feature extraction almost always follows the output of a segmentation stage, which usually is a raw pixel data, constituting either the boundary of a region or all the points in the region itself. Feature extraction consists of feature detection and feature description. Feature detection refers to finding the features in an image, region or boundary. Feature description assigns quantitative attributes to the detected features. 
- Image pattern classification is the process that assigns a label to an object based on its feature descriptors.

## 2. Digital Image Fundamentals

#### 2.1 Objectives
- Have an understanding of basic geometric relationships between image pixels
- Be familiar with the principal mathematical tools used in digital image processing
- Be able to apply a variety of basic image processing techniques

#### 2.2 Representing Digital Images

A digital image ***f(x, y)*** is represented by an ***M*** x ***N*** matrix where ***x*** = 0, 1, 2,..., ***M***-1 and ***y*** = 0, 1, 2,..., ***N-1***. 

Image digitization requires that decisions be made regarding the values for ***M***, ***N***, and for the number of discrete intensity levels ***L***. There are no restrictions placed on ***M*** and ***N***, other than they have to be positive integers. However, digital storage and quantizing hardware considerations usually lead to the number of intensity levels ***L***, being and integer power of two i.e. 2<sup>***k***</sup>, where ***k*** is an integer. 

Sometimes, the range of values spanned by the gray scale is referred to as the ***dynamic range***. The dynamic range of an imaging system is the ratio of the maximum measurable intensity to the minimum detectable intensity level in the system. As a rule, the upper limit is determined by the ***saturation*** and the lower limit by ***noise***, although noise can also be present in lighter intensities. Closely associated with this concept is ***image contrast***, which we define as the difference in intensity between the highest and lowest intensity levels in an image. 

#### 2.3 Spatial and Intensity Resolution

Spatial resolution is a measure of the smallest discernible detail in an image. Dots per unit distance is a measure of image resolution used in the printing and publishind industry. Other commonly used measure is dots ber inch (dpi)

Intensity Resolution simply refers to smallest discernible change in intensity level.

#### 2.4 Image Interpolation

Interpolation is used in tasks such as zooming, shrinking, rotating, and geometrically correcting digital images.

Interpolation is the process of using known data to estimate values at unknown locations. Suppose that an image of size 500 x 500 pixels has to be enlarged 1.5 times to 750 x 750 pixels. A simple way to visualize zooming is to create an imaginary 750 x 750 grid with the same pixel spacing as the original image, then shrink it so that it exactly overlays the original image. Obviously, the pixel spacing in the shrunken 750 x 750 grid will be less than the pixel spacing in the original image. To assign an intensity value to any point in the overlay, we look for its closest pixel in the underlying original image and assign the intensity of that pixel to the new pixel in the 750 x 750 grid. When intensities have been assigned to all the points in the overlay grid, we expand it back to the specified size to obtain the resized image. This method is called nearest neighbor interpolation. This approach is simple but, it has the tendence to produce undesirable artifacts, such as sever distortion or straight edged.

A more suitable approach is bilinear interpolation, in which we use the four nearest neighbors to estimate the intensity at a given location. 

The next level of complexity is bicubic interpolation, which involces sixteen nearest neighbors of a point. 

Generally, bicubic interpolation does a better job of preserving fine detail that its bilinear counterpart. Bicubic interpolation is the standard used in commercial image editing applications, such as Adobe Photoshop and Corel Photopaint.

Implementation of Image Interpolation in Python can be found <a href = "https://github.com/naik24/ImageProcessing/blob/master/Image%20Interpolation/Image_Interpolation.ipynb">here</a>

#### 2.5 Relationships between pixels

**2.5.1 Neighbors of a Pixel**

A pixel ***p*** at coordinates (***x, y***) has two horizontal and two vertical neighbors with coordinates (***x + 1, y***), (***x - 1, y***), (***x, y + 1***), (***x, y - 1***). This set of pixels is called the 4-neighbors of ***p*** and is denoted as N<sub>4</sub>(***p***).

The four diagonal neighbors of ***p*** have coordinates (***x + 1, y + 1***), (***x + 1, y - 1***), (***x - 1, y + 1***), (***x - 1, y - 1***). This set of pixels are denoted as N<sub>D</sub>(***p***). The 4-neighbors and diagonal neighbors together are call 8-neighbors of ***p***, denoted by N<sub>8</sub>(***p***).

The set of image locations of the neighbors of a point ***p*** is called the neighborhood of ***p***. The neighborhood is said to be closed if it contains ***p***. Otherwise, it is said to be open.
