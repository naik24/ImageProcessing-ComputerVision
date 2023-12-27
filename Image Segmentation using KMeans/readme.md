## Image Segmentation using KMeans Clustering [![access-code-here](https://img.shields.io/badge/Access%20Code-Here-1f425f.svg)](https://github.com/naik24/ImageProcessing/blob/master/Image%20Segmentation%20using%20KMeans/Image_Segmentation_using_KMeans.ipynb)

The basic idea behind a clustering approach is to partition a set, Q, of observations into a specified number, k, of clusters. In k-means clustering, each observation is assigned to the cluster with the nearest mean, and each mean is called the *prototype* of its cluster. A k-means algorithm is an iterative procedure that successively refines the means until convergence is achieved.

The algorithm for k-means segmentation is given below:

1. Initialize the algorithm: Select randomly, any k points on the image. These points form the initial clusters
2. Assign samples to clusters: Assign every pixel in the image to one of the clusters based on distance. In this example, we have chosen the position (x, y) and the color (r, g, b) components of each pixel to calculate its distance from the cluster centroids.
3. Update the cluster centroids: Take mean of all the pixels that belong to a cluster. This will be the new cluster centroid
4. Test for completion: Run steps 1-3 iteratively till the clustering process converges. Convergence is attained when the centroids do not change for successive iterations.

We use the following image as input to the algorithm. Number of clusters k = 10.

<p align = "center"><img width="1279" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/cee739a6-bf05-4f3d-9c07-3ae0e70b550a"></p>

The algorithm converges in 24 iterations. Below is the final clustered image:
<p align = "center"><img width="1279" alt="image" src="https://github.com/naik24/ImageProcessing/assets/69704762/68e07bd6-3ddd-4fff-ba2b-eb678e5998a0">
</p>

<hr>
References:

[1] Rafael C. Gonzalez, Richard E. Woods, *Digital Image Processing*, 4th Edition.
