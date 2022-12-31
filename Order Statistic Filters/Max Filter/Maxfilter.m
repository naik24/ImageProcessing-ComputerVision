clc;
clear all;
close all;
S=input('enter the odd value of filter size');                              % Size of the window
A= imread('maxfilter.tif');                                                 %Test Image
B = padarray(A,[fix(S/2),fix(S/2)]);                                        %Padding the test image
[m,n] = size(B);                                                            %Size of the padded image
O2 = zeros(m,n); 
for i=1+fix(S/2):m-fix(S/2)                                                 %Working of the loop
    for j=1+fix(S/2):n-fix(S/2)
        max=0;
        for k=i-fix(S/2):i+fix(S/2)
            for l=j-fix(S/2):j+fix(S/2)
                if B(k,l)>max
                    max=B(k,l);
                end
            end
        end
        O2(i,j)=max; 
    end
end     
Omax=uint8(O2);                                                             %Converting the output image into uint8 format
figure(1)                                                                   %Displaying the result
subplot(1,3,1), imshow('Original.tif'), xlabel('Original');
subplot(1,3,2), imshow('maxfilter.tif'), xlabel('Noisy Image');
subplot(1,3,3), imshow(Omax), xlabel('max filter image');

