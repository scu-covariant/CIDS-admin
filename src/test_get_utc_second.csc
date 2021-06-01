import process
var pro = process.exec("./get_utc_second.exe",{})
var ifs = pro.out()
var str = ifs.getline()
var p = system.out.println
p(str)
var time = to_integer(str)
iostream.setprecision(20)
var little_time = str.substr(str.size - 8,8)
var other_time = str.substr(0,str.size - 8)
p(time)
p((time+1))