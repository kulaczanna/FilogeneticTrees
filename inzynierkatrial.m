% UPGMA method
clc
clear all;
% load the matrix
A = [0.4, 0, 0; 0.35, 0.45, 0; 0.6, 0.7, 0.55];
% copy the matrix
copyA = A;
% find minimum value of the matrix
minimumValue = min(A(A>0));
% and its index...
[minValueY, minValueX] = find(A == minimumValue);
% draw the branch
%...
% count length from takson to wezel xD
lengthOfBranch = minimumValue/2;
% reduce the matrix
A = [(copyA(1,1)+copyA(2,2))/2, 0; (copyA(3,3) + copyA(3,1))/2, 0.7];
% find minimum of reduced matrix
minimumValue = min(A(A>0));
% and its index...
[minValueY, minValueX] = find(A == minimumValue);
% draw the branch...
%
% count length from takson to wezel xD
lengthOfBranch = minimumValue/2;
% reduce reduced matrix...
A = [(copyA(3,2)+copyA(3,1)+copyA(3,3))/3];
% find minimum of reduced matrix
minimumValue = min(A(A>0))
% and its index...
[minValueY, minValueX] = find(A == minimumValue);
% count length from takson to wezel xD
lengthOfBranch = minimumValue/2;


