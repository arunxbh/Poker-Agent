import numpy as np


class PokerGame:
    def __init__(self):
        self.deck = self.create_deck()
        self.community_cards = []
        self.player_hands = []

    def create_deck(self):
        suits = ['Hearts', 'Diamonds', 'Clubs', 'Spades']
        ranks = range(2, 15)  # e.g. Jack(11), Queen(12), etc..
        return [(rank, suit) for suit in suits for rank in ranks]

    def deal_cards(self, num_cards):
        return [self.deck.pop(np.random.randint(len(self.deck))) for _ in range(num_cards)]

    def start_round(self):
        self.deck = self.create_deck()
        self.community_cards = self.deal_cards(5)
        self.player_hands = [self.deal_cards(5)
                             for _ in range(5)]  # Five players

    def show_game_state(self):
        print("Community Cards:", self.community_cards)
        for i, hand in enumerate(self.player_hands):
            print(f"Player {i+1} Hand: {hand}")
