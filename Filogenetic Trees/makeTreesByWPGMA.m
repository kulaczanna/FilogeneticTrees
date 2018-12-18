function[cellNodes, cellLeafs, cellSequences, branchLengthVector, branchLengthMatrix] = ...
    makeTreesByWPGMA(distanceMatrix, branchLengthVector, branchLengthMatrix)

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
         [branchLength, minimumValue, branchLengthVector] = ...
             calculateBranchLength(i, distanceMatrix, minValueY, ...
             minValueX, branchLengthVector);
         [newClusterGroupsArray, nodesNumber, isMerge, changedRowNumber, sequencesToSign, branchLengthVector, branchLengthMatrix] ...
             = makeClusterGroups(i, clusterGroupsArray, helperClusterGroupsArray, minValueY, ...
             minValueX, nodesNumber, sequencesToSign, branchLengthVector, branchLengthMatrix);

         helperClusterGroupsArray = vectors(helperClusterGroupsArray, lengthOfMatrix, minValueX);
         distanceMatrixCopy = distanceMatrix;
         newDistanceMatrix = zeros(lengthOfMatrix-1);
         newDistanceMatrix = calculateNewDistanceMatrix(minValueY, ...
             minValueX, distanceMatrixCopy, newDistanceMatrix);       

         [nodes, nodesNumbers, leafsToSign, mergeFlag] = drawTree(mergeFlag, clusterGroupsArray, ...
               newClusterGroupsArray, nodesNumber, isMerge, nodes, changedRowNumber, nodesNumbers, ...
               leafsToSign, i);

         cellNodes{i} = nodes;
         cellLeafs{i} = leafsToSign;
         cellSequences{i} = sequencesToSign;


         distanceMatrix = newDistanceMatrix;
         lengthOfMatrix = lengthOfMatrix - 1;
         clusterGroupsArray = newClusterGroupsArray;

    end

end
