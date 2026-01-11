Cape Basin Tracer Ventilation — Analysis Code

This repository contains the analysis code used in:

Koets, R., Swart, S., Donohue, K., & du Plessis, M. (2026)
Observations of tracer ventilation in the Cape Basin, Agulhas Current Retroflection
Ocean Science.

The code supports the analysis of high-resolution glider observations used to investigate ventilation, mixing, and mesoscale–submesoscale dynamics in the Cape Basin.

Code DOI

The archived version of this repository is available at:

DOI: DOI: 10.5281/zenodo.18215721

Please cite this DOI when using or adapting the code.


Repository Structure

The notebooks are intended to be run in the order listed below.

1. Quality Control

QC.ipynb
Performs quality control on raw glider data, including filtering, despiking, and removal of unreliable measurements.

2. Sensor Calibration

calibration_ctd.ipynb
Calibrates glider oxygen measurements using a ship-based CTD cast.

3. Gridding

Gridding.ipynb
Interpolates calibrated glider data onto regular depth–time grids for further analysis.

4. Instabilities and Geostrophic Velocities

Instabilities_geostrophicVel.ipynb
Computes geostrophic velocities and analyses mesoscale and submesoscale instabilities.

5. Finite-Size Lyapunov Exponents (FSLE)

create_fsle/
Scripts used to generate the FSLE dataset from velocity fields.

fsle.ipynb
Analysis and visualization of FSLE fields to quantify horizontal stirring and strain.

6. Vertical Velocities

vertical_velocity.ipynb
Analysis of vertical velocities.
Results from this notebook are presented in the Supplement of the paper.

7. Figures

combined_figures.ipynb
Generates the combined figures shown in the main manuscript.
