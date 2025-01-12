@echo off
setlocal enabledelayedexpansion

rem Receptor ve ligandlarınızın yollarını buraya ekleyin
set "receptor=C:\Users\139sa\Desktop\best\receptor.pdbqt"
set "output_dir=C:\Users\139sa\Desktop\best\output"
set "ligand_folder=C:\Users\139sa\Desktop\best\ligands"  rem Ligandlar klasörünü burada belirtin

rem Çıktı dizini yoksa oluşturulacak
if not exist "!output_dir!" (
    mkdir "!output_dir!"
)

rem Ligand dosyalarını döngü ile işle
for %%f in (%ligand_folder%\*.pdbqt) do (
    set "ligand=%%f"
    set "ligand_name=%%~nf"
    echo İşleniyor: !ligand_name!
    "C:\Program Files (x86)\The Scripps Research Institute\Vina\vina.exe" --receptor "!receptor!" --ligand "!ligand!" --config "C:\Users\139sa\Desktop\best\config.txt" --out "!output_dir!\!ligand_name!_out.pdbqt" --log "!output_dir!\!ligand_name!_log.txt"
)

pause
endlocal
