Vortex.Log("Hello World !")

Vortex.AddOutputEvent("save_all", function(args)
    Vortex.Log("Save all event triggered !")
end, "none")