% Application for filogenetic trees construction - UPGMA method
clc
clear all;

distanceMatrix = loadMatrix(1)
lengthOfMatrix = getMatrixSize(distanceMatrix);
clusterGroupsArray = zeros(lengthOfMatrix);
helperClusterGroupsArray = zeros(2, lengthOfMatrix);

for column = 1 : lengthOfMatrix
    
    helperClusterGroupsArray(:, column) = column;
    
end

for i = 1 : lengthOfMatrix - 1
 
     [minValueY, minValueX] = findFirstMinimumPosition(distanceMatrix);
     [branchLength, minimumValue] = calculateBranchLength(distanceMatrix, minValueY, minValueX);
     clusterGroupsArray = makeClasterGroups(i, clusterGroupsArray, helperClusterGroupsArray, minValueY, ...
         minValueX, branchLength)
     
     helperClusterGroupsArray = vectors(helperClusterGroupsArray, lengthOfMatrix, minValueX);
     distanceMatrixCopy = distanceMatrix;
     newDistanceMatrix = zeros(lengthOfMatrix-1);
     
     newDistanceMatrix = calculateNewDistanceMatrix(lengthOfMatrix, minValueY, minValueX, ...
         distanceMatrixCopy, newDistanceMatrix);       
     
     distanceMatrix = newDistanceMatrix;
     lengthOfMatrix = lengthOfMatrix - 1;
    
end
