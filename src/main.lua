Vortex.Log("Hello World !")

Vortex.AddOutputEvent("save_all", function(args)
    Vortex.Log("Save all event triggered !")
end, "none")

Vortex.Window("Hello World", function()
    Cherry.DrawRect(100, 100, 500, 500, "#FF0000FF")
    if Cherry.IsMouseClickedOnCurrentPos(100, 100, 500, 500, 0) then 
        Vortex.Log("Clicked !!!")
    end
end, "none")


Vortex.Window("Hello World2", "src/interfaces/test.lua", "none")
