% compute_wave_function.m
% Function to compute wave function and transmission coefficient

function [Psi, T] = compute_wave_function(E, V, x)
    % Computes the wave function Psi and transmission coefficient T
    % E: Energy of the particle (J)
    % V: Potential barrier (J)
    % x: Position array (m)

    % Constants
    hbar = 1.0545718e-34; % Reduced Planck's constant (J·s)
    m = 9.10938356e-31;   % Mass of the electron (kg)

    % Number of points
    N = length(x);

    % Initialize the wave function
    Psi = zeros(1, N);

    % Define the step size
    dx = x(2) - x(1);

    % Compute the wave function using the finite difference method
    Psi(1) = exp(1i * sqrt(2 * m * E) * x(1) / hbar); % Physical initial condition
    Psi(2) = exp(1i * sqrt(2 * m * E) * x(2) / hbar); % Next point for wave propagation

    for i = 3:N
        Psi(i) = (2 - 2 * (2 * m / hbar^2) * (E - V(i-1)) * dx^2) * Psi(i-1) - Psi(i-2);
    end

    % Normalize the wave function
    Psi = Psi / sqrt(sum(abs(Psi).^2) * dx);

    % Calculate the transmission coefficient (simple approximation)
    if abs(Psi(1)) > 0
        T = abs(Psi(end))^2 / abs(Psi(1))^2;
    else
        T = 0; % Avoid division by zero
    end
end

