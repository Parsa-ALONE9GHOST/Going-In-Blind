SMODS.Sound({
    key = "music_main_menu",
    path = "1.ogg",
    vol = 2.5,
    pitch = 1.0,
    select_music_track = function()
        return G.STAGE == G.STAGES.MAIN_MENU or G.STAGE == G.STAGES.RUN and not G.shop
    end
})
SMODS.Sound({
    key = "music_tarotrr",
    path = "2.ogg",
    vol = 2.5,
    pitch = 1.0,
	select_music_track = function()
		return ( G.pack_cards and G.pack_cards.cards and G.pack_cards.cards[1] and G.pack_cards.cards[1].ability.set == "Tarot" )
        or ( G.pack_cards and G.pack_cards.cards and G.pack_cards.cards[1] and G.pack_cards.cards[1].ability.set == "Joker" )
        or ( G.pack_cards and G.pack_cards.cards and G.pack_cards.cards[1] and G.pack_cards.cards[1].ability.set == "Enhanced" )
	end,
})
SMODS.Sound({
    key = "music_planet_pk",
    path = "3.ogg",
    vol = 2.5,
    pitch = 1.0,
	select_music_track = function()
		return ( G.pack_cards and G.pack_cards.cards and G.pack_cards.cards[1] and G.pack_cards.cards[1].ability.set == "Planet")
	end,
})
SMODS.Sound({
    key = "music_shopthe",
    path = "4.ogg",
    vol = 2.5,
    pitch = 1.0,
    select_music_track = function()
        return G.STATE == 5
    end
})
SMODS.Sound({
    key = "music_bossnl",
    path = "5.ogg",
    vol = 2.5,
    pitch = 1.0,
select_music_track = function()
        return G.GAME 
        and (G.GAME and G.GAME.blind and G.GAME.blind.boss) 
        and 10
    end,
})