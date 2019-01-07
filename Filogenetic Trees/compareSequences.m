function[distanceMatrix, distanceMatrixCopy, error] = compareSequences(matrixOfSequences, lengthOfSequence)

error = false;
rows = size(matrixOfSequences, 1);
if (rows <= 1)
    error = true;
    distanceMatrix = [];
    distanceMatrixCopy = [];
    return
end
distanceMatrix = zeros(rows);

    for i = rows : -1 : 1
        for j = rows : -1 : 1
            if (i ~= j)
                distance = sum(matrixOfSequences(i, :) ~= matrixOfSequences(j, :));
                [distance, error] = checkTheDifferencesBetweenSequences(distance, lengthOfSequence);
                if (~error)
                    distanceMatrix(j, i) = distance;
                    distanceMatrixCopy(j, i) = distance;
                    distanceMatrixCopy(i, j) = distance;
                else
                    return
                end
            end
        end
        if (~error)
            rows = rows - 1;
        else
            break
        end
    end
    
end