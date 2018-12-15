function[dS1S2] = jukesCantorSubstituteModel(p, lengthOfSequence)

    distance = (p/lengthOfSequence);
    if (distance < 0.75)
        dS1S2 = (-(3/4)) * log(1 - ((4/3) * distance));
    else
        dS1S2 = inf;
    end
    
end