 clear all
clc


subNum = 1
distanceMatrix = loadMatrix(1)
lengthOfMatrix = length(distanceMatrix)
for a = 1 : lengthOfMatrix - 1
    if(lengthOfMatrix > 1)
         [minValueY, minValueX] = findFirstMinimumPosition(distanceMatrix);
         [branchLength, minimumValue] = calculateBranchLength(distanceMatrix, minValueY, minValueX);
         newDistanceMatrix = zeros(lengthOfMatrix-1);
         newDistanceMatrix = calculateNewDistanceMatrix(lengthOfMatrix, minValueY, minValueX, ...
             distanceMatrix, newDistanceMatrix);    
         distanceMatrix = newDistanceMatrix;
         drawTree(subNum)
         subNum = subNum + 1;
         lengthOfMatrix = lengthOfMatrix - 1;
    end
end