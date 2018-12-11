function[dS1S2] = jukesCantorModelDistance(p, lengthOfSequence)

    d = (p/lengthOfSequence);
    if (d < 0.75)
        dS1S2 = (-(3/4)) * log(1 - ((4/3) * d)) ;
    else
        dS1S2 = 2;
    end
end

%  dS1S2 = (-(3/4)) * log(1 - ((4/3) * 0.749999999999999944))
% 27.0327