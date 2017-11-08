% Problem 2
% A = WH

[rowA,colA] = size(MatrixA);
[rowH,colH] = size(MatrixH);
W = ones(rowA, rowH);
num_iterations = 50;
errors = zeros(num_iterations, 1);
for i=1:num_iterations
    W = W.*((MatrixA*MatrixH')./(W*MatrixH*MatrixH'));
    errors(i, 1) = norm(MatrixA-W*MatrixH) / sqrt(rowA*colA);
end

plot(1:50, errors(:))
