import cv2

#importing image
sample_image = cv2.imread('chronometer.tif')
cv2.imshow('Sample Image', sample_image)

# nearest neighbor interpolation
NN_interpolated_image = cv2.resize(sample_image, (1000, 1000), cv2.INTER_NEAREST)
cv2.imshow('Nearest Neighbor Interpolation', NN_interpolated_image)

# bilinear interpolation
bilinear_interpolated_image = cv2.resize(sample_image, (1000, 1000), cv2.INTER_LINEAR)
cv2.imshow('Bilinear Interpolation', bilinear_interpolated_image)

# cubic interpolation
cubic_interpolated_image = cv2.resize(sample_image, (1000, 1000), cv2.INTER_CUBIC)
cv2.imshow('Cubic Interpolation', cubic_interpolated_image)
