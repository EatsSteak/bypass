(function()
    local old; old = hookfunction(getrawmetatable(game).__namecall, newcclosure(function(...)
        if getnamecallmethod() == "FindFirstChild" then
            local Self, Name = ...;
            if tostring(Name) == "Humanoid" then
                local s = getcallingscript();
                if s and (tostring(s):match("\n") or tostring(s) == "BAC_Client") then
                    print("FUCK ASSASSIN");
                    return wait(9e9);
                end;
            end;
        end;
        return old(...);
    end));
end)();