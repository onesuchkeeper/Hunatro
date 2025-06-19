local Hunatro = SMODS.current_mod

function Hunatro:debugMessage(message)
	sendDebugMessage('[Hunatro] ' .. (message or 'nil'))
end

--inserts b into a with b taking priority
function DeepMerge(tableA, tableB)
	if tableA == nil then return tableB end
	if tableB == nil then return tableA end

	for key,value in pairs(tableB) do
		if tableA[key] and type(tableA[key]) == 'table' then
			DeepMerge(tableA[key], value);
		else
			tableA[key] = value
		end
	end
end

Hunatro:debugMessage("Launching")

--icon
SMODS.Atlas({
	key = "modicon",
	path = "icon.png",
	px = 32,
	py = 32
})

--hearts--
SMODS.Atlas{
    key = "hunatro_sexuality_1",
    path = "hunatro_sexuality_1.png",
    px = 71,
    py = 95,
	atlas_table = 'ASSET_ATLAS',
	prefix_config = { key = false }
}

SMODS.Atlas{
    key = "hunatro_sexuality_2",
    path = "hunatro_sexuality_2.png",
    px = 71,
    py = 95,
	atlas_table = 'ASSET_ATLAS',
	prefix_config = { key = false }
}

SMODS.Atlas{
    key = "hunatro_sexuality_3",
    path = "hunatro_sexuality_3.png",
    px = 71,
    py = 95,
	atlas_table = 'ASSET_ATLAS',
	prefix_config = { key = false }
}

SMODS.Atlas{
    key = "hunatro_sexuality_4",
    path = "hunatro_sexuality_4.png",
    px = 71,
    py = 95,
	atlas_table = 'ASSET_ATLAS',
	prefix_config = { key = false }
}

SMODS.Atlas{
    key = "hunatro_sexuality_5",
    path = "hunatro_sexuality_5.png",
    px = 71,
    py = 95,
	atlas_table = 'ASSET_ATLAS',
	prefix_config = { key = false }
}

SMODS.Atlas{
    key = "hunatro_sexuality_6",
    path = "hunatro_sexuality_6.png",
    px = 71,
    py = 95,
	atlas_table = 'ASSET_ATLAS',
	prefix_config = { key = false }
}

SMODS.DeckSkin{
	key = "hunatro_sexuality",
	suit = 'Hearts',
	palettes = {
		{
			key = '1',
			ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace"},
			display_ranks = {"Ace", 'King', 'Queen', 'Jack' , '10', '9', '8'},
			atlas = 'hunatro_sexuality_1',
			posStyle = 'suit',
			colour = HEX('e24b3b')
		},
		{
			key = '2',
			ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace"},
			display_ranks = {"Ace", 'King', 'Queen', 'Jack' , '10', '9', '8'},
			atlas = 'hunatro_sexuality_6',
			posStyle = 'suit',
			colour = HEX('e24b3b')
		},
		{
			key = '3',
			ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace"},
			display_ranks = {"Ace", 'King', 'Queen', 'Jack' , '10', '9', '8'},
			atlas = 'hunatro_sexuality_3',
			posStyle = 'suit',
			colour = HEX('e24b3b')
		},
		{
			key = '4',
			ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace"},
			display_ranks = {"Ace", 'King', 'Queen', 'Jack' , '10', '9', '8'},
			atlas = 'hunatro_sexuality_4',
			posStyle = 'suit',
			colour = HEX('e24b3b')
		},
		{
			key = '5',
			ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace"},
			display_ranks = {"Ace", 'King', 'Queen', 'Jack' , '10', '9', '8'},
			atlas = 'hunatro_sexuality_5',
			posStyle = 'suit',
			colour = HEX('e24b3b')
		},
		{
			key = '6',
			ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace"},
			display_ranks = {"Ace", 'King', 'Queen', 'Jack' , '10', '9', '8'},
			atlas = 'hunatro_sexuality_2',
			posStyle = 'suit',
			colour = HEX('e24b3b')
		}
	},
	loc_txt = {
		['en-us'] = 'HuniePop'
	}
}

--clubs--
SMODS.Atlas{
    key = "hunatro_flirtation_1",
    path = "hunatro_flirtation_1.png",
    px = 71,
    py = 95,
	atlas_table = 'ASSET_ATLAS',
	prefix_config = { key = false }
}

SMODS.Atlas{
    key = "hunatro_flirtation_2",
    path = "hunatro_flirtation_2.png",
    px = 71,
    py = 95,
	atlas_table = 'ASSET_ATLAS',
	prefix_config = { key = false }
}

SMODS.Atlas{
    key = "hunatro_flirtation_3",
    path = "hunatro_flirtation_3.png",
    px = 71,
    py = 95,
	atlas_table = 'ASSET_ATLAS',
	prefix_config = { key = false }
}

SMODS.Atlas{
    key = "hunatro_flirtation_4",
    path = "hunatro_flirtation_4.png",
    px = 71,
    py = 95,
	atlas_table = 'ASSET_ATLAS',
	prefix_config = { key = false }
}

SMODS.Atlas{
    key = "hunatro_flirtation_5",
    path = "hunatro_flirtation_5.png",
    px = 71,
    py = 95,
	atlas_table = 'ASSET_ATLAS',
	prefix_config = { key = false }
}

SMODS.Atlas{
    key = "hunatro_flirtation_6",
    path = "hunatro_flirtation_6.png",
    px = 71,
    py = 95,
	atlas_table = 'ASSET_ATLAS',
	prefix_config = { key = false }
}

SMODS.DeckSkin{
	key = "hunatro_flirtation",
	suit = 'Clubs',
	palettes = {
		{
			key = '1',
			ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace"},
			display_ranks = {"Ace", 'King', 'Queen', 'Jack' , '10', '9', '8'},
			atlas = 'hunatro_flirtation_1',
			posStyle = 'suit',
			colour = HEX('87b445')
		},
		{
			key = '2',
			ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace"},
			display_ranks = {"Ace", 'King', 'Queen', 'Jack' , '10', '9', '8'},
			atlas = 'hunatro_flirtation_6',
			posStyle = 'suit',
			colour = HEX('87b445')
		},
		{
			key = '3',
			ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace"},
			display_ranks = {"Ace", 'King', 'Queen', 'Jack' , '10', '9', '8'},
			atlas = 'hunatro_flirtation_3',
			posStyle = 'suit',
			colour = HEX('87b445')
		},
		{
			key = '4',
			ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace"},
			display_ranks = {"Ace", 'King', 'Queen', 'Jack' , '10', '9', '8'},
			atlas = 'hunatro_flirtation_4',
			posStyle = 'suit',
			colour = HEX('87b445')
		},
		{
			key = '5',
			ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace"},
			display_ranks = {"Ace", 'King', 'Queen', 'Jack' , '10', '9', '8'},
			atlas = 'hunatro_flirtation_5',
			posStyle = 'suit',
			colour = HEX('87b445')
		},
		{
			key = '6',
			ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace"},
			display_ranks = {"Ace", 'King', 'Queen', 'Jack' , '10', '9', '8'},
			atlas = 'hunatro_flirtation_2',
			posStyle = 'suit',
			colour = HEX('87b445')
		}
	},
	loc_txt = {
		['en-us'] = 'HuniePop'
	}
}

--diamonds--
SMODS.Atlas{
    key = "hunatro_romance_1",
    path = "hunatro_romance_1.png",
    px = 71,
    py = 95,
	atlas_table = 'ASSET_ATLAS',
	prefix_config = { key = false }
}

SMODS.Atlas{
    key = "hunatro_romance_2",
    path = "hunatro_romance_2.png",
    px = 71,
    py = 95,
	atlas_table = 'ASSET_ATLAS',
	prefix_config = { key = false }
}

SMODS.Atlas{
    key = "hunatro_romance_3",
    path = "hunatro_romance_3.png",
    px = 71,
    py = 95,
	atlas_table = 'ASSET_ATLAS',
	prefix_config = { key = false }
}

SMODS.Atlas{
    key = "hunatro_romance_4",
    path = "hunatro_romance_4.png",
    px = 71,
    py = 95,
	atlas_table = 'ASSET_ATLAS',
	prefix_config = { key = false }
}

SMODS.Atlas{
    key = "hunatro_romance_5",
    path = "hunatro_romance_5.png",
    px = 71,
    py = 95,
	atlas_table = 'ASSET_ATLAS',
	prefix_config = { key = false }
}

SMODS.Atlas{
    key = "hunatro_romance_6",
    path = "hunatro_romance_6.png",
    px = 71,
    py = 95,
	atlas_table = 'ASSET_ATLAS',
	prefix_config = { key = false }
}

SMODS.DeckSkin{
	key = "hunatro_romance",
	suit = 'Diamonds',
	palettes = {
		{
			key = '1',
			ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace"},
			display_ranks = {"Ace", 'King', 'Queen', 'Jack' , '10', '9', '8'},
			atlas = 'hunatro_romance_1',
			posStyle = 'suit',
			colour = HEX('e1893d')
		},
		{
			key = '2',
			ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace"},
			display_ranks = {"Ace", 'King', 'Queen', 'Jack' , '10', '9', '8'},
			atlas = 'hunatro_romance_6',
			posStyle = 'suit',
			colour = HEX('e1893d')
		},
		{
			key = '3',
			ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace"},
			display_ranks = {"Ace", 'King', 'Queen', 'Jack' , '10', '9', '8'},
			atlas = 'hunatro_romance_3',
			posStyle = 'suit',
			colour = HEX('e1893d')
		},
		{
			key = '4',
			ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace"},
			display_ranks = {"Ace", 'King', 'Queen', 'Jack' , '10', '9', '8'},
			atlas = 'hunatro_romance_4',
			posStyle = 'suit',
			colour = HEX('e1893d')
		},
		{
			key = '5',
			ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace"},
			display_ranks = {"Ace", 'King', 'Queen', 'Jack' , '10', '9', '8'},
			atlas = 'hunatro_romance_5',
			posStyle = 'suit',
			colour = HEX('e1893d')
		},
		{
			key = '6',
			ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace"},
			display_ranks = {"Ace", 'King', 'Queen', 'Jack' , '10', '9', '8'},
			atlas = 'hunatro_romance_2',
			posStyle = 'suit',
			colour = HEX('e1893d')
		}
	},
	loc_txt = {
		['en-us'] = 'HuniePop'
	}
}

--spades--
SMODS.Atlas{
    key = "hunatro_talent_1",
    path = "hunatro_talent_1.png",
    px = 71,
    py = 95,
	atlas_table = 'ASSET_ATLAS',
	prefix_config = { key = false }
}

SMODS.Atlas{
    key = "hunatro_talent_2",
    path = "hunatro_talent_2.png",
    px = 71,
    py = 95,
	atlas_table = 'ASSET_ATLAS',
	prefix_config = { key = false }
}

SMODS.Atlas{
    key = "hunatro_talent_3",
    path = "hunatro_talent_3.png",
    px = 71,
    py = 95,
	atlas_table = 'ASSET_ATLAS',
	prefix_config = { key = false }
}

SMODS.Atlas{
    key = "hunatro_talent_4",
    path = "hunatro_talent_4.png",
    px = 71,
    py = 95,
	atlas_table = 'ASSET_ATLAS',
	prefix_config = { key = false }
}

SMODS.Atlas{
    key = "hunatro_talent_5",
    path = "hunatro_talent_5.png",
    px = 71,
    py = 95,
	atlas_table = 'ASSET_ATLAS',
	prefix_config = { key = false }
}

SMODS.Atlas{
    key = "hunatro_talent_6",
    path = "hunatro_talent_6.png",
    px = 71,
    py = 95,
	atlas_table = 'ASSET_ATLAS',
	prefix_config = { key = false }
}

SMODS.DeckSkin{
	key = "hunatro_talent",
	suit = 'Spades',
	palettes = {
		{
			key = '1',
			ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace"},
			display_ranks = {"Ace", 'King', 'Queen', 'Jack' , '10', '9', '8'},
			atlas = 'hunatro_talent_1',
			posStyle = 'suit',
			colour = HEX("489cd7")
		},
		{
			key = '2',
			ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace"},
			display_ranks = {"Ace", 'King', 'Queen', 'Jack' , '10', '9', '8'},
			atlas = 'hunatro_talent_6',
			posStyle = 'suit',
			colour = HEX("489cd7")
		},
		{
			key = '3',
			ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace"},
			display_ranks = {"Ace", 'King', 'Queen', 'Jack' , '10', '9', '8'},
			atlas = 'hunatro_talent_3',
			posStyle = 'suit',
			colour = HEX("489cd7")
		},
		{
			key = '4',
			ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace"},
			display_ranks = {"Ace", 'King', 'Queen', 'Jack' , '10', '9', '8'},
			atlas = 'hunatro_talent_4',
			posStyle = 'suit',
			colour = HEX("489cd7")
		},
		{
			key = '5',
			ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace"},
			display_ranks = {"Ace", 'King', 'Queen', 'Jack' , '10', '9', '8'},
			atlas = 'hunatro_talent_5',
			posStyle = 'suit',
			colour = HEX("489cd7")
		},
		{
			key = '6',
			ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace"},
			display_ranks = {"Ace", 'King', 'Queen', 'Jack' , '10', '9', '8'},
			atlas = 'hunatro_talent_2',
			posStyle = 'suit',
			colour = HEX("489cd7")
		}
	},
	loc_txt = {
		['en-us'] = 'HuniePop'
	}
}

local isMalverk = TexturePack and AltTexture

local function LoadLocalization()
	local path = 'Mods/Hunatro/hunatro_localization/'.. G.LANG.key .. '.lua'

	if love.filesystem.exists(path) then
		local loc = assert(loadstring(love.filesystem.read(path)))()

		if not Hunatro.config.localization.blindNames then
			Hunatro:debugMessage("Removing blind rename")
			loc.descriptions.Blind = nil
		end

		if not Hunatro.config.localization.resourceNames then
			Hunatro:debugMessage("Removing resource rename")
			loc.misc.replaceResources = nil
		end

		if not Hunatro.config.localization.suitsToAffectionTypes then
			Hunatro:debugMessage("Removing suit rename")
			loc.misc.replaceSuits = nil
		end

		DeepMerge(G.localization, loc)
	end
end
	
--other textures
if isMalverk then
	Hunatro:debugMessage("Installing Malverk texture pack")

	Hunatro.process_loc_text = LoadLocalization

	AltTexture({
		key = 'jokers_basic',
		set = 'Joker',
		path = 'Jokers_Malverk_Basic.png',
		display_pos = {x=0,y=0},
		original_sheet = false,
		keys = {
			---jimbles-
			"j_joker",

			--suits--
			"j_greedy_joker",
			"j_lusty_joker",
			"j_wrathful_joker",
			"j_gluttenous_joker",

			--mults--
			"j_jolly",
			"j_zany",
			"j_mad",
			"j_crazy",
			"j_droll",

			--chips--
			"j_sly",
			"j_wily",
			"j_clever",
			"j_devious",
			"j_crafty",

			--x mults--
			"j_duo",
			"j_trio",
			"j_family",
			"j_order",
			"j_tribe",
		}
	})

	AltTexture({
		key = 'jokers_legends',
		set = 'Joker',
		path = 'Jokers_Malverk_Legendary.png',
		original_sheet = false,
		keys = {
			"j_caino",
			"j_triboulet",
			"j_yorick",
			"j_chicot",
			"j_perkeo",
		},
		soul_keys = {
			"j_caino",
			"j_triboulet",
			"j_yorick",
			"j_chicot",
			"j_perkeo",
		}
	})
	
	AltTexture({
		key = 'jokers_others',
		set = 'Joker',
		path = 'Jokers_Malverk_Other.png',
		original_sheet = false,
		keys = {
			"j_half",
			"j_stencil",
			--"j_four_fingers",
			--"j_mime",
			--"j_credit_card",
			"j_ceremonial",
			"j_banner",
			"j_mystic_summit",
			"j_marble",
			--"j_loyalty_card",
			--"j_8_ball",
			"j_misprint",
			--"j_dusk",
			--"j_raised_fist",
			--"j_chaos",
			--"j_fibonacci",
			"j_steel_joker",
			--"j_scary_face",
			--"j_abstract",
			--"j_delayed_grat",
			"j_hack",
			--"j_pareidolia",
			--"j_gros_michel",
			"j_even_steven",
			"j_odd_todd",
			"j_scholar",
			"j_business",
			"j_supernova",
			--"j_ride_the_bus",
			"j_space",
			--"j_egg",
			"j_burglar",
			"j_blackboard",
			"j_runner",
			--"j_ice_cream",
			--"j_dna",
			--"j_splash",
			--"j_blue_joker",
			--"j_sixth_sense",
			"j_constellation",
			"j_hiker",
			"j_faceless",
			--"j_green_joker",
			--"j_superposition",
			"j_todo_list",
			--"j_cavendish",
			--"j_card_sharp",
			--"j_red_card",
			"j_madness",
			"j_square",
			--"j_seance",
			--"j_riff_raff",
			"j_vampire",
			--"j_shortcut",
			"j_hologram",
			--"j_vagabond",
			--"j_baron",
			--"j_cloud_9",
			"j_rocket",
			--"j_obelisk",
			--"j_midas_mask",
			"j_luchador",
			"j_photograph",
			--"j_gift",
			"j_turtle_bean",
			--"j_erosion",
			--"j_reserved_parking",
			--"j_mail",
			--"j_to_the_moon",
			--"j_hallucination",
			"j_fortune_teller",
			"j_juggler",
			"j_drunkard",
			"j_stone",
			--"j_golden",
			"j_lucky_cat",
			"j_baseball",
			"j_bull",
			--"j_diet_cola",
			--"j_trading",
			"j_flash",
			--"j_popcorn",
			"j_trousers",
			"j_ancient",
			--"j_ramen",
			--"j_walkie_talkie",
			--"j_selzer",
			--"j_castle",
			--"j_smiley",
			--"j_campfire",
			--"j_ticket",
			--"j_mr_bones",
			"j_acrobat",
			--"j_sock_and_buskin",
			--"j_swashbuckler",
			"j_troubadour",
			--"j_certificate",
			"j_smeared",
			"j_throwback",
			--"j_hanging_chad",
			--"j_rough_gem",
			--"j_bloodstone",
			--"j_bloodstone",
			"j_arrowhead",
			--"j_onyx_agate",
			"j_glass",
			--"j_ring_master",
			--"j_flower_pot",
			"j_blueprint",
			"j_wee",
			"j_merry_andy",
			--"j_oops",
			"j_idol",
			"j_seeing_double",
			--"j_matador",
			"j_hit_the_road",
			"j_stuntman",
			"j_invisible",
			"j_brainstorm",
			"j_satellite",
			--"j_shoot_the_moon",
			--"j_drivers_license",
			"j_cartomancer",
			"j_astronomer",
			--"j_burnt",
			"j_bootstraps",
		},
		soul_keys = {
			"j_constellation",
			"j_hologram",
		}
	})

	AltTexture({
		key = 'blind_chips',
		set = 'Blind',
		path = 'BlindChips.png',
		frames = 21,
		original_sheet = true,
		keys = {
			"bl_small",
			"bl_big",
			"bl_ox",
			"bl_hook",
			"bl_mouth",
			"bl_fish",
			"bl_club",
			"bl_manacle",
			"bl_tooth",
			"bl_wall",
			"bl_house",
			"bl_mark",
			"bl_final_bell",
			"bl_wheel",
			"bl_arm",
			"bl_psychic",
			"bl_goad",
			"bl_water",
			"bl_eye",
			"bl_plant",
			"bl_needle",
			"bl_head",
			"bl_final_leaf",
			"bl_final_vessel",
			"bl_window",
			"bl_serpent",
			"bl_pillar",
			"bl_flint",
			"bl_final_acorn",
			"bl_final_heart",
		}
	})

	AltTexture({
		key = 'decks',
		set = 'Back',
		path = 'Enhancers.png',
		original_sheet = true,
		keys = {
			"b_red",
			"b_blue",
			"b_yellow",
			"b_green",
			"b_black",
			"b_abandoned",
			"b_checkered",
		}
	})

	AltTexture({
		key = 'seals',
		set = 'Seal',
		path = 'Enhancers.png',
		original_sheet = true,
		keys = {
			"Gold",
			"Red",
			"Purple",
			"Blue",
		}
	})

	AltTexture({
		key = 'vouchers',
		set = 'Voucher',
		path = 'Vouchers.png',
		original_sheet = true,
		keys = {
			"v_hieroglyph",
			"v_petroglyph",
		}
	})

	AltTexture({
		key = 'enhancements',
		set = 'Enhanced',
		path = 'Enhancers.png',
		original_sheet = true,
		keys = {
			"m_wild",
		}
	})

	AltTexture({
		key = 'tarots',
		set = 'Tarot',
		path = 'Tarots.png',
		original_sheet = true,
		keys = {
			"c_fool",
			"c_emperor",
			"c_lovers",
		}
	})

	AltTexture({ 
		key = 'planets',
		set = 'Planet',
		path = 'Tarots.png',
		original_sheet = true,
		keys = {
			"c_planet_x",
			"c_eris",
		}
	})

	AltTexture({
		key = 'spectrals',
		set = 'Spectral',
		path = 'Tarots.png',
		soul = 'Enhancers.png',
		original_sheet = true,
		keys = {
			"c_soul",
			"undiscovered_joker",
			"undiscovered_tarot",
		},
	})
	
	TexturePack({
		key = 'hunatro',
		textures = {
			'hunatro_jokers_basic',
			'hunatro_jokers_others',
			'hunatro_jokers_legends',
			'hunatro_vouchers',
			'hunatro_blind_chips',
			'hunatro_enhancements',
			'hunatro_spectrals',
			'hunatro_planets',
			'hunatro_tarots',
			'hunatro_decks',
			'hunatro_seals',
		},
		localization = Hunatro.config.localization.cardNames,
	})
else
	local game_table = {
		Tag = 'P_TAGS',
		Seal = 'shared_seals',
		Blind = 'P_BLINDS',
		Stake = 'P_STAKES',
		Sticker = 'shared_stickers'
	}

	local loc_table = {
		Booster = 'Other',
		Seal = 'Other',
		Sticker = 'Other'
	}

	local function replaceHelp(input, inStr, outStr)
		-- protect
		local protected_tags = {}
		local tag_counter = 0
	
		local temp = input:gsub("{[^}]*}", function(tag)
			tag_counter = tag_counter + 1
			protected_tags[tag_counter] = tag
			return "__TAG_" .. tag_counter .. "__"
		end)
	
		-- replace
		temp = temp:gsub(inStr, outStr)
	
		-- restore
		temp = temp:gsub("__TAG_(%d+)__", function(id)
			return protected_tags[tonumber(id)]
		end)
	
		return temp
	end

	local function replaceDict(dict, replace_table)
		for key,_ in pairs(dict) do
			for _,replace in ipairs(replace_table) do
				dict[key] = replaceHelp(dict[key],replace[1], replace[2])
			end
		end
	end

	Hunatro.process_loc_text = function()
		LoadLocalization()

		--handle renames from Malverk
		--lua why do you do nil checks like this, ur killin me m8
		if Hunatro.config.localization.cardNames and G.localization.descriptions.texture_packs and G.localization.descriptions.texture_packs.texpack_hunatro_hunatro and G.localization.descriptions.texture_packs.texpack_hunatro_hunatro.localization then
			local game_table_lookup = {
				Tag = 'P_TAGS',
				Seal = 'shared_seals',
				Blind = 'P_BLINDS',
				Stake = 'P_STAKES',
				Sticker = 'shared_stickers'
			}

			local loc_table = {
				Booster = 'Other',
				Seal = 'Other',
				Sticker = 'Other'
			}

			local loc = G.localization.descriptions.texture_packs.texpack_hunatro_hunatro.localization

			for center, new_loc in pairs(loc) do
				local object = G.P_CENTERS[center] or nil
				if object then
					local game_table = game_table_lookup[object.set] or 'P_CENTERS'
					local default_loc = G[game_table][center].default_loc_txt
					if object.set == 'Booster' then
						local temp_center = center:sub(1, -3)
						SMODS.process_loc_text(G.localization.descriptions.Other[temp_center], 'name', new_loc.name and new_loc or default_loc, 'name')
						SMODS.process_loc_text(G.localization.descriptions.Other[temp_center], 'text', new_loc.text and new_loc or default_loc, 'text')
					else
						SMODS.process_loc_text(G.localization.descriptions[loc_table[object.set] or object.set][center .. (object.set == Seal and '_seal' or '')], 'name', new_loc.name and new_loc or default_loc, 'name')
						SMODS.process_loc_text(G.localization.descriptions[loc_table[object.set] or object.set][center .. (object.set == Seal and '_seal' or '')], 'text', new_loc.text and new_loc or default_loc, 'text')
					end
					--Malverk.badges[new_loc.badge]
					G[game_table][center].set_card_type_badge = new_loc.badge and nil or (G[game_table][center].default_card_type_badge ~= '1' and G[game_table][center].default_card_type_badge or false)
				end
			end
		end

		--replacePairs
		local replacePairs = DeepMerge(G.localization.misc.replaceSuits, G.localization.misc.replaceResources)
		if replacePairs then
			for _, valueD in pairs(G.localization.descriptions) do
				if type(valueD) == 'table' then
					for _, value in pairs(valueD) do
						if value and type(value.text) == 'table' then
							for j,_ in ipairs(value.text) do
								if value.text[j] then
									for _,replace in ipairs(replacePairs) do
										value.text[j] = replaceHelp(value.text[j],replace[1], replace[2])
									end
								end
							end
						end
					end
				end
			end

			replaceDict(G.localization.misc.suits_singular, replacePairs)
			replaceDict(G.localization.misc.suits_plural, replacePairs)
			replaceDict(G.localization.misc.achievement_descriptions, replacePairs)
		end
	end

	if Hunatro.config.textures.joker then
		SMODS.Atlas{
			key = 'Joker',
			path = 'Jokers.png',
			px = 71,
			py = 95,
			atlas_table = 'ASSET_ATLAS',
			prefix_config = { key = false }
		}
		
		G.P_CENTERS['j_constellation'].soul_pos = {x=1, y=9}
	end

	if Hunatro.config.textures.voucher then
		SMODS.Atlas{
			key = 'Voucher',
			path = 'Vouchers.png',
			px = 71,
			py = 95,
			atlas_table = 'ASSET_ATLAS',
			prefix_config = { key = false }
		}
	end

	if Hunatro.config.textures.blind then
		SMODS.Atlas{
			key = 'blind_chips',
			path = 'BlindChips.png',
			px = 34,
			py = 34,
			atlas_table = 'ANIMATION_ATLAS',
			frames = 21,
			prefix_config = { key = false }
		}
	end

	if Hunatro.config.textures.tarot then
		SMODS.Atlas{
			key = "Tarot",
			path = "Tarots.png",
			px = 71,
			py = 95,
			atlas_table = 'ASSET_ATLAS',
			prefix_config = { key = false }
		}
	end

	if Hunatro.config.textures.planet then
		SMODS.Atlas{
			key = "Planet",
			path = "Tarots.png",
			px = 71,
			py = 95,
			atlas_table = 'ASSET_ATLAS',
			prefix_config = { key = false }
		}
	end

	if Hunatro.config.textures.spectral then
		SMODS.Atlas{
			key = "Spectral",
			path = "Tarots.png",
			px = 71,
			py = 95,
			atlas_table = 'ASSET_ATLAS',
			prefix_config = { key = false }
		}
		
		SMODS.Atlas{
			key = "soul",
			path = "Enhancers.png",
			px = 71,
			py = 95,
			inject = function(self)
				SMODS.Atlas.inject(self)
				G.shared_soul = Sprite(0, 0, G.CARD_W, G.CARD_H, self, {x = 0,y = 1})
			end
		}
	end

	if Hunatro.config.textures.enhancer then
		SMODS.Atlas{
			key = "centers",
			path = "Enhancers.png",
			px = 71,
			py = 95,
			atlas_table = 'ASSET_ATLAS',
			prefix_config = { key = false }
		}
	end

	if Hunatro.config.textures.seal then
		SMODS.Atlas{
			key = "seals",
			path = "Enhancers.png",
			px = 71,
			py = 95,
			inject = function(self)
				SMODS.Atlas.inject(self)
				G.shared_seals = {
					Gold = Sprite(0, 0, G.CARD_W, G.CARD_H, self, {x = 2,y = 0}),
					Purple = Sprite(0, 0, G.CARD_W, G.CARD_H, self, {x = 4,y = 4}),
					Red = Sprite(0, 0, G.CARD_W, G.CARD_H, self, {x = 5,y = 4}),
					Blue = Sprite(0, 0, G.CARD_W, G.CARD_H, self, {x = 6,y = 4}),
				}
			end
		}
	end
end

if Hunatro.config.textures.title then
	Hunatro:debugMessage("Adding Title")
	SMODS.Atlas{
		key = 'balatro',
		path = 'balatro.png',
		px = 333,
		py = 216,
		atlas_table = 'ASSET_ATLAS',
		prefix_config = { key = false }
	}
end

if Hunatro.config.textures.suit then
	SMODS.Atlas{
		key = 'ui_1',
		path = 'ui_assets.png',
		px = 18,
		py = 18,
		atlas_table = 'ASSET_ATLAS',
		prefix_config = { key = false }
	}
	-- SMODS.Atlas{
	-- 	key = 'ui_2',
	-- 	path = 'ui_assets.png',
	-- 	px = 18,
	-- 	py = 18,
	-- 	atlas_table = 'ASSET_ATLAS',
	-- 	prefix_config = { key = false }
	-- }
end

--sounds
if Hunatro.config.voice then
	for i = 1, 11 do
		SMODS.Sound {
			key = "voice"..i,
			path = "voice"..i..".ogg",
			pitch = 0.0,
			prefix_config = { key = false }
		}
	end
end

-------------------
---     UI      ---
-------------------

local title_scale = 0.54
local text_scale = 0.45
local notice_scale = 0.27

-------------------
--- Config Tab  ---
-------------------

local function MakeUi(parentTable, key, config)
	local configType = type(config)
	local configText = localize(key, 'hunatroConfig')

	if configType == 'table' then
		local nodes = {
			{
				n = G.UIT.R,
				config = {
					align = "cm"
				},
				nodes = { 
					{
						n = G.UIT.T, 
						config = { 
							text = configText, 
							scale = title_scale, 
							colour = G.C.RED, 
							shadow = true,
							juice = true,
						} 
					}
				}
			}
		}

		local i = 2
		for subKey, subValue in pairs(config) do
			nodes[i] = MakeUi(config, subKey, subValue)
			i = i+1
		end

		return {
			n = G.UIT.C,
			config = {
				r = 0.1,
				align = "tm",
				colour = G.C.GREY,
				padding = 0.025,
			},
			nodes = nodes
		}
	elseif configType == 'boolean' then
		return {
			n = G.UIT.R,
			config = {
				align = "cm"
			},
			nodes = {
				create_toggle({
					label = configText,
					ref_table = parentTable,
					ref_value = key,
					scale = 0.75,
					label_scale = 0.3,
					callback = function()
						SMODS.save_mod_config(Hunatro)
					end
				})
			}
		}
	end

	return nil
end

Hunatro.config_tab = function()

	local configRows = {}

	local i = 0
	local currentRow = nil
	for key, value in pairs(Hunatro.config) do

		local ui = MakeUi(Hunatro.config, key, value)

		if currentRow then
			currentRow.nodes[2] = ui
			configRows[i] = currentRow
			i = i+1
			currentRow = nil
		else
			currentRow = {
				n = G.UIT.R,
				config = {
					padding = 0.1,
					align = "cm"
				},
				nodes = {
					ui
				}
			}
		end
	end

	if currentRow then
		configRows[i] = currentRow
		i = i + 1
	end
	
	--make notice
	local notice = localize('warning','hunatroConfig')
	
	for _,line in ipairs(notice) do
		configRows[i] = {
			n = G.UIT.R,
			config = {
				align = "cm"
			},
			nodes = { 
				{
					n = G.UIT.T,
					config = { 
						text = line,
						scale = notice_scale,
						colour = G.C.UI.TEXT_LIGHT,
						shadow = true,
						align = "cm"
					}
				}
			}
		}
		i = i + 1
	end

	return {
		n = G.UIT.ROOT, 
		config = {r = 0.1, align = "tm", padding = 0.05, colour = G.C.BLACK}, 
		nodes = {
			{
				n = G.UIT.C, 
				config = {align = "cm"}, 
				nodes = configRows
			}
		}
	}
end

-------------------
--- Credits Tab ---
-------------------
Hunatro.credits_tab = function()
	return {
		n = G.UIT.ROOT,
		config = { align = "cm", padding = 0.2, colour = G.C.BLACK, r = 0.1, emboss = 0.05, minh = 6, minw = 10 },
		nodes = {
			{
				n = G.UIT.R,
				config = { align = "cm", padding = 0.1, outline_colour = G.C.JOKER_GREY, r = 0.1, outline = 1 },
				nodes = {
					{
						n = G.UIT.R,
						config = { align = "cm", padding = 0 },
						nodes = {
							{ n = G.UIT.T, config = { text = 'Programming', scale = title_scale, colour = G.C.GOLD, shadow = true } },
						}
					},
					{
						n = G.UIT.R,
						config = { align = "cm", padding = 0 },
						nodes = {
							{ n = G.UIT.T, config = { text = 'OneSuchKeeper', scale = text_scale, colour = G.C.UI.TEXT_LIGHT, shadow = true } },
						}
					}
				}
			},
			{
				n = G.UIT.R,
				config = { align = "cm", padding = 0.1, outline_colour = G.C.JOKER_GREY, r = 0.1, outline = 1 },
				nodes = {
					{
						n = G.UIT.R,
						config = { align = "cm", padding = 0 },
						nodes = {
							{ n = G.UIT.T, config = { text = 'Art', scale = title_scale, colour = G.C.RED, shadow = true } },
						}
					},
					{
						n = G.UIT.R,
						config = { align = "cm", padding = 0 },
						nodes = {
							{ n = G.UIT.T, config = { text = 'Silverwoodworks', scale = text_scale, colour = G.C.UI.TEXT_LIGHT, shadow = true } },
						}
					},
					{
						n = G.UIT.R,
						config = { align = "cm", padding = 0 },
						nodes = {
							{ n = G.UIT.T, config = { text = 'OneSuchKeeper', scale = text_scale, colour = G.C.UI.TEXT_LIGHT, shadow = true } },
						}
					},
				}
			},
			{
				n = G.UIT.R,
				config = { align = "cm", padding = 0.1, outline_colour = G.C.TEXT_LIGHT, r = 0.1, outline = 0 },
				nodes = {
					{
						n = G.UIT.T,
						config = { 
							text = '*Textures modified from textures in Huniecam Studio and\nHuniePop 2 are used with permission from the developer',
							scale = notice_scale,
							colour = G.C.UI.L_BLACK,
							shadow = true }
					}
				}
			}
		}
	}
end

----------------------------------------------
------------MOD CODE END----------------------