import udpsocket
loop
    var mes = udpsocket.recive(1234, 100)
    system.out.println(mes)
end