close all,clear all,clc
%% Define FullWell and sensor Resolution
fw = 200;
bit_level = 8;
%% Load input image and allocate output image
im = double(rgb2gray(imread('capitol.jpg')));
[h,w] = size(im);
noisy_image = im;
for u = 1:h
    for v = round(w/2):w
        photo_electrons_number= graylevel2photoelectrons(im(u,v),fw,bit_level );
        new_photo_electrons_number=custome_poissrnd(photo_electrons_number);
        noisy_image(u,v) = photoelectrons2graylevel(new_photo_electrons_number,fw,bit_level);
    end
end

%% Plot Noise montage
figure; imagesc((noisy_image)); colormap gray; axis equal
