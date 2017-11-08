% Problem 1
% (a)
C = [
  1 1 1 0 0;
  1 1 1 0 1;
  1 1 1 1 1;
  1 0 1 0 0;
  0 1 0 0 0;
  0 0 1 1 1;
  0 0 0 1 0;
  0 0 0 0 1
];

[num_words, num_documents] = size(C);
nj = sum(C); ti = sum(C, 2);
entropy2 = (C./ti).*log2(C./ti);
entropy2(isnan(entropy2)) = 0;
ei = - sum(entropy2, 2) / log2(num_documents);
W = (1-ei).*C./nj

% (b)
[U, S, V] = svd(W, 'econ')

% (c)
scaled_documents = S(1:2, 1:2) * V(:, 1:2)'

% (d)
norm_documents = sqrt(sum(scaled_documents .^ 2))
cosine_similarity = (scaled_documents' * scaled_documents) ./ (norm_documents' * norm_documents)
