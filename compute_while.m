% Function to compute the estimation of pi using series and while loops
% Equation of infinite series on estimating pi: sqrt(6 * (1/1 + 1/2^2 + 1/3^2 + 1/4^2 + 1/5^2 + ...))
function [pi_est, n] = compute_while(tol)
   n = 0; % number of iteration, n
   total_sum = 0;
   pi_est = 0;

   % Iterate to calculate infinite series until ratio of difference and
   % actual value is less than tol
   while (abs(pi_est - pi) / pi) > tol
       n = n + 1;
       
       % append to total sum (series expansion)
       total_sum = total_sum + (1 / n^2);

       % calculate estimation of pi
       pi_est = sqrt(6 * total_sum);
   end
end
