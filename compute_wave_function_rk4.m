% compute_wave_function_rk4.m
% Function to compute wave function using the Runge-Kutta 4th order method

function [Psi, T] = compute_wave_function_rk4(E, V, x)
    % Computes the wave function Psi and transmission coefficient T using RK4
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
    Psi_prime = zeros(1, N);

    % Define the step size
    dx = x(2) - x(1);

    % Initial conditions
    k = sqrt(2 * m * E) / hbar;
    Psi(1) = exp(1i * k * x(1));  % Initial wave function
    Psi_prime(1) = 1i * k * Psi(1); % Initial derivative

    % Function to calculate the second derivative of Psi
    d2Psi_dx2 = @(Psi, Psi_prime, i) -(2 * m / hbar^2) * (E - V(i)) * Psi;

    % Runge-Kutta 4th order method
    for i = 1:N-1
        k1 = dx * Psi_prime(i);
        l1 = dx * d2Psi_dx2(Psi(i), Psi_prime(i), i);

        k2 = dx * (Psi_prime(i) + 0.5 * l1);
        l2 = dx * d2Psi_dx2(Psi(i) + 0.5 * k1, Psi_prime(i) + 0.5 * l1, i);

        k3 = dx * (Psi_prime(i) + 0.5 * l2);
        l3 = dx * d2Psi_dx2(Psi(i) + 0.5 * k2, Psi_prime(i) + 0.5 * l2, i);

        k4 = dx * (Psi_prime(i) + l3);
        l4 = dx * d2Psi_dx2(Psi(i) + k3, Psi_prime(i) + l3, i);

        Psi(i+1) = Psi(i) + (k1 + 2*k2 + 2*k3 + k4) / 6;
        Psi_prime(i+1) = Psi_prime(i) + (l1 + 2*l2 + 2*l3 + l4) / 6;
    end

    % Normalize the wave function
    Psi = Psi / sqrt(sum(abs(Psi).^2) * dx);

    % Calculate the transmission coefficient
    if abs(Psi(1)) > 0
        T = abs(Psi(end))^2 / abs(Psi(1))^2;
    else
        T = 0; % Avoid division by zero
    end
end
