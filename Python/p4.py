import os
import heapq

def list_n_larget_files(n,directory):
    files_with_size = []

    for root,_,files in os.walk(directory):
        for file in files:
            filePath = os.path.join(root,file)
            fileSize = os.path.getsize(filePath)
            files_with_size.append((fileSize,filePath))

    n_largest_files = heapq.nlargest(n,files_with_size)

    for size,file in n_largest_files:
        print(f"{size/(1024*1024*1024):.2f} MB\t{file}")

list_n_larget_files(10,"./")

# getSize = to get the size
# join = to create the full path
# nlargest = for getting top n 
