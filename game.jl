module PokerGame

export start_round, show_game_state

function create_deck()
    suits = ["Hearts", "Diamonds", "Clubs", "Spades"]
    ranks = 2:14  # e.g. Jack(11), Queen(12), King(13), Ace(14)
    return [(rank, suit) for suit in suits for rank in ranks]
end

function deal_cards!(deck, num_cards)
    hand = []
    for _ in 1:num_cards
        card = pop!(deck, rand(1:length(deck)))
        push!(hand, card)
    end
    return hand
end

mutable struct GameState
    deck::Array
    community_cards::Array
    player_hands::Array
end

function start_round(game::GameState)
    game.deck = create_deck()
    game.community_cards = deal_cards!(game.deck, 5)
    game.player_hands = [deal_cards!(game.deck, 5) for _ in 1:5]  # Five player game
end

function show_game_state(game::GameState)
    println("Community Cards: ", game.community_cards)
    for (i, hand) in enumerate(game.player_hands)
        println("Player $i Hand: ", hand)
    end
end

end
