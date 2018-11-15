function[minValueY, minValueX] = findFirstMinimumPosition(A)

minimumValue = min(A(A>0));
[minY, minX] = find(A == minimumValue);
minValueY = min(minY);
[Y, X] = find(minY == minValueY);
minValueX = minX(Y,X);
    
end