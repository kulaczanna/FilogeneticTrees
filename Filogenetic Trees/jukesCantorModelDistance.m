function[dS1S2] = jukesCantorModelDistance(counter, lengthOfSequence)

    d = (counter/lengthOfSequence)
    if (d < 0.75)
        dS1S2 = (-(3/4)) * log(1 - ((4/3) * d)) ;
% dS1S2 = counter
    else
        dS1S2 = 27.0327;
    end
end

%  dS1S2 = (-(3/4)) * log(1 - ((4/3) * 0.749999999999999944))