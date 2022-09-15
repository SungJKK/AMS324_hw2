% =========== Problem 1 ===========
% a) calling compute_while for tol = 2^-k (k = 5, 6, ..., 10)
k = 5:1:10;
tol = 2.^(-1.*k);
pi_est = zeros(size(k));
for i = 1:size(tol, 2)
    pi_est(i) = compute_while(tol(i));
end
disp(pi_est)

% b) timing the function for different value of tols & plotting computational cost vs. tol
k = 15:1:25;
tol = 2.^(-1.*k);
pi_est = zeros(size(k));
times = zeros(size(k));
compute_costs = zeros(size(k));
for i = 1:size(tol, 2)
    % start measuring timer & cpu cost
    tic; 

    % call the function
    [pi_est(i), compute_costs(i)] = compute_while(tol(i));

    % finish measuring
    times(i) = toc;
end

% plot computational cost vs. tol
figure;
p = plot(compute_costs, times);
xlabel('Computational cost (number of iterations)');
ylabel('Wall-clock time took to calculate (seconds)');

% save the plot to svg file
saveas(gcf, 'problem2', 'svg');


