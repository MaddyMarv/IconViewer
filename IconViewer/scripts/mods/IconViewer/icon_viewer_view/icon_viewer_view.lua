local mod = get_mod("IconViewer")
local ScriptWorld = require("scripts/foundation/utilities/script_world")
local ViewElementInputLegend = require("scripts/ui/view_elements/view_element_input_legend/view_element_input_legend")
local ViewElementGrid = require("scripts/ui/view_elements/view_element_grid/view_element_grid")
local definitions = mod:io_dofile("IconViewer/scripts/mods/IconViewer/icon_viewer_view/icon_viewer_view_definitions")

local IconList = {
    { name = "Ammunition (Interaction)", path = "content/ui/materials/hud/interactions/icons/ammunition" },
    { name = "Artillery Strike (Interaction)", path = "content/ui/materials/hud/interactions/icons/artillery_strike" },
    { name = "Attention (Interaction)", path = "content/ui/materials/hud/interactions/icons/attention" },
    { name = "Barber (Interaction)", path = "content/ui/materials/hud/interactions/icons/barber" },
    { name = "Barrel Explosive (Interaction)", path = "content/ui/materials/hud/interactions/icons/barrel_explosive" },
    { name = "Big Fn Grenade (Interaction)", path = "content/ui/materials/hud/interactions/icons/big_fn_grenade" },
    { name = "Contracts (Interaction)", path = "content/ui/materials/hud/interactions/icons/contracts" },
    { name = "Cosmetics Store (Interaction)", path = "content/ui/materials/hud/interactions/icons/cosmetics_store" },
    { name = "Credits Store (Interaction)", path = "content/ui/materials/hud/interactions/icons/credits_store" },
    { name = "Default (Interaction)", path = "content/ui/materials/hud/interactions/icons/default" },
    { name = "Enemy (Interaction)", path = "content/ui/materials/hud/interactions/icons/enemy" },
    { name = "Enemy Priority (Interaction)", path = "content/ui/materials/hud/interactions/icons/enemy_priority" },
    { name = "Environment Alert (Interaction)", path = "content/ui/materials/hud/interactions/icons/environment_alert" },
    { name = "Environment Generic (Interaction)", path = "content/ui/materials/hud/interactions/icons/environment_generic" },
    { name = "Expeditions (Interaction)", path = "content/ui/materials/hud/interactions/icons/expeditions" },
    { name = "Expeditions Death (Interaction)", path = "content/ui/materials/hud/interactions/icons/expeditions_death" },
    { name = "Expeditions Loot (Interaction)", path = "content/ui/materials/hud/interactions/icons/expeditions_loot" },
    { name = "Expeditions Salvage (Interaction)", path = "content/ui/materials/hud/interactions/icons/expeditions_salvage" },
    { name = "Expeditions Zone (Interaction)", path = "content/ui/materials/hud/interactions/icons/expeditions_zone" },
    { name = "Forge (Interaction)", path = "content/ui/materials/hud/interactions/icons/forge" },
    { name = "Grenade (Interaction)", path = "content/ui/materials/hud/interactions/icons/grenade" },
    { name = "Havoc (Interaction)", path = "content/ui/materials/hud/interactions/icons/havoc" },
    { name = "Help (Interaction)", path = "content/ui/materials/hud/interactions/icons/help" },
    { name = "Inbox (Interaction)", path = "content/ui/materials/hud/interactions/icons/inbox" },
    { name = "Landmine Explosive (Interaction)", path = "content/ui/materials/hud/interactions/icons/landmine_explosive" },
    { name = "Landmine Fire (Interaction)", path = "content/ui/materials/hud/interactions/icons/landmine_fire" },
    { name = "Landmine Shock (Interaction)", path = "content/ui/materials/hud/interactions/icons/landmine_shock" },
    { name = "Location (Interaction)", path = "content/ui/materials/hud/interactions/icons/location" },
    { name = "Mission Board (Interaction)", path = "content/ui/materials/hud/interactions/icons/mission_board" },
    { name = "Objective Main (Interaction)", path = "content/ui/materials/hud/interactions/icons/objective_main" },
    { name = "Objective Secondary (Interaction)", path = "content/ui/materials/hud/interactions/icons/objective_secondary" },
    { name = "Objective Side (Interaction)", path = "content/ui/materials/hud/interactions/icons/objective_side" },
    { name = "Penances (Interaction)", path = "content/ui/materials/hud/interactions/icons/penances" },
    { name = "Pocketable Ammo (Interaction)", path = "content/ui/materials/hud/interactions/icons/pocketable_ammo" },
    { name = "Pocketable Corrupted Auspex Scanner (Interaction)", path = "content/ui/materials/hud/interactions/icons/pocketable_corrupted_auspex_scanner" },
    { name = "Pocketable Default (Interaction)", path = "content/ui/materials/hud/interactions/icons/pocketable_default" },
    { name = "Pocketable Medkit (Interaction)", path = "content/ui/materials/hud/interactions/icons/pocketable_medkit" },
    { name = "Pocketable Syringe Ability (Interaction)", path = "content/ui/materials/hud/interactions/icons/pocketable_syringe_ability" },
    { name = "Pocketable Syringe Corruption (Interaction)", path = "content/ui/materials/hud/interactions/icons/pocketable_syringe_corruption" },
    { name = "Pocketable Syringe Power (Interaction)", path = "content/ui/materials/hud/interactions/icons/pocketable_syringe_power" },
    { name = "Pocketable Syringe Speed (Interaction)", path = "content/ui/materials/hud/interactions/icons/pocketable_syringe_speed" },
    { name = "Premium Store (Interaction)", path = "content/ui/materials/hud/interactions/icons/premium_store" },
    { name = "Respawn (Interaction)", path = "content/ui/materials/hud/interactions/icons/respawn" },
    { name = "Resupply (Interaction)", path = "content/ui/materials/hud/interactions/icons/resupply" },
    { name = "Speak (Interaction)", path = "content/ui/materials/hud/interactions/icons/speak" },
    { name = "Time (Interaction)", path = "content/ui/materials/hud/interactions/icons/time" },
    { name = "Time Syringe (Interaction)", path = "content/ui/materials/hud/interactions/icons/time_syringe" },
    { name = "Training Grounds (Interaction)", path = "content/ui/materials/hud/interactions/icons/training_grounds" },
    { name = "Valkyrie Hover (Interaction)", path = "content/ui/materials/hud/interactions/icons/valkyrie_hover" },
    { name = "Valkyrie Payload (Interaction)", path = "content/ui/materials/hud/interactions/icons/valkyrie_payload" },
    { name = "Void Shield (Interaction)", path = "content/ui/materials/hud/interactions/icons/void_shield" },
    { name = "Assault 01 (Circumstance Plain)", path = "content/ui/materials/icons/circumstances/assault_01" },
    { name = "Darkness 01 (Circumstance Plain)", path = "content/ui/materials/icons/circumstances/darkness_01" },
    { name = "Darkness 02 (Circumstance Plain)", path = "content/ui/materials/icons/circumstances/darkness_02" },
    { name = "Darkness 03 (Circumstance Plain)", path = "content/ui/materials/icons/circumstances/darkness_03" },
    { name = "Darkness 04 (Circumstance Plain)", path = "content/ui/materials/icons/circumstances/darkness_04" },
    { name = "Havoc Mutator Ember (Circumstance Plain)", path = "content/ui/materials/icons/circumstances/havoc/havoc_mutator_ember" },
    { name = "Havoc Mutator Encroaching Garden (Circumstance Plain)", path = "content/ui/materials/icons/circumstances/havoc/havoc_mutator_encroaching_garden" },
    { name = "Havoc Mutator Fading Light 1 (Circumstance Plain)", path = "content/ui/materials/icons/circumstances/havoc/havoc_mutator_fading_light_1" },
    { name = "Havoc Mutator Fading Light 2 (Circumstance Plain)", path = "content/ui/materials/icons/circumstances/havoc/havoc_mutator_fading_light_2" },
    { name = "Havoc Mutator Final Toll (Circumstance Plain)", path = "content/ui/materials/icons/circumstances/havoc/havoc_mutator_final_toll" },
    { name = "Havoc Mutator Heinous Rituals (Circumstance Plain)", path = "content/ui/materials/icons/circumstances/havoc/havoc_mutator_heinous_rituals" },
    { name = "Havoc Mutator Moebian21St (Circumstance Plain)", path = "content/ui/materials/icons/circumstances/havoc/havoc_mutator_moebian21st" },
    { name = "Havoc Mutator Nurgle (Circumstance Plain)", path = "content/ui/materials/icons/circumstances/havoc/havoc_mutator_nurgle" },
    { name = "Havoc Mutator Parasite (Circumstance Plain)", path = "content/ui/materials/icons/circumstances/havoc/havoc_mutator_parasite" },
    { name = "Havoc Mutator Rampaging Enemies (Circumstance Plain)", path = "content/ui/materials/icons/circumstances/havoc/havoc_mutator_rampaging_enemies" },
    { name = "Havoc Mutator Rotten Armor (Circumstance Plain)", path = "content/ui/materials/icons/circumstances/havoc/havoc_mutator_rotten_armor" },
    { name = "Havoc Mutator Skin (Circumstance Plain)", path = "content/ui/materials/icons/circumstances/havoc/havoc_mutator_skin" },
    { name = "Havoc Mutator Stimmed Minions (Circumstance Plain)", path = "content/ui/materials/icons/circumstances/havoc/havoc_mutator_stimmed_minions" },
    { name = "Havoc Mutator Rotten Armor (Circumstance Plain)", path = "content/ui/materials/icons/circumstances/havoc_pj/havoc_mutator_rotten_armor" },
    { name = "Hunting Grounds 01 (Circumstance Plain)", path = "content/ui/materials/icons/circumstances/hunting_grounds_01" },
    { name = "Hunting Grounds 02 (Circumstance Plain)", path = "content/ui/materials/icons/circumstances/hunting_grounds_02" },
    { name = "Hunting Grounds 03 (Circumstance Plain)", path = "content/ui/materials/icons/circumstances/hunting_grounds_03" },
    { name = "Less Resistance 01 (Circumstance Plain)", path = "content/ui/materials/icons/circumstances/less_resistance_01" },
    { name = "Live Event 01 (Circumstance Plain)", path = "content/ui/materials/icons/circumstances/live_event_01" },
    { name = "Maelstrom 01 (Circumstance Plain)", path = "content/ui/materials/icons/circumstances/maelstrom_01" },
    { name = "Maelstrom 02 (Circumstance Plain)", path = "content/ui/materials/icons/circumstances/maelstrom_02" },
    { name = "More Resistance 01 (Circumstance Plain)", path = "content/ui/materials/icons/circumstances/more_resistance_01" },
    { name = "Nurgle Manifestation 01 (Circumstance Plain)", path = "content/ui/materials/icons/circumstances/nurgle_manifestation_01" },
    { name = "Placeholder (Circumstance Plain)", path = "content/ui/materials/icons/circumstances/placeholder" },
    { name = "Six One 01 (Circumstance Plain)", path = "content/ui/materials/icons/circumstances/six_one_01" },
    { name = "Special Waves 01 (Circumstance Plain)", path = "content/ui/materials/icons/circumstances/special_waves_01" },
    { name = "Special Waves 02 (Circumstance Plain)", path = "content/ui/materials/icons/circumstances/special_waves_02" },
    { name = "Special Waves 03 (Circumstance Plain)", path = "content/ui/materials/icons/circumstances/special_waves_03" },
    { name = "Ventilation Purge 01 (Circumstance Plain)", path = "content/ui/materials/icons/circumstances/ventilation_purge_01" },
    { name = "Ventilation Purge 02 (Circumstance Plain)", path = "content/ui/materials/icons/circumstances/ventilation_purge_02" },
    { name = "Ventilation Purge 03 (Circumstance Plain)", path = "content/ui/materials/icons/circumstances/ventilation_purge_03" },
    { name = "Ventilation Purge 04 (Circumstance Plain)", path = "content/ui/materials/icons/circumstances/ventilation_purge_04" },
    { name = "Dead (Player State)", path = "content/ui/materials/icons/player_states/dead" },
    { name = "Incapacitated (Player State)", path = "content/ui/materials/icons/player_states/incapacitated" },
    { name = "Lugged (Player State)", path = "content/ui/materials/icons/player_states/lugged" },
    { name = "Auspex Scanner (Pocketable)", path = "content/ui/materials/icons/pocketables/hud/auspex_scanner" },
    { name = "Landmine Explosive (Pocketable)", path = "content/ui/materials/icons/pocketables/hud/landmine_explosive" },
    { name = "Landmine Fire (Pocketable)", path = "content/ui/materials/icons/pocketables/hud/landmine_fire" },
    { name = "Landmine Shock (Pocketable)", path = "content/ui/materials/icons/pocketables/hud/landmine_shock" },
    { name = "Party Ammo Crate (Pocketable)", path = "content/ui/materials/icons/pocketables/hud/small/party_ammo_crate" },
    { name = "Party Corrupted Auspex Scanner (Pocketable)", path = "content/ui/materials/icons/pocketables/hud/small/party_corrupted_auspex_scanner" },
    { name = "Party Grimoire (Pocketable)", path = "content/ui/materials/icons/pocketables/hud/small/party_grimoire" },
    { name = "Party Medic Crate (Pocketable)", path = "content/ui/materials/icons/pocketables/hud/small/party_medic_crate" },
    { name = "Party Scripture (Pocketable)", path = "content/ui/materials/icons/pocketables/hud/small/party_scripture" },
    { name = "Party Syringe Ability (Pocketable)", path = "content/ui/materials/icons/pocketables/hud/small/party_syringe_ability" },
    { name = "Party Syringe Corruption (Pocketable)", path = "content/ui/materials/icons/pocketables/hud/small/party_syringe_corruption" },
    { name = "Party Syringe Power (Pocketable)", path = "content/ui/materials/icons/pocketables/hud/small/party_syringe_power" },
    { name = "Party Syringe Speed (Pocketable)", path = "content/ui/materials/icons/pocketables/hud/small/party_syringe_speed" },
    { name = "Void Shield (Pocketable)", path = "content/ui/materials/icons/pocketables/hud/void_shield" },
    { name = "Assault 01 (Circumstance Glowing)", path = "content/ui/materials/mission_board/circumstances/assault_01" },
    { name = "Darkness 01 (Circumstance Glowing)", path = "content/ui/materials/mission_board/circumstances/darkness_01" },
    { name = "Darkness 02 (Circumstance Glowing)", path = "content/ui/materials/mission_board/circumstances/darkness_02" },
    { name = "Darkness 03 (Circumstance Glowing)", path = "content/ui/materials/mission_board/circumstances/darkness_03" },
    { name = "Darkness 04 (Circumstance Glowing)", path = "content/ui/materials/mission_board/circumstances/darkness_04" },
    { name = "Expedition Enviromental Intel (Circumstance Glowing)", path = "content/ui/materials/mission_board/circumstances/expedition_enviromental_intel" },
    { name = "Hunting Grounds 01 (Circumstance Glowing)", path = "content/ui/materials/mission_board/circumstances/hunting_grounds_01" },
    { name = "Hunting Grounds 02 (Circumstance Glowing)", path = "content/ui/materials/mission_board/circumstances/hunting_grounds_02" },
    { name = "Hunting Grounds 03 (Circumstance Glowing)", path = "content/ui/materials/mission_board/circumstances/hunting_grounds_03" },
    { name = "Less Resistance 01 (Circumstance Glowing)", path = "content/ui/materials/mission_board/circumstances/less_resistance_01" },
    { name = "Live Event 01 (Circumstance Glowing)", path = "content/ui/materials/mission_board/circumstances/live_event_01" },
    { name = "Maelstrom 01 (Circumstance Glowing)", path = "content/ui/materials/mission_board/circumstances/maelstrom_01" },
    { name = "Maelstrom 02 (Circumstance Glowing)", path = "content/ui/materials/mission_board/circumstances/maelstrom_02" },
    { name = "More Resistance 01 (Circumstance Glowing)", path = "content/ui/materials/mission_board/circumstances/more_resistance_01" },
    { name = "Nurgle Manifestation 01 (Circumstance Glowing)", path = "content/ui/materials/mission_board/circumstances/nurgle_manifestation_01" },
    { name = "Six One 01 (Circumstance Glowing)", path = "content/ui/materials/mission_board/circumstances/six_one_01" },
    { name = "Special Waves 01 (Circumstance Glowing)", path = "content/ui/materials/mission_board/circumstances/special_waves_01" },
    { name = "Special Waves 02 (Circumstance Glowing)", path = "content/ui/materials/mission_board/circumstances/special_waves_02" },
    { name = "Special Waves 03 (Circumstance Glowing)", path = "content/ui/materials/mission_board/circumstances/special_waves_03" },
    { name = "Ventilation Purge 01 (Circumstance Glowing)", path = "content/ui/materials/mission_board/circumstances/ventilation_purge_01" },
    { name = "Ventilation Purge 02 (Circumstance Glowing)", path = "content/ui/materials/mission_board/circumstances/ventilation_purge_02" },
    { name = "Ventilation Purge 03 (Circumstance Glowing)", path = "content/ui/materials/mission_board/circumstances/ventilation_purge_03" },
    { name = "Ventilation Purge 04 (Circumstance Glowing)", path = "content/ui/materials/mission_board/circumstances/ventilation_purge_04" },
}


IconViewerView = class("IconViewerView", "BaseView")

IconViewerView.init = function (self, settings)
	IconViewerView.super.init(self, definitions, settings)
end

IconViewerView.on_enter = function (self)
	IconViewerView.super.on_enter(self)
	self:_setup_input_legend()
	self:_setup_color_table_grid()
	self:_setup_control_grid()
end

IconViewerView._setup_input_legend = function (self)
	self._input_legend_element = self:_add_element(ViewElementInputLegend, "input_legend", 100)
	local legend_inputs = self._definitions.legend_inputs

	for i = 1, #legend_inputs do
		local legend_input = legend_inputs[i]
		local on_pressed_callback = legend_input.on_pressed_callback and callback(self, legend_input.on_pressed_callback)

		self._input_legend_element:add_entry(
			legend_input.display_name,
			legend_input.input_action,
			legend_input.visibility_function,
			on_pressed_callback,
			legend_input.alignment
		)
	end
end

IconViewerView.present_grid_layout = function (self, layout)
	local layout_copy = table.clone(layout)
	local spacing_entry = { widget_type = "color_table_spacing_vertical" }

	table.insert(layout_copy, 1, spacing_entry)
	table.insert(layout_copy, #layout_copy + 1, spacing_entry)
	local left_click_callback = callback(self, "cb_on_icon_left_pressed")
	self._color_table_element:present_grid_layout(layout_copy, definitions.blueprints, left_click_callback)
end

IconViewerView._setup_color_table_grid = function (self)
	self._color_table_element = self:_add_element(ViewElementGrid, "color_table", 103, definitions.color_table_grid_settings, "color_table_pivot")
	self._color_table_element:set_visibility(true)
	self._color_table_element:present_grid_layout({}, {})
	self._color_table_element._selected_icon = nil
	local layout = {}

	for _, icon_data in ipairs(IconList) do
		layout[#layout + 1] = {
			widget_type = "icon_box",
			icon_name = icon_data.name,
			icon_path = icon_data.path,
		}
	end

	table.sort(layout, function (a, b)
		return a.icon_name < b.icon_name
	end)
	self._layout = layout

	self:present_grid_layout(layout)
end

IconViewerView._setup_control_grid = function (self)
	self._control_element = self:_add_element(ViewElementGrid, "control", 103, definitions.control_grid_settings, "control_pivot")
	self._control_element:set_visibility(false)
	self._control_element:present_grid_layout({}, {})
end

IconViewerView._update_control_grid = function (self, icon_path)
	local layout = {
		{ widget_type = "control_spacing_vertical" },
		{ widget_type = "icon_header", icon_path = icon_path },
		{ widget_type = "copy_text_box", copy_type = "Path", text_to_copy = icon_path },
	}

	local left_click_callback = callback(self, "cb_on_copy_left_pressed")

	self._color_table_element._selected_icon = icon_path
	self._control_element:present_grid_layout(layout, definitions.blueprints, left_click_callback)
	self._control_element:set_visibility(true)
end

IconViewerView.cb_on_icon_left_pressed = function (self, widget, element)
	if widget and widget.content and widget.content.icon_path then
		self:_update_control_grid(widget.content.icon_path)
	end
end

IconViewerView.cb_on_copy_left_pressed = function (self, widget, element)
	if widget and widget.content and widget.content.text_to_copy and widget.content.copy_type then
		Clipboard.put(widget.content.text_to_copy)
		mod:notify(mod:localize("msg_copied", widget.content.copy_type))
	end
end

IconViewerView._on_back_pressed = function (self)
	Managers.ui:close_view(self.view_name)
end

IconViewerView._destroy_renderer = function (self)
	if self._offscreen_renderer then
		self._offscreen_renderer = nil
	end

	local world_data = self._offscreen_world

	if world_data then
		Managers.ui:destroy_renderer(world_data.renderer_name)
		ScriptWorld.destroy_viewport(world_data.world, world_data.viewport_name)
		Managers.ui:destroy_world(world_data.world)

		world_data = nil
	end
end

IconViewerView.update = function (self, dt, t, input_service)
	return IconViewerView.super.update(self, dt, t, input_service)
end

IconViewerView.draw = function (self, dt, t, input_service, layer)
	IconViewerView.super.draw(self, dt, t, input_service, layer)
end

IconViewerView._draw_widgets = function (self, dt, t, input_service, ui_renderer, render_settings)
	IconViewerView.super._draw_widgets(self, dt, t, input_service, ui_renderer, render_settings)
end

IconViewerView.on_exit = function (self)
	IconViewerView.super.on_exit(self)
	self:_destroy_renderer()
end

return IconViewerView
