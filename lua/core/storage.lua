Storage = Storage or {}
Storage.TableName = "theobtey_pns"


/*
    Cache the sql library to slightly increase performances
*/
local sql = sql


/*
    Sql table creation queries
*/
local Storage.sqlTableCreationQueries = Storage.sqlTableCreationQueries or {
    ["sqlite"] = {
        [Storage.TableName] = [[ CREATE TABLE IF NOT EXISTS theobtey_pns (steamid TEXT, name TEXT) ]]
    },
    ["mysql"] = {
        [Storage.TableName] = [[ CREATE TABLE IF NOT EXISTS theobtey_pns (steamid VARCHAR(30), name VARCHAR(255)) ]]
    }
}


/*
    Init the database
*/
function Storage:InitDB()
end


/*
    Get the name of a given player
*/
function Storage:GetPlayerName(sSteamID)
end


/*
    Save the name of a player
*/
function Storage:SavePlayerName(pPlayer, sName)
end


Storage:InitDB()


/*
    Return the Storage module
*/
return Storage