# How to recursively list all files in subdirectories?

from pathlib import Path

directory = Path("../.")

# for only txt file .rglob("*.py")

for file in directory.rglob("*.sh"): 
    if file.is_file():
        print(file)


# Path.rglob() = traverse recursively and go into the subfolders

