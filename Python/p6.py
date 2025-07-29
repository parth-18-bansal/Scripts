# Automatically clean Downloads folder weekly.

from pathlib import Path
import shutil

exclude = {".keep", "Important"}

dir_path = Path("/home/parth/downloads")

for file in dir_path.iterdir():
    if(file.name in exclude):
        continue
    if(file.is_file()):
        file.unlink()
    elif(file.is_dir()):
        shutil.rmtree(file)