f=imread(".\images\skeleton.jpg");

F=fft2(f);

S=abs(F);

imshow(S);

