f = imread(".\images\skeleton.jpg");

% imshow(f);
% imhist(f);
%ylim('auto');


g = histeq(f, 256);
%imshow(g);
%imhist(g);
%ylim('auto');


hnorm = imhist(f)./numel(f);
cdf = cumsum(hnorm);
x = linspace(0, 1, 256);

plot(x, cdf);
axis([0 1 0 1]);
set(gca, 'xtick', 0:.2:1);
set(gca, 'ytick', 0:.2:1);
xlabel('Input intensity values', 'fontsize', 9);
ylabel('Output intensity values', 'fontsize', 9);