%% Initialization
clear ; close all; clc

%% Arithmetic Array Operators

%% Element-wise multiplication
% C = A.*B
%   = multiplies arrays A and B element by element and returns the result in C 

fprintf('Multiply two vectors');
A = [1 0 3]
B = [2 3 7]
C = A.*B

fprintf(['Multiply two arrays']);
A = [1 0 3; 5 3 8; 2 4 6]
B = [2 3 7; 9 1 5; 8 8 3]
C = A.*B

fprintf(['Multiply row and column vectors']);
A = [1 2 3]
B = (1:6)'
C = A.*B

