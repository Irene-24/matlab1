f = imread(".\images\desk.jpg");
dir=".\images\manip\";

flipped1 = f(end:-1:1,:,1);
flipped2 = f(end:-1:1,:,2);
flipped3 = f(end:-1:1,:,3);
flipped = cat(3,flipped1,flipped2,flipped3); %combine all 3 to get colored

cropped1 = f(257 : 608 , 257 : 768,1);
cropped2 = f(257 : 608 , 257 : 768,2);
cropped3 = f(257 : 608 , 257 : 768,3);
cropped = cat(3,cropped1,cropped2,cropped3);

sub_samp1 = f(1:2:end,1:2:end,1);
sub_samp2 = f(1:2:end,1:2:end,2);
sub_samp3 = f(1:2:end,1:2:end,3);
sub_samp = cat(3,sub_samp1,sub_samp2,sub_samp3); %?combine all 3 to get colored

figure('Name','Original','NumberTitle','off'),
imshow(f),
figure('Name','Flipped','NumberTitle','off'),
imshow(flipped),
figure('Name','Cropped','NumberTitle','off'),
imshow(cropped),
figure('Name','Sub sampled','NumberTitle','off'),
imshow(sub_samp)


figure('Name','Horizonatl scaling (row = 685)','NumberTitle','off'),
subplot(1,3,1);
plot ( f ( 685 , :,1 ) ) %1x1200 vector of values
title('Red values')
xlabel('Column')
ylabel('Pixel value')

subplot(1,3,2);
plot ( f ( 685 , :,2 ) ) %1x1200 vector of values
title('Green values')
xlabel('Column')
ylabel('Pixel value')


subplot(1,3,3);
plot ( f ( 685 , :,3 ) ) %1x1200 vector of values
title('Blue values')
xlabel('Column')
ylabel('Pixel value')

