import os
import re
import zipfile
R = re.compile(r"(\d+)([.]\d+)?[-](.+)")

_, fileName = os.path.split(os.getcwd())
Rm = R.match(fileName)
num = Rm.group(1) + str(Rm.group(2) or '')

fileList = []

for root, dirs, files in os.walk("."):
    for file in files:
        name, ext = os.path.splitext(file)
        if (ext == ".v" and name != "glbl" or ext == ".mif" or ext == ".ngc" or ext[0:4] == ".doc" and name[0] != "~"):
            fileList.append(os.path.join(root, file))
            
zf = zipfile.ZipFile("1652270-冯舜-%s.zip" % num, "w", zipfile.zlib.DEFLATED)
for file in fileList:
    _, fileName = os.path.split(file)
    zf.write(file, fileName)
zf.close()