% config.m
% Configuration file for quantum tunneling simulation

% Define constants
hbar = 1.0545718e-34; % Reduced Planck's constant (J·s)
m = 9.10938356e-31;   % Mass of the electron (kg)
eV = 1.60218e-19;     % Electron volt in joules (J)

% Define simulation parameters
E = 10 * eV;          % Energy of the particle (J)
x = linspace(-10e-10, 10e-10, 20000); % Increase number of points to 10000

% Function handle for potential barrier
potential_barrier = @(x) 5 * eV * (abs(x) < 1e-10); % Rectangular potential barrier
