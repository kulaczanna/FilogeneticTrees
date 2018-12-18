function[matrixOfSequences, lengthOfSequence] = makeMatrixOfSequences(s1, s2, s3, s4, s5, s6, s7, s8, s9, s10)

    lengths = [length(s1), length(s2), length(s3), length(s4), length(s5), ...
        length(s6), length(s7), length(s8), length(s9), length(s10)];

    nonEmptysequencesNumber = [];

    for i = 1 : length(lengths)
        if(lengths(i) ~= 0)
            nonEmptysequencesNumber(1, end + 1) = lengths(i);
        end
    end
    
    matrixOfSequences = [];
    error = checkIfLengthIsEqual(nonEmptysequencesNumber);
    if (error == true)
        return
    end
    
    matrix = [s1; s2; s3; s4; s5; s6; s7; s8; s9; s10];
        for j = 1 : size(matrix, 1)
          matrixOfSequences =  checkIfThereIsNoIllegalSign(matrix, j);
        end
        lengthOfSequence = length(matrixOfSequences(1, :));
    end
    