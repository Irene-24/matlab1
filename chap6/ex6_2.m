addpath('./utils');
%(x,y)=T[(w,z)]=(3w,2z)
%(w,z)=Tinv[(x,y)]=(x/3,y/2)
forward_fcn = @( wz , tdata ) [ 3*wz(:,1 ), 2*wz(: , 2 ) ];
inverse_fcn = @( xy , tdata ) [ xy( : , 1 )/3 , xy( : , 2 )/2 ];

%(x, y) = T[(w, z)] = (w + 0.4z, z)
%(w, z) = Tinv[(x, y)]= (x - 0.4y, y)
forward_fcn2 = @( wz , tdata ) [ wz(: , 1 ) + 0.4*wz( : , 2 ) ,wz( : , 2 ) ];
inverse_fcn2 = @( xy , tdata )[ xy( : , 1 ) - 0.4*xy( : , 2 ) ,xy( : , 2 ) ] ;

tform1 = maketform ( 'custom ' , 2 , 2 , forward_fcn ,inverse_fcn , [ ] );
tform2 = maketform ( 'custom ' , 2 , 2 , forward_fcn2 ,inverse_fcn2 , [ ] );

figure , vistform(tform1 , pointgrid( [ 0 0 ; 100 100 ] ) )
figure , vistform( tform2 , pointgrid ( [ 0 0 ; 100 100 ] ) )