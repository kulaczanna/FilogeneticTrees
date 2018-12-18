function[error] = checkIfLengthIsEqual(matrix)

    error = false;
    
     if (~(all(matrix == matrix(1))))
        warndlg('The length of the sequences must be the same.', 'Sequences error');
        error = true;
        return
    end

end