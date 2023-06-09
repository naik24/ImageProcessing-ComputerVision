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
