minetest.register_chatcommand("listinventory", {
    func = function(name, param)
        if param == "" then
            return false, "Nom de joueur requis."
        end

        local player = minetest.get_player_by_name(param)

        if not player then
            return false, "Il n'y a pas de joueur avec ce nom."
        end

        local inv = minetest.get_inventory({type = "player", name = param})
        local inv_contents = inv:get_list("main")
        local data = ""
        for i = 1, #inv_contents do
            local existing_stack = inv_contents[i]
            if not existing_stack:is_empty() then
                data = data .. existing_stack:get_name() .. "," .. existing_stack:get_count() .. "\n"
            end
        end

        local currentWorldPath = minetest.get_worldpath()
        minetest.safe_file_write(currentWorldPath.."/inventory_player.csv", data)

        return true, data
    end,
})