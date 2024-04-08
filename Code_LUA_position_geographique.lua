minetest.register_chatcommand("returnpos", {
    func = function(name, param)
        if param == "" then
            return false, "Nom de joueur requis."
        end

        local player = minetest.get_player_by_name(param)

        if not player then
            return false, "il n'y a pas de joueur avec ce nom."
        end

        local pos = player:get_pos()
        local coordinatesForPlayer = "%s est en X = %.2f, Y = %.2f, Z = %.2f"
        local playerPos = coordinatesForPlayer:format(param, pos.x, pos.y, pos.z)
        local count = 1

        databaseLine = "insert into position (Id_Joueur, Nom_Joueur, Pos_X, Pos_Y, Pos_Z) values (".. count ..", "..param..",".. pos.x..", "..pos.y..", "..pos.z..")"
        
        local currentWorldPath = minetest.get_worldpath()
        minetest.safe_file_write(currentWorldPath.."/position_joueur.sql", databaseLine)

        return true, playerPos
    end,
})

minetest.register_chatcommand("returnposall", {
    func = function(name, param)
        local playerList = minetest.get_connected_players()
        local databaseLine = ""

        local count = 1

        for _ in pairs(playerList) do
            local playerName = playerList[count]:get_player_name()
            local player = minetest.get_player_by_name(playerName)

            local pos = player:get_pos()
            local coordinatesForPlayer = "%s est en X = %.2f, Y = %.2f, Z = %.2f"
            local playerPos = coordinatesForPlayer:format(playerName, pos.x, pos.y, pos.z)

            minetest.log(playerPos)

            databaseLine = databaseLine + "insert into joueur (id, nom, pos_x, pos_y, pos_z) values (".. count ..", "..playerName..",".. pos.x..", "..pos.y..", "..pos.z..")\n"

            local currentWorldPath = minetest.get_worldpath()
            minetest.safe_file_write(currentWorldPath.."/liste_positions.sql", databaseLine)

            count = count + 1
        end

        return true
    end,
    })

--[[
function assignPosition(player)
    local pos = player:get_pos()
    local coordinatesForPlayer = "%s est en X = %.2f, Y = %.2f, Z = %.2f"
    local playerPos = coordinatesForPlayer:format(playerName, pos.x, pos.y, pos.z)
    return true, playerPos
end
--]]