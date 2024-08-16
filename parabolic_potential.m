% parabolic_potential.m
% Function to define a parabolic potential barrier

function V = parabolic_potential(x, V0, width)
    % Defines a parabolic potential barrier
    % V0: Maximum height of the barrier (J)
    % width: Width of the barrier base (m)
    V = V0 * (1 - (x / (width / 2)).^2) .* (abs(x) < width / 2);
end
