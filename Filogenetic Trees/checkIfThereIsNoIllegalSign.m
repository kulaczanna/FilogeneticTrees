function[matrixOfSequences] = checkIfThereIsNoIllegalSign(matrix, j)

     if (~all(ismember(matrix(j, :), 'ACTG-')))
                warndlg('There are available only "A", "G", "C", "T", "-" characters.', 'Sequences error');
                matrixOfSequences = [];
                return
     else
                matrixOfSequences = matrix;
     end

end