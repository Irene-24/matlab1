path = ".\images\qualities\q_25.jpg";
path2 = ".\images\qualities\q_25_2.tif";
k = imfinfo(path);
image_bytes = k.Width*k.Height*k.BitDepth/8;
compressed_bytes = k.FileSize;
compression_ratio = image_bytes/compressed_bytes;
res =20;
imwrite(imread(path),path2,"compression","packbits","resolution",res);
