function [branchLength, minimumValue, branchLengthMatrix] = ...
    calculateBranchLength(distanceMatrix, minValueY, minValueX, branchLengthMatrix, i)
    
    minimumValue = distanceMatrix(minValueY, minValueX);
    branchLength = minimumValue / 2;
    branchLengthMatrix(1, i) = branchLength;
    
end