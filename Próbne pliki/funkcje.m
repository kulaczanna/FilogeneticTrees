% UPGMA method
clc
% clear all;

% distanceMatrix = loadMatrix;
sizeOfMatrix = getMatrixSize(distanceMatrix);
if (sizeOfMatrix > 2)

% for k = 1 : 1 : sizeOfMatrix - 2
    
     [minValueY, minValueX] = findFirstMinimumPosition(distanceMatrix);
     distanceMatrixCopy = distanceMatrix;
     newDistanceMatrix = zeros(sizeOfMatrix-1);
     
     newDistanceMatrix = calculateNewDistanceMatrix(sizeOfMatrix, minValueY, minValueX, ...
         distanceMatrixCopy, newDistanceMatrix);       
     
     distanceMatrix = newDistanceMatrix
     sizeOfMatrix = sizeOfMatrix - 1;
    
% end

else
    break;
end



