f = checkerboard ( 8 ) ;
PSF = fspecial ( 'motion' , 7 , -45 ) ; %degradation model (blur)
gb = imfilter ( f , PSF , 'circular' ) ; %apply blur
noise =  imnoise2 ( 'gaussian' , size ( f , 1 ) , size ( f , 2 ) , 0.01 , sqrt ( 0.02 ) ) ;
g = gb + noise ;

frest1 = deconvwnr( g , PSF ) ; %inverse filtering

%Wiener filtering using a constant ratio. 
Sn =  abs ( fft2 ( noise ) ).^2 ; % noise power spectrum
nA = sum ( Sn ( : ) )/numel( noise ) ; % noise average power
Sf = abs ( fft2 ( f ) ).^2 ; % image power spectrum
fA = sum ( Sf ( : ) ) / numel( f ) ; % image average powe r .
R = nA/ fA ;
frest2 = deconvwnr ( g , PSF , R ) ;

%autocorrelation
NCORR = fftshift ( real ( ifft2 ( Sn ) ) ) ;
ICORR = fftshift ( real ( ifft2 ( Sf ) ) ) ;
frest3 = deconvwnr ( g , PSF , NCORR , ICORR ) ;

figure
subplot(2,2,1); imshow(f); title("Image");
subplot(2,2,2);imshow(gb);title("Blurred Image");
subplot(2,2,3); imshow(noise); title("Noise");
subplot(2,2,4);imshow(g);title("Blurred + Noise Image");

figure
subplot(2,2,1); imshow(frest1); title("Restored Image");
subplot(2,2,2); imshow(frest2); title("Restored Image 2");
subplot(2,2,3); imshow(frest3); title("Restored Image 3");

