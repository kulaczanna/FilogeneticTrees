% UPGMA method
clc
clear all;

w = zeros(10);
distanceMatrix = loadMatrix;
sizeOfMatrix = getMatrixSize(distanceMatrix);

for k = 1 : 1 : sizeOfMatrix - 1
    
     [minValueY, minValueX] = findFirstMinimumPosition(distanceMatrix);
     minimumValue = distanceMatrix(minValueY, minValueX);
     w = makeClasterGroups(k, w, minValueY, minValueX)
     branchLength = minimumValue/2;
     distanceMatrixCopy = distanceMatrix;
     newDistanceMatrix = zeros(sizeOfMatrix-1);
     
     newDistanceMatrix = calculateNewDistanceMatrix(sizeOfMatrix, minValueY, minValueX, ...
         distanceMatrixCopy, newDistanceMatrix);       
     
     distanceMatrix = newDistanceMatrix;
     sizeOfMatrix = sizeOfMatrix - 1;
    
end
