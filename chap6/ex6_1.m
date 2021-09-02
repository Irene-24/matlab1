%(x,y)=T[(w,z)]=(3w,2z)
%(w,z)=Tinv[(x,y)]=(x/3,y/2)
forward_fcn = @( wz , tdata ) [ 3*wz(:,1 ), 2*wz(: , 2 ) ]
inverse_fcn = @( xy , tdata ) [ xy( : , 1 )/3 , xy( : , 2 )/2 ]

tform1 = maketform ( 'custom ' , 2 , 2 , forward_fcn ,inverse_fcn , [ ] )

WZ = [ 1 1 ; 3 2 ] ;
XY =  tformfwd (WZ , tform1 )
WZ2 = tforminv ( XY , tform1 )