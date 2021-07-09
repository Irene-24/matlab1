f = imread(".\images\skeleton.jpg");

% => w = fspecial('type', parameters);
% => 'average', 'disk', 'gaussian', 'laplacian', 'log', 'motion', prewitt',
% => 'sobel', 'unsharp'


% w = fspecial('laplacian', 0);
w = [0 1 0; 1 -4, 1; 0 1 0];
disp(w);

g1 = imfilter(f, w, 'replicate');
%imshow(g1, [ ]);

%f2 = tofloat(f);
%g2 = imfilter(f2, w, 'replicate');


imshow(g2, [ ]);

%g = f2 - g2;
%imshow(g);