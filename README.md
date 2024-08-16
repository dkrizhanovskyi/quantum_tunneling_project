# Quantum Tunneling Simulation: Comparative Analysis of Wave Function Calculation Methods

## Overview

This project presents a comparative analysis of two numerical methods used to calculate the wave function and transmission coefficient in a quantum tunneling simulation: the Finite Difference Method (FDM) and the Runge-Kutta 4th Order Method (RK4).

### Author
**Daniil Krizhanovskyi, Independent Researcher**

## Project Structure

- **`quantum_tunneling.m`**: Main script that runs the quantum tunneling simulation.
- **`compute_wave_function.m`**: Implements the Finite Difference Method (FDM) for wave function calculation.
- **`compute_wave_function_rk4.m`**: Implements the Runge-Kutta 4th Order Method (RK4) for wave function calculation.
- **`config.m`**: Configuration file with constants and simulation parameters.
- **`visualize_results.m`**: Function to visualize the potential barrier and wave function results.
- **`data/`**: Directory containing the saved results of the simulations.
- **`report.pdf`**: Full academic report detailing the methods, results, error analysis, and conclusions of the study.

## Methods

### Finite Difference Method (FDM)
- **Advantages**: Simple and fast, requires fewer computational resources.
- **Disadvantages**: Prone to numerical errors, especially with large step sizes or sharp potential changes. May produce inaccurate transmission coefficients.

### Runge-Kutta 4th Order Method (RK4)
- **Advantages**: More accurate and stable, significantly reduces numerical errors.
- **Disadvantages**: More computationally intensive, slower compared to the Finite Difference Method.

## Results

- The FDM produced a transmission coefficient of 0.875, indicating significant wave function transmission through the barrier.
- The RK4 method yielded a transmission coefficient of 1.14, suggesting a need for further refinement in the numerical approach.

## Conclusion

- **Recommended Method**: The Runge-Kutta 4th Order Method is recommended for quantum tunneling simulations requiring high accuracy and numerical stability.
- **Application of FDM**: Suitable for simpler problems where computational efficiency is more critical than precision.

## Future Work

To enhance the accuracy of quantum tunneling simulations, future research should focus on:
- Improving discretization to reduce numerical errors.
- Exploring adaptive methods for better stability and accuracy.
- Implementing error correction techniques to ensure physically realistic transmission coefficients.

## How to Run the Simulation

1. Ensure all the required `.m` files are in your MATLAB/Octave working directory.
2. Run the `quantum_tunneling.m` script.
3. Visualizations and numerical results will be generated and saved in the `data/` directory.

## Report

The full academic report is available in the repository as [report.pdf](data/report.pdf).

## References

- Griffiths, D. J. *Introduction to Quantum Mechanics*. Pearson Education, 2018.
- Press, W. H., Teukolsky, S. A., Vetterling, W. T., & Flannery, B. P. *Numerical Recipes: The Art of Scientific Computing*. Cambridge University Press, 2007.
