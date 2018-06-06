function [p_value, D] = KSstat(cdf1, cdf2, N1, N2)
%KSstat gives a significance statement on given cdfs.
%   [p_value, D] = KSstat(cdf1, cdf2, N1, N2)

% Calculate max deviation
D = max(abs(cdf1 - cdf2));

% Adjust for sample size
C = D / sqrt((N1+N1)/N1/N2);

% p value
p_value = exp(-2 * C^2) * 2;
end

