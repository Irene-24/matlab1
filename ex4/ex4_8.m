PO = paddedsize(size(f));
DO = 0.05*PQ(1);
HBW = hpfilter('btw',PQ(1),PQ(2),DO,2);
H = 0.5+2*HBW;
gbw = dftfilt(f,HBW,'fltpoint');
gbw = gscale(gbw);
ghf = dftfilt(flH,'fltpoint');
ghf = gscale(ghf);
ghe = histeq(ghf,256);