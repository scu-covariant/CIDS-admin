import images_func
import csdbc_mysql
import db_connector
import trans
var account = "root"
var password = "root"
var db = db_connector.start(account,password)
images_func.db = db


images_func.download_images()
