local SL = lord.require_intllib()

minetest.register_craftitem("bones:bonedust", {
	description = SL("Bone Dust"),
	inventory_image = "bones_bonedust.png",
})

minetest.register_craftitem("bones:bone", {
	description = SL("Bone"),
	inventory_image = "bones_bone.png",
})

minetest.register_tool("bones:bone_scythe", {
	description = SL("Bone Scythe"),
	inventory_image = "bones_scythe.png",
	wield_scale = {x=2,y=2,z=1},
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.0, [2]=1.00, [3]=0.35}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	}
})

if minetest.settings:get_bool("msg_loading_mods") then minetest.log("action", minetest.get_current_modname().." mod LOADED") end
