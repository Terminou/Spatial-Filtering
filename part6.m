input_img=imread('baboon.png');
patch = imcrop(input_img,[150, 35, 50 50]);
imshow(patch);
imwrite(patch,'patch.png');
patchVar = std2(patch)^2;
disp(patchVar);

DoS = 2*patchVar;
bilateraled = imbilatfilt(input_img,DoS);
%J = imbilatfilt(input_img,degreeOfSmoothing,spatialSigma);

%degreeOfSmoothing is fixed and is 1
bilateraled1x10 = imbilatfilt(input_img, DoS, 10); 
%figure, imshow(bilateraled), title('degreeOfSmoothing = 1, spatialSigma = 10');

bilateraled1x30 = imbilatfilt(input_img, DoS, 30); 
%figure, imshow(bilateraled), title('degreeOfSmoothing = 1, spatialSigma = 30');

bilateraled1x100 = imbilatfilt(input_img, DoS, 100); 
%figure, imshow(bilateraled), title('degreeOfSmoothing = 1, spatialSigma = 100');

%degreeOfSmoothing is fixed and is 3
bilateraled3x10 = imbilatfilt(input_img, 3*DoS, 10); 
%figure, imshow(bilateraled), title('degreeOfSmoothing = 3, spatialSigma = 10');

bilateraled3x30 = imbilatfilt(input_img, 3*DoS, 30); 
%figure, imshow(bilateraled), title('degreeOfSmoothing = 3, spatialSigma = 30');

bilateraled3x100 = imbilatfilt(input_img, 3*DoS, 100); 
%figure, imshow(bilateraled), title('degreeOfSmoothing = 3, spatialSigma = 100');

% degreeOfSmoothing is fixed and is 10
bilateraled10x10 = imbilatfilt(input_img, 10*DoS, 10); 
%figure, imshow(bilateraled), title('degreeOfSmoothing = 10, spatialSigma = 10');

bilateraled10x30 = imbilatfilt(input_img, 10*DoS, 30); 
%figure, imshow(bilateraled), title('degreeOfSmoothing = 10, spatialSigma = 30');

bilateraled10x100 = imbilatfilt(input_img, 10*DoS, 100); 
%figure, imshow(bilateraled), title('degreeOfSmoothing = 10, spatialSigma = 100');

montage({bilateraled1x10,bilateraled1x30,bilateraled1x100,bilateraled3x10,bilateraled3x30,bilateraled3x100,bilateraled10x10,bilateraled10x30,bilateraled10x100});
