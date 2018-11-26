function [newDistanceMatrix] = calculateNewDistanceMatrix(sizeOfMatrix, minValueY, minValueX, distanceMatrixCopy, newDistanceMatrix)

    for row = 1 : 1 : sizeOfMatrix-1        
        for column = 1 : 1 : sizeOfMatrix - 1
                       if(row < minValueY)
                            if(column < minValueY)
                                newDistanceMatrix(row, column) = distanceMatrixCopy(row, column);
                            elseif(column == minValueY)
                                newDistanceMatrix(row, column) = (distanceMatrixCopy(row, minValueY) + distanceMatrixCopy(row, minValueX)) / 2;
                            elseif(column > minValueY && column < minValueX)
                                newDistanceMatrix(row, column) = distanceMatrixCopy(row, column);
                            else
                                newDistanceMatrix(row, column) = distanceMatrixCopy(row, column+1);
                            end

                        elseif(row == minValueY)
                            if(column >= minValueX)
                                newDistanceMatrix(row, column) = (distanceMatrixCopy(minValueY, column + 1) + distanceMatrixCopy(minValueX, column + 1)) / 2;
                            elseif(column > minValueY)
                                newDistanceMatrix(row, column) = (distanceMatrixCopy(minValueY, column) + distanceMatrixCopy(column, minValueX)) / 2;
                            end

                        elseif(row > minValueY)
                            if(column >= minValueX)
                                if(row < minValueX)
                                    newDistanceMatrix(row, column) = distanceMatrixCopy(row, column + 1);
                                else
                                    newDistanceMatrix(row, column) = distanceMatrixCopy(row + 1, column + 1);
                                end
                            else
                                newDistanceMatrix(row, column) = distanceMatrixCopy(row, column);
                            end
                        end
        end
    end

end