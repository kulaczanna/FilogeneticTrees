function[matrixOfSequences, error] = checkIfThereIsNoIllegalSign(matrix, j)

     error = false;
     if (~all(ismember(matrix(j, :), 'ACTG-')))
                warndlg('There are available only "A", "G", "C", "T", "-" characters.', 'Sequences error');
                matrixOfSequences = [];
                error = true;
                return
     else
                matrixOfSequences = matrix;
     end

end