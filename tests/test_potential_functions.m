% test_potential_functions.m
% Unit tests for potential_functions.m

% Test for rectangular potential
x = linspace(-2e-10, 2e-10, 100);
V0 = 5 * 1.60218e-19; % 5 eV in joules
width = 2e-10; % 2 nm width

V_rect = rectangular_potential(x, V0, width);

assert(all(V_rect(x < -width/2) == 0), 'Rectangular potential: Left side incorrect');
assert(all(V_rect(x > width/2) == 0), 'Rectangular potential: Right side incorrect');
assert(all(V_rect(abs(x) <= width/2) == V0), 'Rectangular potential: Inside region incorrect');

disp('All potential function tests passed.');
