f=imread(".\images\ns.jpg");

F = fft2 ( f ) ;
S = abs ( F ) ;
imshow ( S , [ ] )