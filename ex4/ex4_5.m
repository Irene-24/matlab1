%H=fftshift(lpfilter('gaussian',500,500,50));
%mesh(double(H(1:10:500,1:10:500));
%axistight
%colormap([000])
%axisoff
%view(-25,30)
%view(-25,0)
%surf(H)
%colormap(gray)

H=fftshift(lpfilter('gaussian',500,500,50));
surf(double(H(1:10:500,1:10:500)))
axistight
colormap(gray)
axisoff