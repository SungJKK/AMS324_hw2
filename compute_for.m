% Function to compute the estimation of pi using monte carlo method and for loops
function pi_est = compute_for(N_tot, vid)
    % generate N_tot number of points (x, y) within square of (-1, 1) x (-1, 1)
    x = 2 * rand(1, N_tot) - 1;
    y = 2 * rand(1, N_tot) - 1;
    N_in = 0;

    % different colors to determine whether in / out of circle
    cls = ['r', 'b']; % red = in, blue = out
    c_size = 30; % size of circle in scatter plot

    % determine whether point lies within the circle
        % do so by checking if distance from origin is <= 1
    for i = 1:size(x, 2)
        dist = x(i)^2 + y(i)^2;
        if dist <= 1
            N_in = N_in + 1;
            % point is in circle
            scatter(x(i), y(i), c_size, cls(1), 'filled');
            drawnow;
        else
            % point is out of circle 
            scatter(x(i), y(i), c_size, cls(2), 'filled');
            drawnow;
        end
        writeVideo(vid, getframe(gcf));
    end

    % calculate the estimation of pi
    pi_est = 4 * N_in / N_tot;
end
