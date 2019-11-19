original = im2double(imread('peppers.png'));
kernel = 1/9 * [-1 -1 -1 ; -1 17 -1 ; -1 -1 -1];
output = im_filter(double(original),double(kernel));
output2 = imfilter(double(original),double(kernel));
% if output2 is equal to output, this means the function works properly