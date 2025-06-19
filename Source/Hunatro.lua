--- STEAMODDED HEADER
--- MOD_NAME: Hunatro
--- MOD_ID: Hunatro
--- MOD_AUTHOR: [OneSuchKeeper]
--- MOD_DESCRIPTION: A resource pack that changes textures, voice lines and dialogue to be HuniePop themed.
--- VERSION: 1.0.2
--- LOADER_VERSION_GEQ: 1.0.0
--- BADGE_COLOUR: f2a7b7
--- DEPENDENCIES: [Steamodded>=1.0.0~ALPHA-1404g]
--- PRIORITY: 0
----------------------------------------------
------------MOD CODE -------------------------
function debugMessage(message)
	sendDebugMessage('[Hunatro] ' .. message)
end

debugMessage("Launching")

G.F_NO_ACHIEVEMENTS = false
local Hunatro = SMODS.current_mod

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
		['en-us'] = 'Huniepop'
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
		['en-us'] = 'Huniepop'
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
		['en-us'] = 'Huniepop'
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
		['en-us'] = 'Huniepop'
	}
}

if Hunatro.config.hunatro_config_joker == nil then
	Hunatro.config.hunatro_config_joker = true
	Hunatro.config.hunatro_config_blind = true
	Hunatro.config.hunatro_config_suit = true
	Hunatro.config.hunatro_config_voucher = true
	Hunatro.config.hunatro_config_tarot = true
	Hunatro.config.hunatro_config_planet = true
	Hunatro.config.hunatro_config_spectral = true
	Hunatro.config.hunatro_config_enhancer = true
	Hunatro.config.hunatro_config_seal = true
	Hunatro.config.hunatro_config_title = true
	Hunatro.config.hunatro_config_voice = true
	SMODS.save_mod_config(Hunatro)
end

--other textures
if Hunatro.config.hunatro_config_joker then
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

if Hunatro.config.hunatro_config_voucher then
	SMODS.Atlas{
		key = 'Voucher',
		path = 'Vouchers.png',
		px = 71,
		py = 95,
		atlas_table = 'ASSET_ATLAS',
		prefix_config = { key = false }
	}
end

if Hunatro.config.hunatro_config_blind then
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

if Hunatro.config.hunatro_config_suit then
	SMODS.Atlas{
		key = 'ui_1',
		path = 'ui_assets.png',
		px = 18,
		py = 18,
		atlas_table = 'ASSET_ATLAS',
		prefix_config = { key = false }
	}
	SMODS.Atlas{
		key = 'ui_2',
		path = 'ui_assets.png',
		px = 18,
		py = 18,
		atlas_table = 'ASSET_ATLAS',
		prefix_config = { key = false }
	}
end

if Hunatro.config.hunatro_config_title then
	SMODS.Atlas{
		key = 'balatro',
		path = 'balatro.png',
		px = 333,
		py = 216,
		atlas_table = 'ASSET_ATLAS',
		prefix_config = { key = false }
	}
end

if Hunatro.config.hunatro_config_tarot then
	SMODS.Atlas{
		key = "Tarot",
		path = "Tarots.png",
		px = 71,
		py = 95,
		atlas_table = 'ASSET_ATLAS',
		prefix_config = { key = false }
	}
end

if Hunatro.config.hunatro_config_planet then
	SMODS.Atlas{
		key = "Planet",
		path = "Tarots.png",
		px = 71,
		py = 95,
		atlas_table = 'ASSET_ATLAS',
		prefix_config = { key = false }
	}
end

if Hunatro.config.hunatro_config_spectral then
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

if Hunatro.config.hunatro_config_enhancer then
	SMODS.Atlas{
		key = "centers",
		path = "Enhancers.png",
		px = 71,
		py = 95,
		atlas_table = 'ASSET_ATLAS',
		prefix_config = { key = false }
	}
end

if Hunatro.config.hunatro_config_seal then
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

--sounds

if Hunatro.config.hunatro_config_voice then
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
--- Config Tab  ---
-------------------
local toggleOptions = {
	'hunatro_config_joker',
	'hunatro_config_blind',
	'hunatro_config_suit',
	'hunatro_config_voucher',
	'hunatro_config_tarot',
	'hunatro_config_planet',
	'hunatro_config_spectral',
	'hunatro_config_enhancer',
	'hunatro_config_seal',
	'hunatro_config_title',
	'hunatro_config_voice'
}

Hunatro.config_tab = function()
	local configNodes = {}
	
	--make toggles
	for i = 1, #toggleOptions do
	
		configNodes[i] = create_toggle({
			label = localize(toggleOptions[i], 'hunatroConfig'),
			ref_table = Hunatro.config,
			ref_value = toggleOptions[i],
			scale = 0.75,
			label_scale = 0.3,
			callback = function()
				SMODS.save_mod_config(Hunatro)
			end
		})
		
		configNodes[i].config.padding = -0.05
	end
	
	--make notice
	local notice = localize('hunatro_config_warning','hunatroConfig')
	
	for i = 1, #notice do
		configNodes[#toggleOptions + i] = {
			n = G.UIT.R,
			config = {
				padding = 0.01
			},
			nodes = {
				{ 
					n = G.UIT.T,
					config = { 
						text = notice[i],
						scale = 0.45,
						colour = G.C.UI.TEXT_LIGHT,
						shadow = true
					}
				}
			}
		}
	end
	
	--make ui
    return {
		n = G.UIT.ROOT,
		config = {
			r = 0.1,
			minw = 5,
			align = "cm",
			padding = 0.2,
			colour = G.C.BLACK
		},
		nodes = configNodes
	}
end

function G.FUNCS.hunatro_foo(e)
	Hunatro.config.cycle = e.to_key
	SMODS.save_mod_config(Hunatro)
end

-------------------
--- Credits Tab ---
-------------------
Hunatro.credits_tab = function()

	local title_scale = 0.9 * 0.6
	local text_scale = 0.9 * 0.5
	local notice_scale = 0.9 * 0.3
	
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