# coding:utf-8
import os
from PIL import Image

# bmp 转换为jpg
def bmpToJpg(file_path):
    for fileName in os.listdir(file_path):
        # print(fileName)
        if fileName[-3:] == "bmp":
            newFileName = fileName[0:fileName.find("_")]+".jpg"
            print(newFileName)
            im = Image.open(file_path+"\\"+fileName)
            im.save(file_path+"\\"+newFileName)

def jpgToBmp(file_path):
    for fileName in os.listdir(file_path):
        # print(fileName)
        if fileName[-3:] == "jpg":
            newFileName = fileName[0:-3]+"bmp"
            print(newFileName)
            im = Image.open(file_path+"\\"+fileName)
            im.save(file_path+"\\"+newFileName)

# 删除原来的位图
def deleteImages(file_path, imageFormat):
    command = "del "+file_path+"\\*."+imageFormat
    os.system(command)


def main():
    file_path = os.path.abspath(__file__)
    father = os.path.abspath(os.path.dirname(file_path) + os.path.sep + ".")
    father += os.path.sep + "target"
    print(father)
    jpgToBmp(father)
    deleteImages(father, "jpg")

if __name__ == '__main__':
    main()