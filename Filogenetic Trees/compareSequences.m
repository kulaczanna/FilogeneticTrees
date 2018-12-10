function [p] = compareSequences(sequence1, sequence2)

 p = sum(sequence1 ~= sequence2);
    
end