# coding:utf-8
import os
from PIL import Image
import sys
dir_back = "backgrounds"
dir_cache = "bmp_cache"
# bmp 转换为jpg
def bmpToJpg():
    for fileName in os.listdir(dir_cache):
        # print(fileName)
        if fileName[-3:] == "bmp":
            newFileName = fileName[0:-3]+"jpg"
            print(newFileName)
            im = Image.open(dir_cache+"\\"+fileName)
            im.save(dir_back + "\\"+newFileName)

def jpgToBmp():
    for fileName in os.listdir(dir_back):
        # print(fileName)
        if fileName[-3:] == "jpg":
            newFileName = fileName[0:-3]+"bmp"
            print(newFileName)
            im = Image.open(dir_back+"\\"+fileName)
            im.save(dir_cache+"\\"+newFileName)

# 删除原来的位图
def deleteImages(file_path, imageFormat):
    command = "del "+file_path+"\\*."+imageFormat
    os.system(command)


def main():
    global dir_back
    global dir_cache
    file_path = sys.argv[1]
    father = os.path.abspath(os.path.dirname(file_path) + os.path.sep + ".")
    dir_back = father + os.path.sep + dir_back
    dir_cache = father + os.path.sep + dir_cache
    flag = sys.argv[2]
    if flag == "1":
        jpgToBmp()
    elif flag == "2":
        bmpToJpg()

if __name__ == '__main__':
    main()