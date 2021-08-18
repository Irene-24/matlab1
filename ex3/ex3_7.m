f = imread(".\images\skeleton.jpg");

%g1 = adapthisteq(f);

g2 = adapthisteq(f, 'NumTiles', [25, 25]);
% 'ClipLimit', 0.05
% 'NBins', 256
% 'Range', [0, 25]
% 'Distribution', 'uniform'
%'Alpha', 0.5

imshow(f);