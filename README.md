# Yahtzee!

Yahtzee is a simple dice game. Each round, each player rolls five dice (regular six-sided ones). Players may choose to reroll some or all of their dice up to two times. The player then declares a category, such as ones, twos, sixes, pair, two pairs, etc. The roll is scored based on the rules for that category.

## Objective

Your goal in this lab is to use test-driven development and pair programming to write a `YahtzeeRoll` class, representing a single Yahtzee roll.

* The class should be initialized with values for the dice. If the passed data is not a valid roll of five six-sided dice, an error should be raised.

* The class should have a scoring method that, given a category, returns the score of the roll according to the rules of that category.

If the category passed to the scoring method is not applicable to the roll (e.g. "pair" with a roll that has no pairs), it should be scored as 0 points.

## Scoring Categories

* **Ones**, **Twos**, **Threes**, **Fours**, **Fives**, **Sixes**: Score the sum of the dice that have the corresponding number. 1, 1, 2, 4, 4 scored as "fours" gives 8 points.

* **Pair**: Score the sum of the two highest matching dice. 3, 3, 3, 4, 4 scored as "pair" gives 8.

* **Two pairs**: If there are two pairs of dice with the same number, score the sum of those dice. 1, 1, 2, 3, 3 scored as "two pairs" gives 8.

* **Three of a kind**: If there are three dice with the same number, score the sum of these dice. 3, 3, 3, 4, 5 scored as "three of a kind" gives 9.

* **Four of a kind**: If there are four dice with the same number, score the sum of these dice. 2, 2, 2, 2, 5 scored as "four of a kind" gives 8.

* **Small straight**: If the dice read 1, 2, 3, 4, 5, score 15 (the sum of all dice).

* **Large straight**: If the dice read 2, 3, 4, 5, 6, score 20 (the sum of all dice).

* **Full house**: If there is both a pair and three of a kind, score the sum of all dice. 1, 1, 2, 2, 2 scored as "full house" gives 8. Note that, for instance, 4, 4, 4, 4, 4 cannot be scored as "full house".

* **Yahtzee**: If all dice have the same number, score 50 points.

* **Chance**: Score the sum of all dice, regardless of the roll.

## Bonus Challenge

Create another `YahtzeeRoll` method that accepts no parameters and returns the category that should be used to get the maximum possible score for the roll.
