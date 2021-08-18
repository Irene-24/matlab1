a = [1 2; 3 4];
b = [1 2; 2 1];

[w, wmax, wmin] = imblend(a,b);

function [w, wmax, wmin] = imblend(f,g)
w1 = 0.5 * f;
w2 = 0.5 * g;
w = w1 + w2;

wmax = max(w(:));
wmin = min(w(:));
disp(w)
disp(wmax)
disp(wmin)
end

% Imblend function adds two images