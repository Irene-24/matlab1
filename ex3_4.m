f = imread(".\images\skeleton.jpg");
b = 25;
h = imhist(f,b);
p = imhist(f,b)/numel(f);
horz = linspace( 0,255,25 ) ;

%imhist(f)
figure, bar(horz, h) %bar chart rep
figure, stem(horz, h, 'fill'); 




hc = imhist(f);

figure, plot(hc)

axis([0 255 0 60000]);
set(gca, 'xtick', 0:50:255);
set(gca, 'ytick', 0:20000:60000);

%areas such as
%enhancement, compression, segmentation, and description. The focus of this
%section is on obtaining, plotting, and using histograms for image enhancement.