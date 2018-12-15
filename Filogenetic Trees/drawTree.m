function[nodes, nodesNumbers, leafsToSign, mergeFlag] = drawTree(mergeFlag, ...
    oldClusterGroupsArray, clusterGroupsArray, nodesNumber, isMerge, nodes, ...
    changedRowNumber, nodesNumbers, leafsToSign, i)
  
    changedPositionsInClustersNumber = sum(sum(oldClusterGroupsArray ~= clusterGroupsArray));
    oldNodesNumbers = nodesNumbers;
    
    for x = (length(nodes) + 1) : nodesNumber
        nodesNumbers(changedRowNumber, end + 1) = x;
    end
        
    if (isMerge)
        
       helperZerosVector = oldNodesNumbers(changedRowNumber, :);
       helperVectorWithoutZeros = helperZerosVector(helperZerosVector ~= 0);
       vectorToChangeNode = nodes(helperVectorWithoutZeros);
       zeroPosition = helperVectorWithoutZeros(find(vectorToChangeNode == 0));
       nodes(zeroPosition) = max(nodes + 1);
       mergeFlag = mergeFlag + 1;
        
    elseif (changedPositionsInClustersNumber == 2)
        
        for c = (length(nodes) + 1) : nodesNumber - 1
            nodes(1, c) = nodesNumber;
        end
        if (i == 1)
            leafsToSign = [1, 2];
        else
                leafsToSign(1, end + 1) = max(leafsToSign) + 2 + mergeFlag;
                leafsToSign(1, end + 1) = max(leafsToSign) + 1;
                mergeFlag = 0;
        end
         
    elseif (changedPositionsInClustersNumber == 1)
        
       helperZerosVector = oldNodesNumbers(changedRowNumber, :);
       helperVectorWithoutZeros = helperZerosVector(helperZerosVector ~= 0);
       vectorToChangeNode = nodes(helperVectorWithoutZeros);
       zeroPosition = helperVectorWithoutZeros(find(vectorToChangeNode == 0));
       if (length(zeroPosition) > 1)
           zeroPosition = zeroPosition(changedRowNumber);
       end
       newNodeNumber = max(nodes) + 2;
       nodes(1, zeroPosition) = newNodeNumber;
       nodes(1, length(nodes) + 1) = newNodeNumber;
       leafsToSign(1, end + 1) = max(leafsToSign) + 2 + mergeFlag;
       mergeFlag = 0;        
    end

     for h =  length(nodes) + 1 : nodesNumber
         nodes(1, h) = 0;
     end
    
end
   
    