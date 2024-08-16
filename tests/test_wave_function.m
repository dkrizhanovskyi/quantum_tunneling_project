% test_wave_function.m
% Unit tests for wave_function.m

% Test for wave function calculation
x = linspace(-2e-10, 2e-10, 100);
V0 = 5 * 1.60218e-19; % 5 eV in joules
E = 10 * 1.60218e-19; % 10 eV in joules
V = rectangular_potential(x, V0, 2e-10);

[Psi, T] = compute_wave_function(E, V, x);

% Basic checks
assert(length(Psi) == length(x), 'Wave function: Length mismatch');
assert(T >= 0 && T <= 1, 'Wave function: Transmission coefficient out of bounds');

disp('All wave function tests passed.');
