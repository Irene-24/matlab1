f=imread(".\images\ns.jpg");

[M,N]=size(f);
%[f,revertclass]=im2double(f);
F=fft2(f);
sig=10;
H=lpfilter('gaussian',M,N,sig);
G=H.*F;
g=ifft2(G);
g=revertclass(g);
imgshow(g);

PQ=paddedsize(size(f));
Fp=fft2(f,PQ(1),PQ2));
Hp=lpfilter('gaussian',PQ(1),PQ(2),2*sig);
Gp=Hp.*Fp;
gp=ifft2(Gp);
gpc=gp(1:size(f,1),1:size(f,2));
gpc=revertclass(gpc);
imshow(gp)

h=fspecial('gaussian',15,7);
gs=imfilter(f,h);