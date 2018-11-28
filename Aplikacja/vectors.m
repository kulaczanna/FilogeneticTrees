function [w1] = vectors(w1, matrixLength, minValueX)

    for wi = 1 : matrixLength - 1
        w1(1, wi) = wi;
        if (wi < minValueX)
            continue
        else
            w1(2, wi) = w1(2, wi + 1);
        end
    end
    matrixLength = matrixLength - 1;
    w1 = w1 (:, 1 : matrixLength);
end

