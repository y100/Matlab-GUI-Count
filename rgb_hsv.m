clc;
clear;
close all;

% read the original image
[Filename,Pathname] = uigetfile('*.*');
name = strcat(Pathname,Filename);
I = imread(name);

% call createMask function to get the mask and the filtered image
[BW,maskedRGBImage] = createMask(I);

% plot the original image, mask and filtered image all in one figure
subplot(1,3,1);imshow(I);title('Original Image');
subplot(1,3,2);imshow(BW);title('Mask');
subplot(1,3,3);imshow(maskedRGBImage);title('Filtered Image');

cc = bwconncomp(BW);
disp('Number of Object Detected = ');
disp(cc.NumObjects);