import shutil

total, used, available = shutil.disk_usage("/")

print(total//(2**30),"GB")
print(used//(2**30),"GB")
print(available//(2**30),"GB")