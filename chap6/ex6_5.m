addpath('./utils');
T = [ -2.7390 0.2929 -0.6373;...
0.7426 -0.7500 0.8088;...
2.8750 0.7500 1.0000 ] ;

tform = maketform( 'projective' , T ) ;
vistform ( tform , pointgrid ( [ 0 0 ; 1 1 ] ) ) ;