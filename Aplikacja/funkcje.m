% UPGMA method
clc
clear all;

distanceMatrix = loadMatrix;
sizeOfMatrix = getMatrixSize(distanceMatrix);

w = zeros(sizeOfMatrix);
w1 = zeros(2, sizeOfMatrix);
for wi = 1 : sizeOfMatrix
    w1(1, wi) = wi;
    w1(2, wi) = wi;
end

for k = 1 : 1 : sizeOfMatrix - 1
    
     [minValueY, minValueX] = findFirstMinimumPosition(distanceMatrix);
     minimumValue = distanceMatrix(minValueY, minValueX)
     branchLength = minimumValue/2;
     w = makeClasterGroups(k, w, w1, minValueY, minValueX, sizeOfMatrix, branchLength)
     w1 = vectors(w1, sizeOfMatrix, minValueX);
     distanceMatrixCopy = distanceMatrix;
     newDistanceMatrix = zeros(sizeOfMatrix-1);
     
     newDistanceMatrix = calculateNewDistanceMatrix(sizeOfMatrix, minValueY, minValueX, ...
         distanceMatrixCopy, newDistanceMatrix);       
     
     distanceMatrix = newDistanceMatrix;
     sizeOfMatrix = sizeOfMatrix - 1;
    
end
