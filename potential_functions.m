% potential_functions.m
% Functions to define potential barriers for quantum tunneling

function V = rectangular_potential(x, V0, width)
    % Defines a rectangular potential barrier
    % V0: Height of the barrier (J)
    % width: Width of the barrier (m)
    V = V0 * (abs(x) < width / 2);
end

function V = triangular_potential(x, V0, width)
    % Defines a triangular potential barrier
    % V0: Maximum height of the barrier (J)
    % width: Width of the barrier base (m)
    V = V0 * (1 - abs(x) / (width / 2)) .* (abs(x) < width / 2);
end

function V = parabolic_potential(x, V0, width)
    % Defines a parabolic potential barrier
    % V0: Maximum height of the barrier (J)
    % width: Width of the barrier base (m)
    V = V0 * (1 - (x / (width / 2)).^2) .* (abs(x) < width / 2);
end
