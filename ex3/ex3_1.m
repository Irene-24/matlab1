f = imread(".\images\mammogram.jpeg");
g1 = imadjust( f, [0 1], [1 0] ) ;
g2 = imadjust( f, [0.5 0.75 ], [ 0 1 ] ) ;
g3 = imadjust( f , [ ] , [ ] , 2 ) ;
g4 = imadjust( f , stretchlim( f ) , [ ] ) ; %use image values to determine input range with stretchlim
g5 = imadjust( f , stretchlim( f ) , [1 0] ) ;

figure('Name','Original','NumberTitle','off'),
imshow(f),
figure('Name','0-1 1-0 mapping','NumberTitle','off'),
imshow(g1),
figure('Name','0.5-0.75 0-1 mapping','NumberTitle','off'),
imshow(g2),
figure('Name','Full range mapping','NumberTitle','off'),
imshow(g3),
figure('Name','Stretchlim','NumberTitle','off'),
imshow(g4),
figure('Name','Stretchlim 2','NumberTitle','off'),
imshow(g5),