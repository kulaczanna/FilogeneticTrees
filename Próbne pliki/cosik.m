function [w1] = vectors(w1)
matrixLength = 6;
w1 = zeros(2, matrixLength);
for wi = 1 : matrixLength
    w1(1, wi) = wi;
    w1(2, wi) = wi;
end
w1 = w1 (:, 1 : matrixLength)
minValueY = 3;
for wi = 1 : 5
    w1(1, wi) = wi;
    if (wi < minValueY)
        w1(2, wi) = wi;
    else
        w1(2, wi) = wi + 1;
    end
end
matrixLength = matrixLength - 1;
w1 = w1 (:, 1 : matrixLength)
end

