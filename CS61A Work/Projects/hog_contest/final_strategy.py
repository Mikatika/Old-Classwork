"""
    This file contains your final_strategy that will be submitted to the contest.
    It will only be run on your local machine, so you can import whatever you want!
    Remember to supply a unique PLAYER_NAME or your submission will not succeed.
"""

PLAYER_NAME = 'Cult of Michael'  # Change this line!
from hog import free_bacon, extra_turn

def final_strategy(score, opponent_score):
    bacon = free_bacon(opponent_score)
    if extra_turn(score, opponent_score):
        if extra_turn(score + 1, opponent_score):
            return 8
        if extra_turn(score + bacon, opponent_score):
            return 0
        # if opponent_score - score <= 12:
        #     if opponent_score - score > 8:
        #         return 2
        #     return 1
        return 4
    if extra_turn(score + 1, opponent_score):
        return 7
    if extra_turn(score + bacon, opponent_score):
        return 0
    return 6
