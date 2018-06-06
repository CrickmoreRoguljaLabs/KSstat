# KSstat
A function to perform KS stat on two cdfs
by Stephen Zhang

Note: MATLAB has released its own KStest2 function in the 2018a release, which does essentially the same thing.

[p_value, D] = KSstat(cdf1, cdf2, N1, N2)

Inputs:
cdf1 - first sample's cdf
cdf2 - second sample's cdf
N1 - size of sample 1
N2 - size of sample 2

Outputs:
p_value - p value of KS statistic
D - the max deviation between the two cdfs
