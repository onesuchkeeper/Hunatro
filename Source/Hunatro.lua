--- STEAMODDED HEADER
--- MOD_NAME: Hunatro
--- MOD_ID: Hunatro
--- MOD_AUTHOR: [OneSuchKeeper]
--- MOD_DESCRIPTION: A resource pack that changes textures, voice lines and dialogue to be Huniepop themed. Textures modified from textures in Huniecam Studio and Huniepop 2 are used with permission from the developer. Charms for Huniepop 1 and Huniecam Studio characters are drawn by SilverwoodWorks. Development and all other textures are by OneSuchKeeper.
--- VERSION: 1.0.1
--- LOADER_VERSION_GEQ: 1.0.0
--- BADGE_COLOUR: f2a7b7
----------------------------------------------
------------MOD CODE -------------------------

function SMODS.INIT.Hunatro()
	sendDebugMessage("Hunatro")
	G.F_NO_ACHIEVEMENTS = false
	local Hunatro = SMODS.findModByID("Hunatro")
	local Settings = NFS.load(Hunatro.path .. 'config.lua')()

	--Textures/Colors
	if Settings.Joker_Texture == 1 then
		SMODS.Sprite:new("Joker", Hunatro.path, "Jokers.png", 71, 95, "asset_atli"):register()
	end

	if Settings.Deck_Texture == 1 then
		SMODS.Sprite:new('cards_1', Hunatro.path, '8BitDeck.png', 71, 95, 'asset_atli'):register()
		SMODS.Sprite:new('cards_2', Hunatro.path, '8BitDeck_opt2.png', 71, 95, 'asset_atli'):register()
	end

	if Settings.Voucher_Texture == 1 then
		SMODS.Sprite:new('Voucher', Hunatro.path, 'Vouchers.png', 71, 95, 'asset_atli'):register()
	end

	if Settings.Voucher == 1 then
		SMODS.Sprite:new('Voucher', Hunatro.path, 'Vouchers.png', 71, 95, 'asset_atli'):register()
	end

	if Settings.Blind_Texture == 1 then
		SMODS.Sprite:new('blind_chips', Hunatro.path, 'BlindChips.png', 34, 34, "animation_atli", 21):register()
	end

	if Settings.Suit == 1 then
		SMODS.Sprite:new('ui_1', Hunatro.path, 'ui_assets.png', 18, 18, "asset_atli"):register()
		SMODS.Sprite:new('ui_2', Hunatro.path, 'ui_assets.png', 18, 18, "asset_atli"):register()

		G.C.SUITS.Hearts = HEX('e24b3b')
		G.C.SUITS.Diamonds = HEX('e1893d')
		G.C.SUITS.Spades = HEX("489cd7")
		G.C.SUITS.Clubs = HEX('87b445')
	end

	if Settings.Title == 1 then
		SMODS.Sprite:new('balatro', Hunatro.path, 'balatro.png', 333, 216, "asset_atli"):register()
	end

	SMODS.Atlas {
		key = "HunatroTarot",
		path = "Tarots.png",
		px = 71,
		py = 95,
		raw_key = false
	}

	if Settings.Tarot == 1 then
		SMODS.Consumable:take_ownership('c_emperor', {
			atlas = 'HunatroTarot'
		})

		SMODS.Consumable:take_ownership('c_lovers', {
			atlas = 'HunatroTarot'
		})
	end

	if Settings.Planet == 1 then
		SMODS.Consumable:take_ownership('c_planet_x', {
			atlas = 'HunatroTarot'
		})
	end

	if Settings.Spectral == 1 then
		SMODS.Consumable:take_ownership('c_soul', {
			atlas = 'HunatroTarot'
		})

		--also needs ownership of the soul of soul hmmm
	end

	if Settings.Enhancer_Texture == 1 then
		SMODS.Sprite:new('centers', Hunatro.path, 'Enhancers.png', 71, 95, 'asset_atli'):register()
	end

	--Sound

	if Settings.Voice_Sound == 1 then
		SMODS.Sound.replace_sounds["voice1"] = SMODS.Sound({
			key = "voice1",
			path = "voice1.ogg"
		})
		SMODS.Sound.replace_sounds["voice2"] = SMODS.Sound({
			key = "voice2",
			path = "voice2.ogg"
		})
		SMODS.Sound.replace_sounds["voice3"] = SMODS.Sound({
			key = "voice3",
			path = "voice3.ogg"
		})
		SMODS.Sound.replace_sounds["voice4"] = SMODS.Sound({
			key = "voice4",
			path = "voice4.ogg"
		})
		SMODS.Sound.replace_sounds["voice5"] = SMODS.Sound({
			key = "voice5",
			path = "voice5.ogg"
		})
		SMODS.Sound.replace_sounds["voice6"] = SMODS.Sound({
			key = "voice6",
			path = "voice6.ogg"
		})
		SMODS.Sound.replace_sounds["voice7"] = SMODS.Sound({
			key = "voice7",
			path = "voice7.ogg"
		})
		SMODS.Sound.replace_sounds["voice8"] = SMODS.Sound({
			key = "voice8",
			path = "voice8.ogg"
		})
		SMODS.Sound.replace_sounds["voice9"] = SMODS.Sound({
			key = "voice9",
			path = "voice9.ogg"
		})
		SMODS.Sound.replace_sounds["voice10"] = SMODS.Sound({
			key = "voice10",
			path = "voice10.ogg"
		})
		SMODS.Sound.replace_sounds["voice11"] = SMODS.Sound({
			key = "voice11",
			path = "voice1.ogg"
		})
	end

	--icon
	SMODS.Atlas({
		key = "modicon",
		path = "icon.png",
		px = 32,
		py = 32
	}):register()

	--Update localization
	local lang_path = Hunietro.path .. 'localization/en-us.lua'
	local function apply_patch()
		if G.LANG.key == "en-us" and love.filesystem.exists(lang_path) then
			G.localization = assert(loadstring(love.filesystem.read(lang_path)))()
			init_localization()
		end
	end

	apply_patch()

	local set_language_ref = Game.set_language
	function Game:set_language()
		set_language_ref(self)
		apply_patch()
	end
end

----------------------------------------------
------------MOD CODE END----------------------
