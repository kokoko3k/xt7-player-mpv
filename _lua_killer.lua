
pid=###

timer = mp.add_periodic_timer(3, function()
   
   if os.execute( "cd /proc/" .. pid) == nil then
        mp.command("quit")
    end

end)