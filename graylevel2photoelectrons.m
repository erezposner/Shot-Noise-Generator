function [number_of_electrons] = graylevel2photoelectrons(gray_level,fw,bit_level)

number_of_electrons = gray_level*fw/(2^bit_level-1);

% number_of_photons = number_of_electrons*100/qe;





