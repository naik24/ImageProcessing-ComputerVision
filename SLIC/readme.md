# SLIC (Simple Linear Iterative Clusterring) Superpixel Algorithm [![access-code-here](https://img.shields.io/badge/Access%20Code-Here-1f425f.svg)](https://github.com/naik24/ImageProcessing/blob/master/SLIC/Simple_Linear_Iterative_Clustering.ipynb)

SLIC, devloped by <a href = "https://ieeexplore.ieee.org/document/6205760">Achanta et al. [2012]</a>, is a conceptually simple algorithm, and has computation and other performance advantages over other superpixels techniques. SLIC is a modification of the k-means algorithm. SLIC observations typically use 5-dimensional vectors containing three color components and two spatial coordinates.

The initial centroids are obtained by sampling the image on a regular grid spaced s units apart. The choice of s is left to the user. To prevent centering a superpixel on the edge of the image, and to reduce the chance of starting at a noisy point, the initial cluster centers are moved to the lowest gradient position in the 3x3 neighborhood about each center. The SLIC superpixel algorithm consists of the following steps:

1. Initialize the algorithm: Compute the initial superpixel centers, m = [r, g, b, x, y] by sampling the image at regular grid steps, s. Move the cluster centers to the lowest gradient position in a 3x3 neighborhood. For each pixel location p, in the image, set a label L(p)  = -1 and distance to infinity.
2. Assign samples to cluster centers: For each cluster center, compute the distance between the cluster center and each pixel in a 2s x 2s neighborhood. Then update the label map L if the current distance is less than the previous distance.
3. Update Cluster Centers: Take mean of all the pixel values belonging to a cluster. The mean value is the new centroid for each cluster. Note that "pixel value" here refers to the 5-dimensional vector consisting of position and intensity values.
4. Test for convergence: Compute the residual error between the previous centroids and the new centroids. If the error is less than T or 0, the algorithm has converged. In my code, I have ran it for max 3 iterations due to computational load.
5. Post-processing: Each pixel belonging to a cluster should get the average RGB value of all the pixels in that cluster.

We run the SLIC algorithm on the following image:

<p align = "center"><img width="746" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/44236fc8-9606-4e3f-b182-5f599873ff50">
</p>

We get the following output:
<p align = "center"><img width="746" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/64881678-6356-4a47-8526-5c2a0f0fccdc">
</p>

References:

[1] Rafael C. Gonzalez, Richard E. Woods, *Digital Image Processing*, 4th Edition.
