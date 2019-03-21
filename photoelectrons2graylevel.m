function [gray_level] = photoelectrons2graylevel(number_of_electrons,fw,bit_level)

 

 

% number_of_electrons=number_of_photons*qe/100;

gray_level=number_of_electrons*(2^bit_level-1)/fw;



