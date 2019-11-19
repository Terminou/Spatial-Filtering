function result = unsharp_mask(inputImg)

%Apply smoothing to produce a blurred version of the original image
%figure, imshow(inputImg), title('Original Image');
smoothted = imgaussfilt(inputImg,1.5);
figure, imshow(smoothted), title('Blurred Image');

%Subtract the blurred image from the original image to produce an edge image
edgeImg = inputImg - smoothted;
figure, imshow(edgeImg), title('Edge Image');

%Add the edge image to the original image to produce a sharpened image
result = inputImg + edgeImg;
figure, imshow(result), title('Sharpened Image');

end

