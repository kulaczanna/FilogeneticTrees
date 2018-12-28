function[matrixOfSequences, lengthOfSequence, error] = makeMatrixOfSequences(s1, s2, s3, s4, s5, s6, s7, s8, s9, s10)

    matrixOfSequences = [];
    lengthOfSequence = 0;
    nonEmptysequencesNumber = [];
    
    lengths = [length(s1), length(s2), length(s3), length(s4), length(s5), ...
        length(s6), length(s7), length(s8), length(s9), length(s10)];

    for i = 1 : length(lengths)
        if(lengths(i) ~= 0)
            nonEmptysequencesNumber(1, end + 1) = lengths(i);
        end
    end
    
    if (size(nonEmptysequencesNumber, 2) <= 1)
        error = true;
        warndlg('There must be at least twosequences.', 'Sequences error');
        return
    end
    
    error = checkIfLengthIsEqual(nonEmptysequencesNumber);
    if (error == true)
        return
    end
    
    matrix = [s1; s2; s3; s4; s5; s6; s7; s8; s9; s10];
        for j = 1 : size(matrix, 1)
          [matrixOfSequences, error] = checkIfThereIsNoIllegalSign(matrix, j);
          if (error)
              return
          end
        end
        lengthOfSequence = length(matrixOfSequences(1, :));
    end
    