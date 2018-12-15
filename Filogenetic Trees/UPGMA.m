clc
clear all;

distanceMatrix = loadMatrix(10);
lengthOfMatrix = length(distanceMatrix);
clusterGroupsArray = zeros(lengthOfMatrix);
helperClusterGroupsArray = zeros(2, lengthOfMatrix);
nodesNumber = 0;
numeryWezlow = [];
ktoryLiscPodpisac = [];
ktoraSekwencjePodpisac = [];
nodes = [];
flag = 0;

for column = 1 : lengthOfMatrix
    
    helperClusterGroupsArray(:, column) = column;
    
end

for i = 1 : lengthOfMatrix - 1
     [minValueY, minValueX] = findFirstMinimumPosition(distanceMatrix);
     [branchLength, minimumValue] = calculateBranchLength(distanceMatrix, minValueY, minValueX);
     [newClusterGroupsArray, nodesNumber, isMerge, isOneAdded, changedRowNumber, ...
         ktoraSekwencjePodpisac] = makeClusterGroupsTest(i, clusterGroupsArray, ...
         helperClusterGroupsArray, minValueY, minValueX, branchLength, ...
         nodesNumber, ktoraSekwencjePodpisac);
     
     helperClusterGroupsArray = vectors(helperClusterGroupsArray, lengthOfMatrix, minValueX);
     distanceMatrixCopy = distanceMatrix;
     newDistanceMatrix = zeros(lengthOfMatrix-1);
     
     newDistanceMatrix = calculateNewDistanceMatrix(lengthOfMatrix, minValueY, minValueX, ...
         distanceMatrixCopy, newDistanceMatrix);       
     
        [nodes, numeryWezlow, ktoryLiscPodpisac, ktoraSekwencjePodpisac, flag] = drawTreeOther(flag, ...
            clusterGroupsArray, newClusterGroupsArray, nodesNumber, isMerge, nodes, isOneAdded, ...
            changedRowNumber, numeryWezlow, ktoryLiscPodpisac, ktoraSekwencjePodpisac, i);
 
     figure
         treeplot(nodes);
    [x,y] = treelayout(nodes);
    for p = 1 : length(ktoryLiscPodpisac)
        
            text(x(ktoryLiscPodpisac(p)), y(ktoryLiscPodpisac(p)), num2str(ktoraSekwencjePodpisac(p)), ...
                'VerticalAlignment','top', ...
                'HorizontalAlignment','right');   
    end

     distanceMatrix = newDistanceMatrix;
     lengthOfMatrix = lengthOfMatrix - 1;
     clusterGroupsArray = newClusterGroupsArray
     
     nodes;
     ktoryLiscPodpisac
%      ktoraSekwencjePodpisac
     clusterGroupsArray;
    
end
