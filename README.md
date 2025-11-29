# Interactive Image Filters and Diameter Measurement

## Project Title

**Interactive Image Filters and Diameter Measurement**

## Project Members

* Samantha W (23PW25)
* Shree Sindhiya Harshini K (23PW28)

## Abstract

This project demonstrates basic image processing techniques using MATLAB. It allows users to apply various filters—such as blurring, motion blur, edge detection, and grayscale conversion—to images and observe their effects. Additionally, it provides functionality to measure the diameter of objects within an image using MATLAB's image analysis tools.

## Use of the Project

* Apply filters to images and analyze their effects.
* Measure the diameter of objects in an image interactively.
* Adjust filter parameters like size, standard deviation, or blur intensity.

## How It Works

1. **Diameter Measurement:**

   * Load the image and convert it to grayscale.
   * Separate the object from the background using binarization.
   * Use MATLAB functions like `regionprops` and `imdistline` to calculate and measure the object’s diameter.
   * Optionally, convert measurements into pixels, centimeters, or meters.

2. **Image Filtering:**

   * Load and preprocess the image.
   * Choose a filter from options: grayscale, Gaussian blur, motion blur, or edge detection.
   * Apply the filter using `imfilter` or MATLAB built-in functions.
   * Display the original and filtered images using `imshow`.

## Features

* Interactive menu for selecting image processing options.
* Multiple image filters:

  * Grayscale conversion
  * Gaussian blur
  * Motion blur
  * Edge detection (Canny, Prewitt, Sobel, Roberts)
* Object diameter measurement with unit conversion.
* Display results using subplots for easy comparison.

## Conclusion

This project provides a **simple yet interactive way to explore image processing** using MATLAB. Users can both analyze images by applying filters and measure objects accurately, making it suitable for educational purposes or introductory computer vision experiments.

---
