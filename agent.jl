module PokerAgent

export make_decision

struct GameState
    # define game state TBD
end

function make_decision(game_state::GameState)
    # Decision making logic TBD
    return rand(["fold", "call", "raise"])
end

end
