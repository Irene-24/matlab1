addpath('./utils');

original = imread("./images/desk.jpg");
%turn image to grayscale

f = rgb2gray(original);

g = imnoise ( f , 'salt & pepper' , 0.25 ) ;
f1 = medfilt2 ( g , [7 7] , 'symmetric' ) ;
f2 = adpmedian ( g , 7 ) ;

subplot(2,2,1); imshow(f); title("Grey Scale");
subplot(2,2,2);imshow(g);title("Noisy S&P");
subplot(2,2,3); imshow(f1);title("Not so good");
subplot(2,2,4);imshow(f2);title("Better");
