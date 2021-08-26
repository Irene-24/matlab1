addpath('./utils');
original = imread("./images/desk.jpg");
%turn image to grayscale

f = rgb2gray(original);

%pepper
[ M , N] = size ( f ) ;
R = imnoise2 ( 'salt & pepper' , M , N , 0.1 , 0 ) ;
gp = f ;
gp ( R == 0 ) = 0 ;  %turn pixel val to black ie pepper

%salt
R = imnoise2 ( 'salt & pepper' , M , N , 0 , 0.1 ) ;
gs = f ;
gs ( R == 1 ) = 255 ; %turn pixel val to white ie salt

fp = spfilt ( gp , 'chmean' , 3 , 3 , 1.5 ) ;
fs = spfilt ( gs , 'chmean' , 3 , 3 , -1.5 ) ;
fpmax=spfilt ( gp , 'max' , 3 , 3 ) ;
fsmin=spfilt ( gs , 'min' , 3 , 3 ) ;

figure
subplot(2,2,1); imshow(original); title("Original");
subplot(2,2,2);imshow(f);title("Grey Scale");
subplot(2,2,3); imshow(gp);title("Pepper");
subplot(2,2,4);imshow(gs);title("Salt");

figure,

subplot(2,2,1); imshow(fp); title("Filter P");
subplot(2,2,2);imshow(fs);title("Filter S");
subplot(2,2,3); imshow(fpmax);title("FPMax");
subplot(2,2,4); imshow(fsmin);title("FPmin");

