f = imread(".\images\skeleton.jpg");

f1 = histeq(f, 256);


repeats = true;
quitnow = 'x';

%while repeats
%    s = input ( ' Enter m1, sig1 , m2 , sig2 , A1 , A2 , k OR x to quit:' ,'s');
%    if strcmp(s,quitnow)
%        break;
%    end
%    v = str2double(s);
    
%    if numel(v) == 7
%        disp('incorrect number of inputs.');
%        continue
%    end
    
%    p = twomodegauss(v(1), v(2), v(3), v(4), v(5), v(6), v(7));
%    figure, plot(0);
%    xlim([0 255]);
%end

p = twomodegauss (0.15 , 0.05, 0.75, 0.05, 1 , 0.07, 0.002);
figure, plot(0);
%xlim([0 255]);
function p = twomodegauss(m1, sig1, m2, sig2, A1, A2, k)
    c1 = A1 * (1/ ((2 * pi) ^ 0.5) * sig1);
    k1 = 2 * (sig1 ^ 2);
    c2 = A2 * (1/ ((2 * pi) ^ 0.5) * sig2);
    k2 = 2 * (sig2 ^ 2); 
    z = linspace(0, 1, 256);

    p = k + c1 * exp(-((z -m1) .^ 2) ./ k1) + c2 * exp(-((z - m2) .^ 2) ./ k2);
    %p = p ./sum(p(:));
end