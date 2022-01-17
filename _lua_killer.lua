
pid=###

timer = mp.add_periodic_timer(3, function()
   
   if io.open("/proc/" .. pid, "r") == nil then
        mp.command("quit")
    end

end)