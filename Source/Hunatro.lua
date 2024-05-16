--- STEAMODDED HEADER
--- MOD_NAME: Hunatro
--- MOD_ID: Hunatro
--- MOD_AUTHOR: [OneSuchKeeper]
--- MOD_DESCRIPTION: A texture pack that changes textures, voice lines and dialogue to be Huniepop themed. Textures modified from textures in Huniecm Studio and Huniepop 2 are used with permission from the developer. All other textures are drawn by me (OneSuchKeeper).

----------------------------------------------
------------MOD CODE -------------------------

function SMODS.INIT.Hunietro()
    sendDebugMessage("Hunatro")
	G.F_NO_ACHIEVEMENTS = false
    local Hunietro = SMODS.findModByID("Hunatro")

	--textures
    local sprite_jkr = SMODS.Sprite:new("Joker", Hunietro.path, "Jokers.png", 71, 95, "asset_atli")
    local sprite_cards_1 = SMODS.Sprite:new('cards_1', Hunietro.path, '8BitDeck.png', 71, 95, 'asset_atli')
	local sprite_cards_2 = SMODS.Sprite:new('cards_2', Hunietro.path, '8BitDeck_opt2.png', 71, 95, 'asset_atli')
    local sprite_vouchers = SMODS.Sprite:new('Voucher', Hunietro.path, 'Vouchers.png', 71, 95, 'asset_atli')
    local sprite_blind_chips = SMODS.Sprite:new('blind_chips', Hunietro.path, 'BlindChips.png', 34, 34, "animation_atli", 21)
	local sprite_ui_1 = SMODS.Sprite:new('ui_1', Hunietro.path, 'ui_assets.png', 18, 18, "asset_atli")
	local sprite_ui_2 = SMODS.Sprite:new('ui_2', Hunietro.path, 'ui_assets.png', 18, 18, "asset_atli")
	local sprite_Balatro = SMODS.Sprite:new('balatro', Hunietro.path, 'balatro.png', 333, 216, "asset_atli")
	local sprite_enhancers = SMODS.Sprite:new('centers', Hunietro.path, 'Enhancers.png', 71, 95, 'asset_atli')
	local sprite_tarot = SMODS.Sprite:new('Tarot', Hunietro.path, 'Tarots.png', 71, 95, 'asset_atli')

    sprite_jkr:register()
    sprite_cards_1:register()
    sprite_cards_2:register()
    sprite_vouchers:register()
    sprite_blind_chips:register()
	sprite_ui_1:register()
	sprite_ui_2:register()
	sprite_Balatro:register()
	sprite_enhancers:register()
	sprite_tarot:register()
	
	--colors
	G.C.SUITS.Hearts = HEX('e24b3b')
    G.C.SUITS.Diamonds = HEX('e1893d')
    G.C.SUITS.Spades = HEX("489cd7")
    G.C.SUITS.Clubs = HEX('87b445')
	
	--sounds			
	register_sound_global("Hunatro")
	register_replace_sound_played({voice1 = "voice1"})
	register_replace_sound_played({voice2 = "voice2"})
	register_replace_sound_played({voice3 = "voice3"})
	register_replace_sound_played({voice4 = "voice4"})
	register_replace_sound_played({voice5 = "voice5"})
	register_replace_sound_played({voice6 = "voice6"})
	register_replace_sound_played({voice7 = "voice7"})
	register_replace_sound_played({voice8 = "voice8"})
	register_replace_sound_played({voice9 = "voice9"})
	register_replace_sound_played({voice10 = "voice10"})
	register_replace_sound_played({voice11 = "voice11"})
	
	--text
	local lang_path = Hunietro.path..'localization/en-us.lua'
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