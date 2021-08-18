f=imread(".\images\skeleton.jpg");

[f,revertclass]=tofloat(f);
[f,revertclass]=tofloat(f);
PO=paddedsize(size(f));
[U,V]=dftuv(PQ(1),PQ(2));
D=hypot(U,V);
DO=0.05*PQ(2);
F=fft2(f,PQ(1),PQ(2));%Neededforthespectrum.
H=exp(-(D.A2)/(2*(DOA2)));
g=dftfilt(f,H);
g=revertclass(g);

figure,imshow(fftshift(H));

figure,imshow(log(1+abs(fftshift(F))),[]);
figure,imshow(g);

mesh(H(1:k:end,1:k:end));
colormap([000]);
view(az,el);
