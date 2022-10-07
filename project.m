clc;
clear all;
 i=imread('c1.png');
 figure;
 imshow(i);
 I = rgb2gray(i);
 bw=edge(I,'approxcanny')
 figure;
 imshow(bw);

i = imread('c2.jpg');
x=255-i;
figure
imshow(x);
 figure;
 imshow(i);
 title('original image');
 
 I=rgb2gray(i);
 figure;
 imshow(I);
 [~, threshold] = edge(I, 'sobel')
 fudgeFactor = .5;
 BWs = edge(I,'sobel', threshold * fudgeFactor);
 figure, imshow(BWs), title('binary gradient mask')
 
 se90 = strel('line', 3, 90);
 se0 = strel('line', 3, 0);
 BWsdil = imdilate(BWs, [se90 se0]);
 figure, imshow(BWsdil), title('dilated gradient mask');

 BWdfill = imfill(BWsdil, 'holes');
  figure, imshow(BWdfill);
  title('binary image with filled holes');
 
 BWoutline = bwperim(BWdfill);
 Segout = i; 
 Segout(BWoutline) = 0; 
 figure, imshow(Segout), title('outlined original image');


 



