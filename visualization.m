% visualization.m
% Functions for visualizing the results of quantum tunneling simulation

function visualize_results(x, V, Psi, T)
    % Visualize the potential barrier, wave function, and transmission coefficient
    % x: Position array (m)
    % V: Potential barrier (J)
    % Psi: Wave function array
    % T: Transmission coefficient

    figure;

    % Plot the potential barrier
    subplot(3, 1, 1);
    plot(x, V);
    xlabel('Position (m)');
    ylabel('Potential Energy (J)');
    title('Potential Barrier');

    % Plot the wave function
    subplot(3, 1, 2);
    plot(x, abs(Psi).^2);
    xlabel('Position (m)');
    ylabel('Probability Density');
    title('Wave Function |Psi|^2');

    % Display the transmission coefficient
    subplot(3, 1, 3);
    text(0.1, 0.5, sprintf('Transmission Coefficient: %.2e', T), 'FontSize', 12);
    axis off;

    % Save the figure
    saveas(gcf, 'data/quantum_tunneling_results.png');
end
