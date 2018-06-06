function [output, D] = KSstat(cdf1, cdf2, N1, N2)
%KSstat gives a significance statement on given cdfs.
%   [output, D] = KSstat(cdf1, cdf2, N1, N2)

% Significance thresholds for different alpha values (0.05, 0.01, 0.001)
thresh = [1.36, 1.63, 1.95];

% Adjust for sample size
thresh2 = thresh * sqrt((N1+N1)/N1/N2);

% Calculate D
D = max(abs(cdf1 - cdf2));

% Output
if D > thresh2(3)
    output = 'p < 0.001';
elseif D > thresh2(2)
    output = 'p < 0.01';
elseif D > thresh2(1)
    output = 'p < 0.05';
else
    output = 'not significant';
end
end

