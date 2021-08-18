f = imread(".\images\skeleton.jpg");
b = 25;
h = imhist(f,b);
p = imhist(f,b)/numel(f);
horz = linspace( 0,255,25 ) ;

%imhist(f)
%bar(horz, h);

%{stem(horz, h, 'fill');




hc = imhist(f);

plot(hc)

axis([0 255 0 60000]);
set(gca, 'xtick', 0:50:255);
set(gca, 'ytick', 0:20000:60000);