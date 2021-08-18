[MNJ=size(f);
[f,revertclass]tofloat(f);
F=fft2(f)i
S=gscale(log(1+abs(fftshift(F))));%Spectrum
imshow(S)
%Usefunctionimtooltoobtainthecoordinatesofthe
%spikesinteractively.
C1=[99154;128163];
%Notchfilter:
H1=cnotch('gaussian','reject',M,N,C1,5);
%Computespectrumofthefilteredtransformandshowitas
%animage.
P1=gscale(fftshift(H1).*(tofloat(S)));
figure,imshow(P1)
%Filterimage.
g1=dftfilt(f,H1);
g1=revertclass(g1);
figure,imshow(g1)
%RepeatwiththefollowingC2toreducethehigher
%frequencyinterferencecomponents.
C2=[99154;128163;49160;133233;55132;108225;11274];
H2=cnotch('gaussian','reject',M,N,C2,5);
%Computethespectrumofthefilteredtransformandshow
%itasanimage.
P2=gscale(fftshift(H2).*(tofloat(S)));
figure,imshow(P2)
%Filterimage.
g2=dftfilt(f,H2);
g2=revertclass(g2