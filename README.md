# Multiple Docking Project

This repository contains files related to the docking simulations of the 5BQ4.PDB receptor with various ligands using AutoDock Vina.

## Files Included:
- **receptor pdbqt file**: Structure of the 5bq4.pdb receptor in pdbqt format.
- **Ligands folder**: Contains 4343 ligand pdbqt files for docking simulations.
- **config.txt**: Configuration file for docking simulations.
- **vina batch file**: Windows batch file used to run multiple docking simulations using AutoDock Vina.
- **process_vina_results.py**: Python script that ranks the docking results from best to worst.

## How to Use:
1. Ensure AutoDock Vina is installed and available in your system's PATH.
2. Place your receptor pdbqt file and ligand files in the appropriate directories.
3. Edit the `config.txt` to suit your docking parameters.
4. Run the `vina` batch file to perform multiple docking simulations.
5. Use the `process_vina_results.py` script to sort the docking results.

## Requirements:
- AutoDock Vina
- Python (for processing results)
- (Optional) Any additional libraries used in the `process_vina_results.py` script.
