function[dS1S2] = jukesCantorModelDistance(p, lengthOfSequence)

    d = (p/lengthOfSequence);
    if (d < 0.75)
        dS1S2 = (-(3/4)) * log(1 - ((4/3) * d));
    else
       dS1S2 = inf;
    end
end