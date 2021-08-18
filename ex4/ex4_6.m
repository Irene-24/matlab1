H=fftshift(hpfilter('ideal',500,500,50));
mesh(double(H(1:10:500)));
axistight;
colormap([000]);
axisoff;

figure,imshow(H,[]);
