function[minValueY, minValueX] = findFirstMinimumPosition(A) % A - matrix of distance between sequences

    minValue = min(A(A>0));
    [minY, minX] = find(A == minValue);
    minValueY = min(minY);
    [Y, X] = find(minY == minValueY);
    minValueX = minX(Y,X);
    
end