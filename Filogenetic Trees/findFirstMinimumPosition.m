function[minVdistanceMatrixlueY, minVdistanceMatrixlueX] = findFirstMinimumPosition(distanceMatrix)

    minVdistanceMatrixlue = min(distanceMatrix(distanceMatrix > 0));
    [minY, minX] = find(distanceMatrix == minVdistanceMatrixlue);
    minVdistanceMatrixlueY = min(minY);
    [Y, X] = find(minY == minVdistanceMatrixlueY);
    minVdistanceMatrixlueX = minX(Y,X);
    
end