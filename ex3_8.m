f = imread(".\images\desk.jpg");
w = fspecial('motion', 50, 45);
% g = imfilter ( f , w, filtering_mode , boundary_options , size_options)

%w = ones(31);
% g = imfilter(f, w, 'replicate');
% g = imfilter(f, w, 'conv', 'replicate');
%g = imfilter(f, rot90(w, 2), 'replicate');
%imshow(g);

gd = imfilter(f, w);
% imshow(gd, [ ]);

gr = imfilter(f, w, 'replicate');
%figure, imshow(gr, [ ]);

gs = imfilter(f, w, 'symmetric');
%figure, imshow(gs, [ ]);

gc = imfilter(f, w, 'circular');
%figure, imshow(gc, [ ])

f8 = im2uint8(f);
g8r = imfilter(f8, w, 'replicate');
%figure, imshow(g8r, [ ]);

