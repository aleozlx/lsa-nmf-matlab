% Problem 3
% (a)
D = [
  0 569 667 530 141;
  569 0 1212 1043 617;
  667 1212 0 201 596;
  530 1043 201 0 431;
  141 617 596 431 0
];
size_D = size(D, 1);

J = eye(size_D) - 1/size_D * (ones(size_D, 1)*ones(1, size_D));
B = -0.5 * (J*D*J);
[B_eigvec,B_eigval] = eigs(B, size_D, 'SM')

coordinates = B_eigvec(:, 1:2) * sqrt(B_eigval(1:2, 1:2))

% (b)
D_recomputed = squareform(pdist(coordinates))
