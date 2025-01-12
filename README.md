# Multiple Docking Project

This repository contains files related to the docking simulations of the 5BQ4.PDB receptor with various ligands using AutoDock Vina.

## Files Included:
- **receptor pdbqt file**: Structure of the 5bq4.pdb receptor in pdbqt format.
- **Ligands folder**: Contains multiple ligand pdbqt files for docking simulations.
- **config.txt**: Configuration file for docking simulations.
- **vina.bat**: Windows batch file used to run multiple docking simulations using AutoDock Vina.
- **process_vina_results.py**: Python script that ranks the docking results from best to worst.

- ## Batch File Details:
The `vina.bat` file:
- Sets the receptor and ligand directories.
- Creates an output directory for the docking results.
- Loops through all ligand pdbqt files in the `ligands` folder and runs Vina for each ligand.
- Saves the results in an output folder, naming them based on the ligand.

## How to Use:
1. Ensure AutoDock Vina is installed and available in your system's PATH.
2. Place your receptor pdbqt file and ligand files in the appropriate directories.
3. Edit the `config.txt` to suit your docking parameters.
4. Run the `vina.bat` batch file to perform multiple docking simulations. The script will:
   - Take the receptor file and ligand pdbqt files from the specified directories.
   - Run AutoDock Vina on each ligand.
   - Save the docking results in an `output` folder, with each result named after the ligand followed by `_out.pdbqt` for the docking results and `_log.txt` for the log.
5. Use the `process_vina_results.py` script to sort the docking results from best to worst.

## Requirements:
- AutoDock Vina
- Python (for processing results)
- (Optional) Any additional libraries used in the `process_vina_results.py` script.
