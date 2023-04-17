from random import randint

def make_fair_dice(sides):
    """Return a die that returns 1 to SIDES with equal chance."""
    assert type(sides) == int and sides >= 1, 'Illegal value for sides'
    def dice():
        return randint(1,sides)
    return dice

four_sided = make_fair_dice(4)
six_sided = make_fair_dice(6)

def make_test_dice(*outcomes):
    assert len(outcomes) > 0, 'You must supply outcomes to make_test_dice'
    for o in outcomes:
        assert type(o) == int and o >= 1, 'Outcome is not a positive integer'
    index = len(outcomes) - 1
    def dice():
        nonlocal index
        index = (index + 1) % len(outcomes)
        return outcomes[index]
    return dice

GOAL_SCORE = 100  # The goal of Hog is to score 100 points.
FIRST_101_DIGITS_OF_PI = 31415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679

def roll_dice(num_rolls, dice=six_sided):
    assert type(num_rolls) == int, 'num_rolls must be an integer.'
    assert num_rolls > 0, 'Must roll at least once.'
    # BEGIN PROBLEM 1
    pigged, cur_roll = 0, 0      # pigged = 1 if Pig Out happens, cur_roll to check if a 1 was rolled
    total, count = 0, 0         #total for total score, count for number of dice rolled
    while count < num_rolls:
        cur_roll = dice()
        total += cur_roll
        if cur_roll == 1:        # allows for all of the dice to be rolled and still tracks 1's
            pigged = 1
        count += 1
    if pigged:
        return 1
    return total


def free_bacon(score):
    assert score < 100, 'The game should be over.'
    pi = FIRST_101_DIGITS_OF_PI
    digits = 100 - score     #the distance from the last digit of pi; if score = 0, then digits would be 100, and this would trim 100 digits off of pi to get 3
    count = 0
    while count < digits:
        pi = pi // 10
        count += 1

    return pi % 10 + 3


def take_turn(num_rolls, opponent_score, dice=six_sided):
    assert type(num_rolls) == int, 'num_rolls must be an integer.'
    assert num_rolls >= 0, 'Cannot roll a negative number of dice in take_turn.'
    assert num_rolls <= 10, 'Cannot roll more than 10 dice.'
    assert opponent_score < 100, 'The game should be over.'
    if num_rolls:
        return roll_dice(num_rolls, dice)
    else:
        return free_bacon(opponent_score)


def extra_turn(player_score, opponent_score):
    return (pig_pass(player_score, opponent_score) or
            swine_align(player_score, opponent_score))


def swine_align(player_score, opponent_score):
    count = 1
    while count <= min(player_score, opponent_score):                   # the GCD can't be higher than the lower of the two scores
        if player_score % count == 0 and opponent_score % count == 0:
            if count >= 10:
                return True
        count += 1
    return False

def pig_pass(player_score, opponent_score):
    if player_score < opponent_score and (opponent_score - player_score) < 3:
        return True
    return False


def other(who):
    return 1 - who

def both(f, g):
    def say(score0, score1):
        return both(f(score0, score1), g(score0, score1))
    return say

def announce_highest(who, last_score=0, running_high=0):
    assert who == 0 or who == 1, 'The who argument should indicate a player.'
    def say(score0, score1):
        diff = running_high
        if who:
            score = score1
        else:
            score = score0
        if score - last_score > running_high:
            diff = score - last_score
            print(diff, 'point(s)! The most yet for Player', who)
        return announce_highest(who, score, diff)
    return say

def play(strategy0, strategy1, score0=0, score1=0, dice=six_sided,
    goal=GOAL_SCORE, say= announce_highest):
    who = 0
    while score0 < goal and score1 < goal:
        turn = False
        if who:
            score1 += take_turn(strategy1(score1,score0),score0, dice)
            turn = extra_turn(score1,score0)
        else:
            score0 += take_turn(strategy0(score0,score1),score1, dice)
            turn = extra_turn(score0,score1)
        if ~turn:
            who = other(who)
        say = say(score0, score1)
    return score0, score1

def always_roll(n):
    def strategy(score, opponent_score):
        return n
    return strategy
