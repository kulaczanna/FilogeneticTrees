function [counter] = compareSequences(sequence1, sequence2)

    counter = 0;
    for i = 1 : length(sequence1)
        if (sequence1(i) ~= sequence2(i))
            counter = counter + 1;
        end
    end
    
end