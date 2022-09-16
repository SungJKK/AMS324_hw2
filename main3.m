% =========== Problem 1 ===========
% Call compute_for and create a short movie of the graph

% Start recording video
vid = VideoWriter('problem3.avi');
open(vid);

% start plotting
figure;
hold('on');
axis([-1, 1, -1, 1])

% plot a circle of radius 1 centered at origin (0, 0)
xt = @(t) cos(2*pi*t);
yt = @(t) sin(2*pi*t);
fplot(xt, yt, 'Color', 'k');

% plot 1000 random points
compute_for(1000, vid);
hold('off');

% Finish recording video
close(vid);