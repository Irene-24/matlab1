f = imread(".\images\skeleton.jpg");

fn = imnoise(f, 'salt & pepper', 0.2);
gm = medfilt2(fn);
gms = medfilt2(fn,'symmetric');