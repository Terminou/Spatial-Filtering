img = imread('boy.png');
imshow(img), title('Original Image');


h = ones(7,7) / 49; %kernel weights are normalized to sum to one
h1 = ones(15,15) / 225; %kernel weights are normalized to sum to one

% averaging filter using correlation 7x7
avgCorr = imfilter(img,h);
figure, imshow(avgCorr), title('Filtered Image (Averaging Correlation 7x7)')

% averaging filter using correlation 15x15
avgCorr = imfilter(img,h1);
figure, imshow(avgCorr), title('Filtered Image (Averaging Correlation 15x15)')

% averaging filter using convolution 7x7
%avgConv = imfilter(img,h,'conv');
%figure, imshow(avgConv), title('Filtered Image (Averaging Convolution 7x7)')

% averaging filter using convolution 15x15
%avgConv = imfilter(img,h1,'conv');
%figure, imshow(avgConv), title('Filtered Image (Averaging Convolution 15x15)')

 
% Gaussian filter using 7x7 (sigma = 1.5)
gauss = fspecial('gaussian',[7,7], 1.5);
gaussFilter = imfilter(img, gauss);
figure, imshow(gaussFilter), title('Filtered Image (Gaussian 7x7 sigma = 1.5)');

% Gaussian filter using 15x15 (sigma = 3.5)
gauss = fspecial('gaussian',[15,15], 3.5);
gaussFilter = imfilter(img, gauss);
figure, imshow(gaussFilter), title('Filtered Image (Gaussian 15x15 sigma = 3.5)');

