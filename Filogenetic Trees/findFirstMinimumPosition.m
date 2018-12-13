function[minValueY, minValueX] = findFirstMinimumPosition(distanceMatrix)

    minValue = min(distanceMatrix(distanceMatrix > 0));
    [minY, minX] = find(distanceMatrix == minValue);
    minValueY = min(minY);
    minValueX = min(minX);
%     [Y, X] = find(minY == minValueY);
%     minValueX = minX(Y,X);
    
end