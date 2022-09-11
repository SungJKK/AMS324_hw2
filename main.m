% =========== Problem 1 ===========
% a) calling compute_for function for N_tot = 2^k points (k = 10, 11, ..., 20)
k = 10:1:20;
N_tot = 2.^k;
pi_est = zeros(size(k));
for i = 1:size(N_tot, 2)
    pi_est(i) = compute_for(N_tot(i));
end

% b) plotting pi_est vs. N_total and error |pi_est - pi] vs. N_total 
err_pi_est = abs(pi_est - pi);

disp(min(pi_est))
disp(max(pi_est))
disp(min(err_pi_est))
disp(max(err_pi_est))

figure;
yyaxis left;
semilogx(N_tot, pi_est);
xlabel('Number of points');
ylabel('Estimation of PI');
yyaxis right;
semilogx(N_tot, err_pi_est);
ylabel('Error of estimation');

% c) 





