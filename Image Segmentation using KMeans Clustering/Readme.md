# Image Segmentation using KMeans Clustering [![access-code-here](https://img.shields.io/badge/Access%20Code-Here-1f425f.svg)](https://github.com/naik24/ImageProcessing/blob/master/Image%20Segmentation%20using%20KMeans%20Clustering/Image_Segmentation_using_KMeans_Clustering.ipynb)

The basic idea behind the clustering approach is to partition a set, Q, of observations into a specified number, k, of clusters. In k-means clustering, each observation is assigned to the cluster with the nearest mean, and each mean is called the prototype of its cluster. A k-means algorithm is an iterative procedure that successively refines the means until convergence is achieved. 

The KMeans Algorithm is as follows:

1. Initialize the algorithm: Specify an initial set of means
2. Assign samples to clusters: Assign each sample to the cluster set whose mean is the closest (ties are resolved arbitrarily, but samples are assigned to only one cluster)
3. Update the cluster centers (means) using the following formula:
<p align = "center"><img src = "https://github.com/naik24/ImageProcessing/assets/69704762/8a71f177-3271-49cf-a1aa-45d697c30026"></p>
where |C<sub>i</sub>| is the number of samples in cluster set C<sub>i</sub>
4. Test for completion: Compute the Eucliean norms of the differences between the mean vectors in the current and previous steps. Compute the residual error, E, as the sum of the k norms. Stop if E <= T, where T is a specified, nonnegative threshold. Else, go back to Step 2.

When T = 0, this algorithm is known to converge in a finite number of iterations to a local minimum. The result at convergence does depend on the initial values chosen for the means. An approach used frequently in data analysis is to specify the initial means as k randomly chosen samples from the given sample set, and to run the algorithm several times, with a new random set of initial samples each time. In image segmentation, the important issue is the value selected for k because this determines the number of segmented regions; thus, multiple passes are rarely used.

<hr>

References:

[1] Rafael C. Gonzalez, Richard E. Woods, *Digital Image Processing*, 4th Edition.

[2] Image Database, https://www.imageprocessingplace.com/root_files_V3/image_databases.htm
