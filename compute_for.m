% Function to compute the estimation of pi using monte carlo method and for loops
function pi_est = compute_for(N_tot)
    % generate N_tot number of points (x, y) within square of (-1, 1) x (-1, 1)
    x = 2 * rand(1, N_tot) - 1;
    y = 2 * rand(1, N_tot) - 1;

    % determine whether point lies within the circle
        % do so by checking if distance from origin is <= 1
    N_in = 0;
    for i = 1:size(x, 2)
        dist = x(i)^2 + y(i)^2;
        if dist <= 1
            N_in = N_in + 1;
        end
    end

    % calculate the estimation of pi
    pi_est = 4 * N_in / N_tot;
end
