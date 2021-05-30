import images_func
import csdbc_mysql
import db_connector
import trans
var account = ""
var password = ""
var db = db_connector.start(account,password)
images_func.db = db

images_func.update_sigle_image(1,"普通照片")
images_func.update_sigle_image(2,"草草")
images_func.update_sigle_image(3,"叶叶")
images_func.update_sigle_image(4,"我是金轮")
images_func.update_sigle_image(22,"蹦跶人")

images_func.download_images()