import numpy as np


class PokerAgent:
    def __init__(self):
        pass

    def make_decision(self, game_state):
        # Decision logic TBD -- need to model
        return np.random.choice(['fold', 'call', 'raise'])
