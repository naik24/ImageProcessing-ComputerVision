clc; clear all; close all;

testimage=imread('medianfilter.tif');                                       %Test Image
W=input('Enter the size of the window');                                    %Window Size
                                                                            
paddedarray=padarray(testimage,[1,1],'both');                               %Padding Image
[m, n]=size(paddedarray);
output=zeros(m,n);                                                          %Output Image                                    

for i=1:m-(W-1)
    for j=1:n-(W-1)
        C3=paddedarray(i:i+(W-1),j:j+(W-1));                                %Pixel Values in the Window
        D3=C3(:)';
        [x,y]=size(D3);
        for p=1:y-1                                                         %Sorting Algorithm
            for q=1:y-1
                if D3(q) > D3(q+1)
                    temp= D3(q+1);
                    D3(q+1)=D3(q);
                    D3(q)=temp;
                end
            end
        end        
        p=round((x+y)/2);
        if mod(W,2) == 0                                                    %Calculating the median
            output(i,j)=D3(p+1);
        else
            output(i,j)=D3(p);
        end
    end
end
    
Omed=uint8(output);                                                         %Converting the image into uint8 format
figure(1)                                                                   %Displaying the result
subplot(1,3,1); imshow('Original.tif'); title('Original Image');
subplot(1,3,2); imshow('medianfilter.tif'); title('Noisy Image');
subplot(1,3,3); imshow(Omed); title('Median Filter Output');
