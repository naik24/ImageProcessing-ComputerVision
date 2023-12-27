## Image Segmentation using KMeans Clustering

The basic idea behind a clustering approach is to partition a set, Q, of observations into a specified number, k, of clusters. In k-means clustering, each observation is assigned to the cluster with the nearest mean, and each mean is called the *prototype* of its cluster. A k-means algorithm is an iterative procedure that successively refines the means until convergence is achieved.

The algorithm for k-means segmentation is given below:

1. Initialize the algorithm: Select randomly, any k points on the image. These points form the initial clusters
2. Assign samples to clusters: Assign every pixel in the image to one of the clusters based on distance. In this example, we have chosen the position (x, y) and the color (r, g, b) components of each pixel to calculate its distance from the cluster centroids.
3. Update the cluster centroids: Take mean of all the pixels that belong to a cluster. This will be the new cluster centroid
4. Test for completion: Run steps 1-3 iteratively till the clustering process converges. Convergence is attained when the centroids do not change for successive iterations.

We use the following image as input to the algorithm. Number of clusters k = 10.

![Alt text](image.png)

The algorithm converges in 24 iterations. Below is the final clustered image:

![Alt text](image-1.png)