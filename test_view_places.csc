import view_places
import imgui,imgui_font,csdbc_mysql
import db_connector
using imgui
system.file.remove("./imgui.ini")
var account = ""
var password = ""
var db = db_connector.start(account,password)
view_places.init(db,account)
# imgui states
var monitor_w = get_monitor_width(0)
var monitor_h = get_monitor_height(0)
var app=window_application(get_monitor_width(0),get_monitor_height(0),"测试表格和各个控件的衔接")

# fonts
var font=add_font_extend_cn(imgui_font.source_han_sans, 32)
var large_font = add_font_extend_cn(imgui_font.source_han_sans, 54)
var tiny_font = add_font_extend_cn(imgui_font.source_han_sans,18)
set_font_scale(1)

# window size !!!!!!!！！注意！后续的你们所有的操作窗口按照这个标准来！！！！
var operating_window_size = vec2(to_integer(monitor_w/4*3),to_integer(monitor_h/8*7))
var operating_window_location = vec2(to_integer(monitor_w/4),to_integer(monitor_h/8))

# window status
var if_mywindow = true

# 渲染逻辑
while !app.is_closed()
    app.prepare()
        style_color_light()
        push_font(font)
        if if_mywindow == true
            view_places.mywindow(if_mywindow)
        end
        pop_font()    
    app.render()
end