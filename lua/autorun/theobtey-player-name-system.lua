TOPNS = TOPNS or {}

if SERVER then
    
    TOPNS.Storage = include("core/storage.lua")
    include("core/name_validator.lua")
    include("core/name_handler.lua")

end

if CLIENT then
    


end