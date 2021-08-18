PO=paddedsize(size(f));
DO=0.05*PQ(1);
H=hpfilter('gaussian',PQ(1),PQ(2),DO);
g=dftfilt(f,H);
figure,imshow(g)