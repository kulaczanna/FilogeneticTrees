clc
clear all;

distanceMatrix = loadMatrix(7);
lengthOfMatrix = length(distanceMatrix);
clusterGroupsArray = zeros(lengthOfMatrix);
helperClusterGroupsArray = zeros(2, lengthOfMatrix);
nodesNumber = 0;
numeryWezlow = [];
ktoryLiscPodpisac = [];
ktoraSekwencjePodpisac = [];
nodes = [];

for column = 1 : lengthOfMatrix
    
    helperClusterGroupsArray(:, column) = column;
    
end

for i = 1 : lengthOfMatrix - 1
     [minValueY, minValueX] = findFirstMinimumPosition(distanceMatrix);
     [branchLength, minimumValue] = calculateBranchLength(distanceMatrix, minValueY, minValueX);
     [newClusterGroupsArray, nodesNumber, isMerge, isOneAdded, changedRowNumber, ktoraSekwencjePodpisac] = makeClusterGroupsTest(i, clusterGroupsArray, ...
         helperClusterGroupsArray, minValueY, ...
         minValueX, branchLength, nodesNumber, ktoraSekwencjePodpisac);
     
     helperClusterGroupsArray = vectors(helperClusterGroupsArray, lengthOfMatrix, minValueX);
     distanceMatrixCopy = distanceMatrix;
     newDistanceMatrix = zeros(lengthOfMatrix-1);
     
     newDistanceMatrix = calculateNewDistanceMatrix(lengthOfMatrix, minValueY, minValueX, ...
         distanceMatrixCopy, newDistanceMatrix);       
     
        [nodes, numeryWezlow, ktoryLiscPodpisac, ktoraSekwencjePodpisac] = drawTreeOther(clusterGroupsArray, newClusterGroupsArray, ...
            nodesNumber, isMerge, nodes, isOneAdded, changedRowNumber, numeryWezlow, ktoryLiscPodpisac, ktoraSekwencjePodpisac, i);
         
     cellNodes{i} = nodes;
     cellKtoreLiscie{i} = ktoryLiscPodpisac;
     cellKtoreSekwencje{i} = ktoraSekwencjePodpisac;
     
     figure
         treeplot(cellNodes{1, i});
    [x,y] = treelayout(cellNodes{1, i});
    for p = 1 : length(cellKtoreLiscie{1, i})
        
            text(x(cellKtoreLiscie{1, i}(p)), y(cellKtoreLiscie{1, i}(p)), num2str(cellKtoreSekwencje{1, i}(p)), ...
                'VerticalAlignment','top', ...
                'HorizontalAlignment','right');
        
    end

     distanceMatrix = newDistanceMatrix;
     lengthOfMatrix = lengthOfMatrix - 1;
     clusterGroupsArray = newClusterGroupsArray;
    
end
