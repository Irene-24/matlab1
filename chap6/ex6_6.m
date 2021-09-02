addpath('./utils');
f = checkerboard(50) ;
sx = 0.75 ;
sy = 1.25 ;

T = [ sx 0 0;
0 sy 0;
0 0 1 ] ;
t1 =  maketform( 'affine' , T ) ;
g1 =  imtransform( f , t1 ) ;

theta = pi / 6 ;
T2 = [ cos(theta) sin(theta) 0 ;
-sin(theta) cos(theta) 0;
0 0 1 ] ;
t2 = maketform( 'affine' , T2 ) ;
g2  = imtransform( f , t2 ) ;

T3 = [ 0.4788 0.0135 -0.0009;
0.0135 0.4788 -0.0009;
0.5059 0.5059 1.0000 ] ;
tform3 = maketform ( 'projective' , T3 ) ;
g3 = imtransform( f , tform3 ) ;

subplot(2,2,1); imshow(f); title("Original");
subplot(2,2,2);imshow(g1);title("Scale");
subplot(2,2,3); imshow(g2);title("Rotate");
subplot(2,2,4); imshow(g3);title("Projection");