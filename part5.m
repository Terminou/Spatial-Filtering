%Apply smoothing to produce a blurred version of the original image
inputImage = imread('boy.png');
outputImage = unsharp_mask(inputImage);
figure, imshow(inputImage), title('Original Image');
figure, imshow(outputImage), title('Sharpened Image');

