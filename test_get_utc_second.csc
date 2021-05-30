import process
var pro = process.exec("./get_utc_second.exe",{})
var ifs = pro.out()
var str = ifs.getline()
var p = system.out.println
p(str)

var little_time = str.substr(str.size - 8,8)
var other_time = str.substr(0,str.size - 8)
p(little_time)
p(other_time)