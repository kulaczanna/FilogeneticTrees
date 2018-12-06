clear all
clc

sequence1 = 'ATCGTGGTACTG';
sequence2 = 'CCGGAGAACTAG';
sequence3 = 'AACGTGCTACTG';
sequence4 = 'ATGGTGAAAGTG';
sequence5 = 'CCGGAAAACTTG';
sequence6 = 'TGGCCCTGTATC';

sequences = [sequence1; sequence2; sequence3; sequence4; sequence5; sequence6]
[rows, columns] = size(sequences);
distanceMatrix = zeros(rows)

for i = rows : -1 : 1
    for j = rows : -1 : 1
        if (i ~= j)
            counter = compareSequences(sequences(i, :), sequences(j, :));
            fprintf('sequence %d and %d: %d \n', i, j, counter)
            distanceMatrix(j, i) = counter;
        end
    end
     rows = rows - 1;
end