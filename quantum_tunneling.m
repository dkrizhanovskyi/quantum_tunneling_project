% quantum_tunneling.m
% Main script for quantum tunneling simulation using Runge-Kutta method
% This script handles the entire process including normalization, improved initial conditions,
% and higher accuracy through increased discretization.

% Load configuration
config;

% Load the necessary functions
addpath(pwd);

% Define potential barrier using the rectangular potential function
V = rectangular_potential(x, 5 * eV, 2e-10);

% Compute wave function using Runge-Kutta method
[Psi, T] = compute_wave_function_rk4(E, V, x);

% Normalize the wave function (just to ensure proper normalization after RK4)
Psi = Psi / sqrt(sum(abs(Psi).^2) * (x(2) - x(1)));

% Visualize results
visualize_results(x, V, Psi, T);

% Save results
save('data/simulation_results_rk4_full.mat', 'x', 'V', 'Psi', 'T');

disp(['Quantum tunneling simulation with Runge-Kutta method completed successfully.']);
disp(['Transmission Coefficient: ', num2str(T)]);
