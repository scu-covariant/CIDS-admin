import udpsocket
var cnt = 1
loop
    var mes = "hello " + to_string(cnt)
    cnt++
    udpsocket.send(mes,1235,"127.0.0.1",1234)
    system.out.println(mes)
    runtime.delay(1000)
end