% triangular_potential.m
% Function to define a triangular potential barrier

function V = triangular_potential(x, V0, width)
    % Defines a triangular potential barrier
    % V0: Maximum height of the barrier (J)
    % width: Width of the barrier base (m)
    V = V0 * (1 - abs(x) / (width / 2)) .* (abs(x) < width / 2);
end
