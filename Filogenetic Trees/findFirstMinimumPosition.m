function[minValueY, minValueX] = findFirstMinimumPosition(distanceMatrix)

    minValue = min(distanceMatrix(distanceMatrix > 0));
    [minY, minX] = find(distanceMatrix == minValue);
    minValueY = min(minY);
    [y, x] = find(minY == minValueY);
    minValueX = min(minX(y));
    
end