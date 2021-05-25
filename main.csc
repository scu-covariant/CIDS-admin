import picasso
import imgui
using imgui
struct login_page extends picasso.base_window
    function initialize() override
        this.win_flags = {flags.no_collapse,flags.no_resize,flags.no_move}
        this.title = "SCU-CIDS"
        this.on_close.add_listener([](win)->system.exit(0))
        this.show()
    end

end

var win = gcnew login_page
win->initialize()