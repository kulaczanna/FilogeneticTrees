% Application for filogenetic trees conctruction - UPGMA method
clc
clear all;

distanceMatrix = loadMatrix;
lengthOfMatrix = getMatrixSize(distanceMatrix);
clusterGroupsArray = zeros(lengthOfMatrix);
helperClusterGroupsArray = zeros(2, lengthOfMatrix);

for column = 1 : lengthOfMatrix
    
    helperClusterGroupsArray(:, column) = column;
    
end

for i = 1 : lengthOfMatrix - 1 % change the name 'i'
 
     [minValueY, minValueX] = findFirstMinimumPosition(distanceMatrix);
     minimumValue = distanceMatrix(minValueY, minValueX); % mamke function with these two lines
     branchLength = minimumValue/2;                       % 
     clusterGroupsArray = makeClasterGroups(i, clusterGroupsArray, helperClusterGroupsArray, minValueY, ...
         minValueX, lengthOfMatrix, branchLength);
     
     helperClusterGroupsArray = vectors(helperClusterGroupsArray, lengthOfMatrix, minValueX);
     distanceMatrixCopy = distanceMatrix;
     newDistanceMatrix = zeros(lengthOfMatrix-1);
     
     newDistanceMatrix = calculateNewDistanceMatrix(lengthOfMatrix, minValueY, minValueX, ...
         distanceMatrixCopy, newDistanceMatrix);       
     
     distanceMatrix = newDistanceMatrix;
     lengthOfMatrix = lengthOfMatrix - 1;
    
end
