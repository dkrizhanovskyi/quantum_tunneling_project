% rectangular_potential.m
% Function to define a rectangular potential barrier

function V = rectangular_potential(x, V0, width)
    % Defines a rectangular potential barrier
    % V0: Height of the barrier (J)
    % width: Width of the barrier (m)
    V = V0 * (abs(x) < width / 2);
end
