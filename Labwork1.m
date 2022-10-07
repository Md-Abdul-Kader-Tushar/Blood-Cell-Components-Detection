clc;
clear all;
a = imread('pout.tif');
size(a)
color image
d=a-70;
e=a-120; 
ff(:,:,1)=a;
ff(:,:,2)=d;
ff(:,:,3)=e;


