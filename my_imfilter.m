function im_out = my_imfilter(im_in,h)
% im_out = my_imfilter(im_in,h)
% correlation of the input image im_in with the kernel h
% im_in and h are of double precision
% To be done: implementation of correlation

inputSize = size(im_in);
inputNrRows = inputSize(1);
inputNrCols = inputSize(2);
kernelSize = size(h);
kernelNrRows = kernelSize(1);
kernelNrCols = kernelSize(2);
padRows = kernelNrRows-1;
padCols = kernelNrCols-1;
im_out = zeros(inputSize);
if(kernelNrRows == 1)
    temp = zeros(inputNrRows, inputNrCols + padCols);
    m = 0;
    n = floor(kernelNrCols/2);
    tempSize = size(temp);
    tempNrRows = tempSize(1);
    tempNrCols = tempSize(2) - padCols;
elseif(kernelNrCols == 1)
    temp = zeros(inputNrRows + padRows, inputNrCols);
    m = floor(kernelNrRows/2);
    n = 0;
    tempSize = size(temp);
    tempNrRows = tempSize(1) - padRows;
    tempNrCols = tempSize(2);
else
    temp =zeros(inputNrRows + padRows, inputNrCols + padCols);
    m = floor(kernelNrRows/2);
    n = floor(kernelNrCols/2);
    tempSize = size(temp);
    tempNrRows = tempSize(1) - padRows;
    tempNrCols = tempSize(2) - padCols;
end

%correlation operation
 for i = 1:inputNrRows
     for j = 1:inputNrCols
         temp(i+m , j+n) = im_in(i,j);
     end
 end

for i=1:tempNrRows
    for j=1:tempNrCols
        sum=0;
        m=i;
        n=j;
        for x=1:kernelNrRows
          for y=1:kernelNrCols
       %The weighted sum of the neighborhood pixels is calculated.
               sum = sum + (temp(m,n) * h(x,y));
               n = n + 1;                    
          end
            n = j;
            m = m + 1;
        end
        im_out(i,j)= sum;
    end
end
end