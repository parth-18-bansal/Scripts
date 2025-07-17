# How to list all files in a directory?

from pathlib import Path

# this creates the Path object, after that we can do all the path realted operations
directory = Path("./")

# listing of the files and folders in that path
for f in directory.iterdir():
    print(f)

# to chech whether that directory is exist or not
print(directory.exists())

#List only files
files = [f.name for f in directory.iterdir() if f.is_file()]
print(files)


# Path.iter.dir() = it traverse only current dir
# is_file() = it check whether a thing is file or not