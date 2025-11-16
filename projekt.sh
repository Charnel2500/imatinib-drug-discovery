# Przejdź do folderu z projektem
cd ~/Imatinib_Drug_Design

# Przygotuj białko i ligand (Meeko w Pythonie lub obabel)
obabel -ipdb 1IEP.pdb -opdbqt -O receptor.pdbqt -xr
obabel -imol {top1_id}.mol -opdbqt -O ligand.pdbqt

# Docking
./bin/vina --receptor receptor.pdbqt --ligand ligand.pdbqt --out result.pdbqt \
           --center_x 20 --center_y 30 --center_z 40 \
           --size_x 20 --size_y 20 --size_z 20 \
           --exhaustiveness 32
