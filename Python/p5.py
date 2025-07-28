# Clean temporary files from /tmp

import shutil
from pathlib import Path

dir_path = Path("/tmp")

for file in dir_path.iterdir():
    try:
        if(file.is_file() or file.is_symlink()):
            file.unlink()
        elif(file.is_dir()):
            shutil.rmtree(file)
    except Exception as e:
        print(f"Failed to remove {file}: {e}")


# os.walk = travels recursevily and also list the files in the subdir.
# but path.iterdir = only list files and folder in current dir not subdir. 