# Feature Extraction and Keypoint Matching

Intuitively, in an image, we think of a corner as a rapid change of direction in a curve. Corners are highly effective features because they are distinctive and reasonably invariant to viewpoint. Because of these characteristics, corners are used routinely for matching image features in applications such as tracking for autonomous navigation, stereo maching vision algorithms, and image database queries. Harris corner detector is one such algorithm to detect corners in images.

The idea behind Harris corner detector is: Corners are detected by running a small window over an image. The detector window is designed to compute intensity changes. We are interested in three scenarios: (1) Areas of zero (or small) intensity changes in all directions, which happens when the window is located in a constant region; (2) areas of changes in one direction but no (or small) changes in orthogonal direction, which happens when the window spans a boundary between two regions; and (3) areas of significant changes in all directions, a condition that happens when the window contains a corner (or isolated points).

In this project, we aim to extract corners (keypoints) from each of the images shown below and match the keypoints. The results of keypoint matching can be used for applications like panaroma stitching.

<p align = "center"><img width="450" alt="image" src="https://github.com/naik24/ImageProcessing-ComputerVision/assets/69704762/e5fdc0a0-d9ce-49f6-893e-c5c3d6465b24"> <img width="450" alt="image" src="https://github.com/naik24/ImageProcessing-ComputerVision/assets/69704762/53077d00-c686-4805-a300-c1ee440c7a05"></p>

To calculate the similarity between two keypoints, we use the following two methods:
- Sum of Squared Differences (SSD)

<p align = "center"><img width="258" alt="image" src="https://github.com/naik24/ImageProcessing-ComputerVision/assets/69704762/256ff1fe-fb02-4633-87ce-835babec6e2c"></p>

- Normalized Correlation (NCC)

<p align = "center"><img width="648" alt="image" src="https://github.com/naik24/ImageProcessing-ComputerVision/assets/69704762/bfa1586d-454a-4484-8014-0a9daf0ecfaa"></p>

The keypoint matching result after applying NCC on a 9x9 window in both the images is shown below:
<p align = "center"><img width="792" alt="image" src="https://github.com/naik24/ImageProcessing-ComputerVision/assets/69704762/ec943a4a-1c81-4c46-8e87-f66bdbe5569c">
</p>

