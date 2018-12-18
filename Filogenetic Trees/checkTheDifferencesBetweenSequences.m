function[distance, error] = checkTheDifferencesBetweenSequences(distance, lengthOfSequence)
    error = false;
    if (distance == 0)
        warndlg('The sequences cannot be the same.', 'Sequences error');
        error = true;
        return
    else
        distance = jukesCantorSubstituteModel(distance, lengthOfSequence);
        if (distance == inf)
            warndlg('There is too big difference (more than 75%) between some sequences.', 'Sequences error');
            error = true;
          return         
        end
    end 
end