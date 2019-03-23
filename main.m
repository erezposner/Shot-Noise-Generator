close all,clear all,clc
%% Define FullWell and sensor Resolution
fw = 50;
bit_level = 8;
%% Load input image and allocate output image
im = double((imread('capitol.jpg')));
[h,w,dim] = size(im);
noisy_image = im;
for u = 1:h
    for v = round(w/2):w
        for d = 1:dim
            photo_electrons_number= graylevel2photoelectrons(im(u,v,d),fw,bit_level );
            new_photo_electrons_number=custome_poissrnd(photo_electrons_number);
            noisy_image(u,v,d) = photoelectrons2graylevel(new_photo_electrons_number,fw,bit_level);
        end
    end
end
%% Plot Noise montage
figure; imshow(uint8(noisy_image)); colormap gray; axis equal
title('Left - clean image ; Right - Noisy Image')