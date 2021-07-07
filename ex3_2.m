f = imread(".\images\mammogram.jpeg");
g = im2uint8 ( mat2gray ( log ( 1 + double ( f ) ) ) ) ;

figure('Name','Original','NumberTitle','off'),
imshow(f),
figure('Name','Im','NumberTitle','off'),
imshow(g),