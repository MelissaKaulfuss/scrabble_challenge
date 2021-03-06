# Scrabble challenge

## My goals in this exercise

1. To test my knowledge of Ruby/rspec
2. To focus on using data structures
3. To try to design things so that it's easy to add new features or changes.


Given a word, compute the scrabble score for that word. If you can, use test-driven development to build this Scrabble-like game.

### Letter Values

You will need these:
```
Letter                           Value

A, E, I, O, U, L, N, R, S, T       1
D, G                               2
B, C, M, P                         3
F, H, V, W, Y                      4
K                                  5
J, X                               8
Q, Z                               10
```
### Example

"cabbage" should be scored as worth 14 points:
```
* 3 points for C
* 1 point for A, twice
* 3 points for B, twice
* 2 points for G
* 1 point for E
```

### Hints

Use the following hash:

```
{
  "A" => 1, "B" => 3, "C" => 3, "D" => 2,
  "E" => 1, "F" => 4, "G" => 2, "H" => 4,
  "I" => 1, "J" => 8, "K" => 5, "L" => 1,
  "M" => 3, "N" => 1, "O" => 1, "P" => 3,
  "Q" => 10, "R" => 1, "S" => 1, "T" => 1,
  "U" => 1, "V" => 4, "W" => 4, "X" => 8,
  "Y" => 4, "Z" => 10
}
```

### Requirements:

1. The solution should be insensitive to case
2. An empty `word` or `nil` score `0`

Use the following interaction model:
```
> game = Scrabble.new
> game.score("hello")
=> 8
> game.score("cabbage")
=> 14
> game.score("")
=> 0
> game.score(nil)
=> 0
```
