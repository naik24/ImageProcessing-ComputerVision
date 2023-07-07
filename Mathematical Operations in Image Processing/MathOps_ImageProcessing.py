import numpy as np
import cv2
from PIL import Image, ImageChops

# ==========IMAGE ADDITION FOR NOISE REDUCTION==========
galaxy_image = cv2.imread('galaxy_pair.tif')

# generating gaussian noise
row, col, ch = galaxy_image.shape
mean = 0
var = 0.09
sigma = 400000 * var

gauss_noise = np.random.normal(mean,sigma,(row,col,ch))
gauss_noise = gauss_noise.reshape(row, col, ch)
#cv2.imshow("Gaussian Noise", gauss_noise)

# noisy image
noisy_galaxy_image = galaxy_image + gauss_noise
cv2.imshow("Noisy Galaxy Image", noisy_galaxy_image)
#cv2.waitKey()

# averaging the noisy image
n_images = [5, 10, 20, 50, 100]
for n in n_images:
  image_averages = []
  iter = n
  while iter > 0:
    gaussian_noise = np.random.normal(mean,sigma,(row,col,ch))
    gaussian_noise.reshape(row, col, ch)
    noisy_images = galaxy_image + gaussian_noise
    image_averages.append(noisy_images)

    iter -= 1
  denoised_image = np.zeros((row, col, ch))
  for avg in image_averages:
    denoised_image += avg
  denoised_image = denoised_image / n
  #cv2.imshow(f"Averaging {n} images", denoised_image)

# ==========COMPARING IMAGES USING SUBTRACTION==========

# loading the original image
mask_image = cv2.imread('mask_image.tif')
live_image = cv2.imread('live_image.tif')

result = cv2.subtract(mask_image, live_image)
result = 255 - result
#cv2.imshow('Result', result)
