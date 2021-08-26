%Periodic noise
addpath('./utils');
C = [ 0 64 ; 0 128 ; 32 32 ; 64 0 ; 128 0 ; -32 32 ] ;
[ r , R , S ] = imnoise3 ( 512 , 512 , C ) ;
imshow ( S , [ ] )
figure , imshow ( r , [ ] )