import crc32
var dir = runtime.get_current_dir() 
var f_dir = dir + "\\main.csc"
system.out.println(f_dir)
var codes =  crc32.crc32_file(f_dir)
system.out.println(codes)