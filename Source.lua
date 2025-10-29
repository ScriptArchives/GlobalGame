if not getgenv().globalgame then
    getgenv().globalgame = {
        Location = game.PlaceId,
        workspace = workspace or game.Workspace,
        Workspace = workspace or game.Workspace
    }
    --------------------------------------------------------
    -- CloneService clones services like cloneref. Use with or without cloneref compatibility.
    getgenv().globalgame.CloneService = function(obj)
        if cloneref and type(cloneref) == "function" then
            return cloneref(obj)
        else
            return obj
        end
    end
    --------------------------------------------------------
    -- The node function returns a service to use it's functions.
    getgenv().globalgame.node = function(service)
        return service
    end
    --------------------------------------------------------
    -- Safely calls a function via pcall
    getgenv().globalgame.safecall = function(func)
        pcall(function() func() end)
    end
end
