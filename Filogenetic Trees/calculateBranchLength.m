function [branchLength, minimumValue, branchLengthMatrix] = ...
    calculateBranchLength(i, distanceMatrix, minValueY, minValueX, branchLengthMatrix)
    
    minimumValue = distanceMatrix(minValueY, minValueX);
    branchLength = minimumValue / 2;
    branchLengthMatrix(1, i) = branchLength;
    
end