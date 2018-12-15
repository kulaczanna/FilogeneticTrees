function[cellNodes, cellLeafs, cellSequences] = makeTreesByWPGMA(distanceMatrix)

    nodes = [];
    nodesNumber = 0;
    nodesNumbers = [];
    leafsToSign = [];
    sequencesToSign = [];
    mergeFlag = 0;
    lengthOfMatrix = length(distanceMatrix);
    clusterGroupsArray = zeros(lengthOfMatrix);
    helperClusterGroupsArray = zeros(2, lengthOfMatrix);

    for column = 1 : lengthOfMatrix
        helperClusterGroupsArray(:, column) = column;
    end

    for i = 1 : lengthOfMatrix - 1

         [minValueY, minValueX] = findFirstMinimumPosition(distanceMatrix);
         [branchLength, minimumValue] = calculateBranchLength(distanceMatrix, minValueY, minValueX);
         [newClusterGroupsArray, nodesNumber, isMerge, changedRowNumber, sequencesToSign] ...
             = makeClusterGroups(i, clusterGroupsArray, helperClusterGroupsArray, minValueY, ...
             minValueX, nodesNumber, sequencesToSign);

         helperClusterGroupsArray = vectors(helperClusterGroupsArray, lengthOfMatrix, minValueX);
         distanceMatrixCopy = distanceMatrix;
         newDistanceMatrix = zeros(lengthOfMatrix-1);
         newDistanceMatrix = calculateNewDistanceMatrix(lengthOfMatrix, minValueY, minValueX, ...
             distanceMatrixCopy, newDistanceMatrix);       

         [nodes, nodesNumbers, leafsToSign, mergeFlag] = drawTree(mergeFlag, clusterGroupsArray, ...
               newClusterGroupsArray, nodesNumber, isMerge, nodes, changedRowNumber, nodesNumbers, leafsToSign, i);

         cellNodes{i} = nodes;
         cellLeafs{i} = leafsToSign;
         cellSequences{i} = sequencesToSign;

         distanceMatrix = newDistanceMatrix;
         lengthOfMatrix = lengthOfMatrix - 1;
         clusterGroupsArray = newClusterGroupsArray;

    end

end
