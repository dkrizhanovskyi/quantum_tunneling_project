% run_simulation.m
% Script to run quantum tunneling simulations with different parameters

% Load configuration
config;

% Define a range of energies to simulate
energies = [5, 10, 20] * eV;

% Loop through each energy level and run the simulation
for E = energies
    % Compute the potential barrier
    V = rectangular_potential(x, 5 * eV, 2e-10);

    % Compute the wave function and transmission coefficient
    [Psi, T] = compute_wave_function(E, V, x);

    % Visualize and save the results
    visualize_results(x, V, Psi, T);
    save(sprintf('data/simulation_results_E%.2feV.mat', E/eV), 'x', 'V', 'Psi', 'T');
end

disp('All simulations completed successfully.');
