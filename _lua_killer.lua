
pid=###

timer = mp.add_periodic_timer(0.1, function()
   
   if os.execute( "cd /proc/" .. pid) == nil then
        mp.command("quit")
    end

end)