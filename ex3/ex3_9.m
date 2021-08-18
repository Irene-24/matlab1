f = imread(".\images\skeleton.jpg");


%g = colfilt(f, [m n], 'sliding', fun);

fp = padarray(f, [3, 2], 'replicate', 'post');

disp(fp);