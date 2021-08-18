f = [1 2; 3 4]
g = mat2gray(f)
gb=im2bw(g,0.6)
gb2 = f > 2
gbd=im2double(gb)