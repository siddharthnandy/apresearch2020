clear all;
close all;

%% Load images
female_face = imread("FNES.JPG");
male_face = imread("MNES.JPG");

%% Average images
avg_face = (female_face + male_face) / 2;

%% Crop image
% Make sure to check dimensions
avg_crop = avg_face(140:762-111,26:562-25);

%% See image

imshow(avg_crop)

%% Save image

imwrite(avg_crop, "base.jpeg");