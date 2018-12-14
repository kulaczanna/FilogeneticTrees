function [p, error] = compareSequencesLength(sequence1, sequence2)

            if(length(sequence1) ~= length(sequence2))
                warndlg('The sequences must have the same length', 'Sequences error');
                error = true;
                return
            end      
end