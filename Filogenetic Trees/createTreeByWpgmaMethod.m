function[cellNodes, cellLeafs, cellSequences, branchLengthVector, branchLengthMatrix] = ...
    createTreeByWpgmaMethod(distanceMatrix)

    nodes = [];
    nodesNumber = 0;
    nodesNumbers = [];
    leafsToSign = [];
    sequencesToSign = [];
    mergeFlag = 0;
    lengthOfMatrix = length(distanceMatrix);
    clusterGroupsArray = zeros(lengthOfMatrix);
    helperClusterGroupsArray = zeros(2, lengthOfMatrix);
    branchLengthVector = zeros(1, length(distanceMatrix) - 1);
    branchLengthMatrix = zeros(length(distanceMatrix));

    for c = 1 : lengthOfMatrix
        helperClusterGroupsArray(:, c) = c;
    end

    for i = 1 : lengthOfMatrix - 1

         [minValueY, minValueX] = findFirstMinimumPosition(distanceMatrix);
         branchLengthVector = calculateBranchLength(i, distanceMatrix, ...
             minValueY, minValueX, branchLengthVector);
         
         [newClusterGroupsArray, nodesNumber, isMerge, changedRowNumber, ...
             sequencesToSign, branchLengthVector, branchLengthMatrix] = ... 
             makeClusterGroups(i, clusterGroupsArray, ...
             helperClusterGroupsArray, minValueY, minValueX, nodesNumber, ...
             sequencesToSign, branchLengthVector, branchLengthMatrix);

         helperClusterGroupsArray = makeHelperClusterVectors(helperClusterGroupsArray, lengthOfMatrix, minValueX);
         distanceMatrixCopy = distanceMatrix;
         newDistanceMatrix = calculateNewDistanceMatrix(minValueY, minValueX, distanceMatrixCopy);       

         [nodes, nodesNumbers, leafsToSign, mergeFlag] = calculateParametersToDrawTree(i, ...
             mergeFlag, clusterGroupsArray, newClusterGroupsArray, nodes, nodesNumber, ...
             nodesNumbers, isMerge, changedRowNumber, leafsToSign);

         cellNodes{i} = nodes;
         cellLeafs{i} = leafsToSign;
         cellSequences{i} = sequencesToSign;

         distanceMatrix = newDistanceMatrix;
         lengthOfMatrix = lengthOfMatrix - 1;
         clusterGroupsArray = newClusterGroupsArray;

    end
    
    for j = 1 : length(branchLengthMatrix)
        branchLengthMatrix(j, j) = 0;
    end
    
end
