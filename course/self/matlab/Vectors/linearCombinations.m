%% Linear Combinations

%% Example 1
% Determine if w is a linear combination of the vectors v1 and v2
v1 = [1 2 0]';
v2 = [0 -1 2]';
w = [2 7 -6]';

% Create matrix A whose columns are v1 and v2
A = [v1 v2];

% create the augmented matrix B
B = [A w];

% if rank(A) = rank(B) then w is a linear combinations of the 
% the vectors v1 and v2
rank(A)
rank(B)

pause;

%% Example 2
% Express w as a linear combination of v1 and v2

rref(B)
rref(A) 