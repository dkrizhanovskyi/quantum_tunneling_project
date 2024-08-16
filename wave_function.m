% wave_function.m
% Functions to compute wave functions for quantum tunneling

function [Psi, T] = compute_wave_function(E, V, x)
    % Computes the wave function Psi and transmission coefficient T
    % E: Energy of the particle (J)
    % V: Potential barrier (J)
    % x: Position array (m)

    % Number of points
    N = length(x);

    % Initialize the wave function
    Psi = zeros(1, N);

    % Define the step size
    dx = x(2) - x(1);

    % Compute the wave function using the finite difference method
    Psi(1) = 0; % Boundary condition at x = -infinity
    Psi(2) = 1e-10; % Small initial value at the second point

    for i = 3:N
        Psi(i) = (2 - 2 * (2 * m / hbar^2) * (E - V(i-1)) * dx^2) * Psi(i-1) - Psi(i-2);
    end

    % Calculate the transmission coefficient (simple approximation)
    T = abs(Psi(end))^2 / abs(Psi(1))^2;
end
