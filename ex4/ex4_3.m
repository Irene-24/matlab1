f=imread(".\images\ns.jpg");

F=fft2(f);

S=abs(F);

imshow(S);


f=im2double(f);
F=fft2(f);
S=fftshift(log(1+abs(F)));
imshow(S,[]);

h=fspecial('sobel');
%disp(h);
%disp(freqz2(h));

PQ=paddedsize(size(f));
H=freqz2(h,PQ(1),PQ(2));
H1=ifftshift(H);

imshow(abs(H),[]);
figure,imshow(abs(H1),[]);

gs=imfilter(f,h);

gf=dftfilt(f,H1);

imshow(gs,[]);
figure,imshow(gf,[]);
figure,imshow(abs(gf),[]);
figure,imshow(abs(gf),[]);

figure,imshow(abs(gf)>0.2*abs(max(gs(:))));
figure,imshow(abs(gf)>0.2*abs(max(gf(:))));

d=abs(gs-gf);
disp(max(d(:)));
disp(min(d(:)));


[U,V]=dftuv(8,5);
DSQ=U.^2+V.^2;
disp(DSQ)
disp(fftshift(DSQ)
