img = imread('boy.png');
figure, imshow(img), title('Original Image');

% corrupt image with salt & pepper noise
saltpepper = imnoise(img,'salt & pepper',0.3);
figure, imshow(saltpepper), title('Noisy Image (30%)');

saltpepper2 = imnoise(img,'salt & pepper',0.5);
figure, imshow(saltpepper2), title('Noisy Image (50%)');

% apply median filtering to corrupted images
medfilt30x7 = medfilt2(saltpepper,[7 7]);
figure, imshow(medfilt30x7), title('Applied Median Filtering to Noisy Image 30% (7x7)');

medfilt30x15 = medfilt2(saltpepper,[15 15]);
figure, imshow(medfilt30x15), title('Applied Median Filtering to Noisy Image 30% (15x15)');

medfilt50x7 = medfilt2(saltpepper2,[7 7]);
figure, imshow(medfilt50x7), title('Applied Median Filtering to Noisy Image 50% (7x7)');

medfilt50x15 = medfilt2(saltpepper2,[15 15]);
figure, imshow(medfilt50x15), title('Applied Median Filtering to Noisy Image 50%(15x15)');

% averaging filtering to corrupted image
avg = fspecial('average',[7 7]);
avgFiltered = imfilter(saltpepper, avg);
figure, imshow(avgFiltered), title('Applied Average Filtering to Noisy Image 30% (7x7)');

avg = fspecial('average',[7 7]);
avgFiltered = imfilter(saltpepper2, avg);
figure, imshow(avgFiltered), title('Applied Average Filtering to Noisy Image 50% (7x7)');

avg = fspecial('average',[15 15]);
avgFiltered = imfilter(saltpepper, avg);
figure, imshow(avgFiltered), title('Applied Average Filtering to Noisy Image 30% (15x15)');

avg = fspecial('average',[15 15]);
avgFiltered = imfilter(saltpepper2, avg);
figure, imshow(avgFiltered), title('Applied Average Filtering to Noisy Image 50% (15x15)');
