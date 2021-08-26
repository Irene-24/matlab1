addpath('./utils');
r1 = imnoise2 ( 'gaussian' , 100000 , 1 , 0 , 1 ) ;
r2 = imnoise2 ( 'uniform' , 100000 , 1 , 0 , 1 ) ;
r3 = imnoise2 ( 'salt & pepper' , 100000 , 1 , 0 , 1 ) ;
r4 = imnoise2 ( 'rayleigh' , 100000 , 1 , 0 , 1 ) ;
r5 = imnoise2 ( 'lognormal' , 100000 , 1 , 0 , 1 ) ;
r6 = imnoise2 ( 'exponential' , 100000 , 1 ,1 ) ;
r7 = imnoise2 ( 'erlang' , 100000 , 1 , 1 , 1 ) ;
bins=50;

subplot(4,2,1); histogram(r1,bins); title("Gaussian");
subplot(4,2,2); histogram(r2,bins); title("Uniform");
subplot(4,2,3); histogram(r3,bins); title("Salt&Pepper");
subplot(4,2,4); histogram(r4,bins); title("Rayleigh");
subplot(4,2,5); histogram(r5,bins); title("Lognormal");
subplot(4,2,6); histogram(r6,bins); title("Exponential");
subplot(4,2,[7 8]); histogram(r7,bins); title("Erlang");