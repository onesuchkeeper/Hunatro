--- STEAMODDED HEADER
--- MOD_NAME: Hunatro
--- MOD_ID: Hunatro
--- MOD_AUTHOR: [OneSuchKeeper]
--- MOD_DESCRIPTION: A resource pack that changes textures, voice lines and dialogue to be Huniepop themed. Textures modified from textures in Huniecam Studio and Huniepop 2 are used with permission from the developer. Charms for Huniepop 1 and Huniecam Studio characters are drawn by SilverwoodWorks. Development and all other textures are by OneSuchKeeper.
--- VERSION: 1.0.1
--- LOADER_VERSION_GEQ: 1.0.0
--- BADGE_COLOUR: f2a7b7
--- DEPENDENCIES: [Steamodded>=1.0.0~ALPHA-0812d]
----------------------------------------------
------------MOD CODE -------------------------

G.F_NO_ACHIEVEMENTS = false
local Hunatro = SMODS.current_mod
local Settings = NFS.load(Hunatro.path .. 'config.lua')()

--icon
SMODS.Atlas({
	key = "modicon",
	path = "icon.png",
	px = 32,
	py = 32
}):register()

--Collab Suits
--G.COLLABS.pos['2'] = {x=0,y=0}
--G.COLLABS.pos['3'] = {x=1,y=0}
--G.COLLABS.pos['4'] = {x=2,y=0}
--G.COLLABS.pos['5'] = {x=3,y=0}
--G.COLLABS.pos['6'] = {x=4,y=0}
--G.COLLABS.pos['7'] = {x=5,y=0}
--G.COLLABS.pos['8'] = {x=6,y=0}
--G.COLLABS.pos['9'] = {x=7,y=0}
--G.COLLABS.pos['10'] = {x=8,y=0}
--G.COLLABS.pos['Jack'] = {x=9,y=0}
--G.COLLABS.pos['Queen'] = {x=10,y=0}
--G.COLLABS.pos['King'] = {x=11,y=0}
--G.COLLABS.pos['Ace'] = {x=12,y=0}

--fix base Collabs
SMODS.Atlas{
	key = 'collab_AU_1',
	path = 'collabs/collab_AU_1.png',
	px = 71,
	py = 95,
	atlas_table = 'ASSET_ATLAS',
	prefix_config = { key = false }
}

SMODS.Atlas{
	key = 'collab_AU_2',
	path = 'collabs/collab_AU_2.png',
	px = 71,
	py = 95,
	atlas_table = 'ASSET_ATLAS',
	prefix_config = { key = false }
}

SMODS.Atlas{
	key = 'collab_DTD_1',
	path = 'collabs/collab_DTD_1.png',
	px = 71,
	py = 95,
	atlas_table = 'ASSET_ATLAS',
	prefix_config = { key = false }
}

SMODS.Atlas{
	key = 'collab_DTD_2',
	path = 'collabs/collab_DTD_2.png',
	px = 71,
	py = 95,
	atlas_table = 'ASSET_ATLAS',
	prefix_config = { key = false }
}

SMODS.Atlas{
	key = 'collab_VS_1',
	path = 'collabs/collab_VS_1.png',
	px = 71,
	py = 95,
	atlas_table = 'ASSET_ATLAS',
	prefix_config = { key = false }
}

SMODS.Atlas{
	key = 'collab_VS_2',
	path = 'collabs/collab_VS_2.png',
	px = 71,
	py = 95,
	atlas_table = 'ASSET_ATLAS',
	prefix_config = { key = false }
}

SMODS.Atlas{
	key = 'collab_TW_1',
	path = 'collabs/collab_TW_1.png',
	px = 71,
	py = 95,
	atlas_table = 'ASSET_ATLAS',
	prefix_config = { key = false }
}

SMODS.Atlas{
	key = 'collab_TW_2',
	path = 'collabs/collab_TW_2.png',
	px = 71,
	py = 95,
	atlas_table = 'ASSET_ATLAS',
	prefix_config = { key = false }
}

--hunatro collabs

G.COLLABS.options.Hearts[#G.COLLABS.options.Hearts + 1] = "hunatro_sexuality"
G.COLLABS.options.Clubs[#G.COLLABS.options.Clubs + 1] = "hunatro_flirtation"
G.COLLABS.options.Diamonds[#G.COLLABS.options.Diamonds + 1] = "hunatro_romance"
G.COLLABS.options.Spades[#G.COLLABS.options.Spades + 1] = "hunatro_talent"

function SMODS.current_mod.process_loc_text()
    G.localization.misc.collabs.Hearts['3'] = "Hunatro"
	G.localization.misc.collabs.Spades['3'] = "Hunatro"
	G.localization.misc.collabs.Diamonds['3'] = "Hunatro"
	G.localization.misc.collabs.Clubs['3'] = "Hunatro"
end

SMODS.Atlas{
    key = "hunatro_sexuality_1",
    path = "hunatro_sexuality_1.png",
    px = 71,
    py = 95,
	atlas_table = 'ASSET_ATLAS',
	raw_key = true,
}

SMODS.Atlas{
    key = "hunatro_sexuality_2",
    path = "hunatro_sexuality_2.png",
    px = 71,
    py = 95,
	atlas_table = 'ASSET_ATLAS',
	raw_key = true,
}

SMODS.Atlas{
    key = "hunatro_flirtation_1",
    path = "hunatro_flirtation_1.png",
    px = 71,
    py = 95,
	atlas_table = 'ASSET_ATLAS',
	raw_key = true,
}

SMODS.Atlas{
    key = "hunatro_flirtation_2",
    path = "hunatro_flirtation_2.png",
    px = 71,
    py = 95,
	atlas_table = 'ASSET_ATLAS',
	raw_key = true,
}

SMODS.Atlas{
    key = "hunatro_romance_1",
    path = "hunatro_romance_1.png",
    px = 71,
    py = 95,
	atlas_table = 'ASSET_ATLAS',
	raw_key = true,
}

SMODS.Atlas{
    key = "hunatro_romance_2",
    path = "hunatro_romance_2.png",
    px = 71,
    py = 95,
	atlas_table = 'ASSET_ATLAS',
	raw_key = true,
}

SMODS.Atlas{
    key = "hunatro_talent_1",
    path = "hunatro_talent_1.png",
    px = 71,
    py = 95,
	atlas_table = 'ASSET_ATLAS',
	raw_key = true,
}

SMODS.Atlas{
    key = "hunatro_talent_2",
    path = "hunatro_talent_2.png",
    px = 71,
    py = 95,
	atlas_table = 'ASSET_ATLAS',
	raw_key = true,
}

--other textures
if Settings.Joker == 1 then
	SMODS.Atlas{
		key = 'Joker',
		path = 'Jokers.png',
		px = 71,
		py = 95,
		atlas_table = 'ASSET_ATLAS',
		prefix_config = { key = false }
	}
end

if Settings.Voucher == 1 then
	SMODS.Atlas{
		key = 'Voucher',
		path = 'Vouchers.png',
		px = 71,
		py = 95,
		atlas_table = 'ASSET_ATLAS',
		prefix_config = { key = false }
	}
end

if Settings.Blind == 1 then
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

if Settings.Suit == 1 then
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

	G.C.SUITS.Hearts = HEX('e24b3b')
	G.C.SUITS.Diamonds = HEX('e1893d')
	G.C.SUITS.Spades = HEX("489cd7")
	G.C.SUITS.Clubs = HEX('87b445')
end

if Settings.Title == 1 then
	SMODS.Atlas{
		key = 'balatro',
		path = 'balatro.png',
		px = 333,
		py = 216,
		atlas_table = 'ASSET_ATLAS',
		prefix_config = { key = false }
	}
end

if Settings.Tarot then
	SMODS.Atlas {
		key = "Tarot",
		path = "Tarots.png",
		px = 71,
		py = 95,
		atlas_table = 'ASSET_ATLAS',
		prefix_config = { key = false }
	}
end

if Settings.Planet then
	SMODS.Atlas {
		key = "Planet",
		path = "Tarots.png",
		px = 71,
		py = 95,
		atlas_table = 'ASSET_ATLAS',
		prefix_config = { key = false }
	}
end

if Settings.Spectral then
	SMODS.Atlas {
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

--the soul texture isn't working, have to figure out how to add that

if Settings.Enhancer == 1 then
	SMODS.Atlas{
		key = "centers",
		path = "Enhancers.png",
		px = 71,
		py = 95,
		atlas_table = 'ASSET_ATLAS',
		prefix_config = { key = false }
	}
end

if Settings.Seal == 1 then
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

if Settings.Voice == 1 then
	for i = 1, 11 do
		SMODS.Sound {
			key = "voice"..i,
			path = "voice"..i..".ogg",
			pitch = 0.0,
			prefix_config = { key = false }
		}
	end
end

----------------------------------------------
------------MOD CODE END----------------------