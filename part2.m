kernel = imread('smile.png');
input = imread('emoji.png');
figure, imshow(kernel), title('Kernel Image');
figure, imshow(input), title('Input Image');

%result = imfilter(double(input),double(kernel))

result = my_imfilter(double(input),double(kernel));
figure, imshow(result,[]), title('Resulted Image');


