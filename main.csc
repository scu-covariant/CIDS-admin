import imgui
import imgui_font
using imgui

system.file.remove("./imgui.ini")
var app=window_application(get_monitor_width(0),get_monitor_height(0),"四川大学物资管理系统")
# fonts
var font=add_font_extend_cn(imgui_font.source_han_sans, 32)
var large_font = add_font_extend_cn(imgui_font.source_han_sans, 54)
var tiny_font = add_font_extend_cn(imgui_font.source_han_sans,18)
# accounts
var account = "Ora"
var password = "123456"
# window status
var if_mywindow = true
# images
# message
var pass_message = ""

#data cache
set_font_scale(1.0) 

function mywindow()
    begin_window("审核提交##choose",if_mywindow,{})
    set_window_size(vec2(720,540))
        columns(5,"",true)
        var opened=true
        system.out.println(range(5))
        foreach i in range(5)
            foreach j in range(5)
                selectable("dick",opened)
                next_column()
            end
            separator()
        end
    end_window()
end

while !app.is_closed()
    app.prepare()
        style_color_light()
        push_font(font)
        if if_mywindow == true
            mywindow()
        end
        pop_font()    
    app.render()
end