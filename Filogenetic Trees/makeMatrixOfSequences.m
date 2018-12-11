function[matrixOfSequences] = makematrixOfSequences(s1, s2, s3, s4, s5, s6, s7, s8, s9, s10)

    lengths = [length(s1), length(s2), length(s3), length(s4), length(s5), ...
        length(s6), length(s7), length(s8), length(s9), length(s10)];

    nonEmptysequencesNumber = [];

    for r = 1 : length(lengths)
        if(lengths(r) ~= 0)
            nonEmptysequencesNumber(1, end + 1) = lengths(r);
        end
    end
    
            matrixOfSequences = [];             
            if (~(all(nonEmptysequencesNumber == nonEmptysequencesNumber(1))))
                warndlg('The length of the sequences must be the same', 'Sequences error');
                return
            else
                matrix = [s1; s2; s3; s4; s5; s6; s7; s8; s9; s10];
                for b = 1 : 6
                    if (~all(ismember(matrix(b, :), 'ACTG')))
                       warndlg('Only these characters are available: "A", "G", "C", "T"', 'Sequences error');
                       matrixOfSequences = []; 
                       return
                    else
                        matrixOfSequences = matrix;
                    end
                end
            end           
end