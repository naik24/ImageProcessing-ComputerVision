clc; clear all; close all;
A2=imread('minfilter.tif');                                                 %Test Image
W=input('Enter the size of the window');                                    %Window Size

B2=padarray(A2,[1 1]);                                                      %Padding the test image
[m, n]=size(B2);
O2=zeros(m,n);                                                              %Output Image
    
for i=1:m-(W-1)
    for j=1:n-(W-1)
        C2=[B2(i:i+(W-1),j:j+(W-1))];                                       %Pixels in WxW Window
        D2=C2(:)';                                                          %2D Matrix to 1D Matrix 
        [x,y]= size(D2);
        for p=1:y-1                                                         %Sorting algorithm
            for q=1:y-1
                if D2(q) > D2(q+1)
                    temp= D2(q+1);
                    D2(q+1)=D2(q);
                    D2(q)=temp;
                end
            end
        end        
        O2(i,j)=D2(1);                                                      %Assigning min value to the pixel at (i,j)
    end
end
Omin=uint8(O2);                                                             %Converting image to uint8 format
figure(1)                                                                   %Displaying Images
subplot(1,3,1); imshow('Original.tif'); title('Original Image');
subplot(1,3,2); imshow('minfilter.tif'); title('Noisy Image');
subplot(1,3,3); imshow(Omin); title('Filtered Image using Min Filter');
