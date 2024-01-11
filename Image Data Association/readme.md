# Image Data Association

The goal of this project is to apply an unsupervised clustering algorithm to segregate a set of images observing different scenes. The dataset used for this project is fountain-P11, Herz-Jesu-P8, entry-P10 from the <a href = "https://github.com/openMVG/SfM_quality_evaluation">Strecha MVS evaluation</a> site. Following are some of the images displayed from each dataset.

<p align = "center"><img width="517" alt="image" src="https://github.com/naik24/ImageProcessing-ComputerVision/assets/69704762/1b902ec4-a967-42cf-abd9-f153fcec3702"></p>

The algorithm used for this project is the **mean shift algorithm**. Mean shift algorithm is a process that aims to discover blobs in a smooth density of samples. The way this algorithm is proceeds is by initially building a feature space. Since the input data in this project is images, the feature space is built using the mean RGB values of the images. Hence, we get a 3D feature space where each image lies at a certain point in the 3D space. As observable from the image above, images from a similar scene will have very close mean RGB values and hence will cluster together. In this way, we cluster all the images in the dataset. Since the number of clusters is not defined at the start, there could be more clusters than expected. More on mean shift clustering <a href = "https://towardsdatascience.com/understanding-mean-shift-clustering-and-implementation-with-python-6d5809a2ac40">here</a>.

## References

[1] Richard Szeliski, Computer Vision: Algorithms and Applications
