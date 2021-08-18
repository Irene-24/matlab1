f = imread(".\images\skeleton.jpg");

w4 = fspecial('laplacian', 0);
w8 = [1 1 1; 1 -8 1; 1 1 1];
%f = tofloat(f);

g4 = f - imfilter(f, w4, 'replicate');
g8 = f - imfilter(f, w8, 'replicate');
imshow(f);
figure, imshow(g4);
figure, imshow(g8);

g = ordfilt2(f, 1, ones(m,n));
%g = ordfilt2(f, m*n, ones(m, n));
%g = ordfilt2(f,( m*n + 1)/2, ones(m,n));
%g = medfilt2 (f, [m n], padopt);
%g = medfilt2(f);