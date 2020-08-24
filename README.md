# Mars Rover

<a href="https://codeclimate.com/github/tobydawson1/mars_rover_tech_test/maintainability"><img src="https://api.codeclimate.com/v1/badges/012b796d7c476a606b67/maintainability" /></a>
[![Coverage Status](https://coveralls.io/repos/github/tobydawson1/mars_rover_tech_test/badge.svg?branch=master)](https://coveralls.io/github/tobydawson1/mars_rover_tech_test?branch=master)
[![Build Status](https://travis-ci.com/tobydawson1/mars_rover_tech_test.svg?branch=master)](https://travis-ci.com/tobydawson1/mars_rover_tech_test)

**Technologies: Ruby, RSpec, Rubocop, Coveralls, Travis CI**

[Task](#Task) | [Acceptance Criteria](#criteria) | [Input](#Input) | [How to run](#run) | [IRB Output Example](#irb) | [Inputs / Outputs](#output)| [Functions and Methods](#functions) | [User Stories](#stories) |

## Task

A squad of robotic rovers are to be landed by NASA on a plateau on Mars.
This plateau, which is curiously rectangular, must be navigated by the rovers so that their on board cameras can get a complete view of the
surrounding terrain to send back to Earth.
A rover's position is represented by a combination of an x and y co-ordinates and a letter representing one of the four cardinal compass points.
The plateau is divided up into a grid to simplify navigation. An example position might be 0, 0, N, which means the rover is in the bottom left
corner and facing North.
In order to control a rover, NASA sends a simple string of letters. The possible letters are 'L', 'R' and 'M'. 'L' and 'R' makes the rover spin 90
degrees left or right respectively, without moving from its current spot.
'M' means move forward one grid point, and maintain the same heading.
Assume that the square directly North from (x, y) is (x, y+1).

## <a name="criteria">Acceptance Criteria </a>

The problem below requires some kind of input. You are free to implement any mechanism for feeding input into your solution (for example, using
hard coded data within a unit test). You should provide sufficient evidence that your solution is complete by, as a minimum, indicating that it works
correctly against the supplied test data.
We highly recommend using a unit testing framework. Even if you have not used it before, it is simple to learn and incredibly useful. The code you write should be of production quality, and most importantly, it should be code you are proud of.

## Input

The first line of input is the upper-right coordinates of the plateau, the lower-left coordinates are assumed to be 0,0.
The rest of the input is information pertaining to the rovers that have been deployed. Each rover has two lines of input. The first line gives the
rover's position, and the second line is a series of instructions telling the rover how to explore the plateau.
The position is made up of two integers and a letter separated by spaces, corresponding to the x and y co-ordinates and the rover's orientation.
Each rover will be finished sequentially, which means that the second rover won't start to move until the first one has finished moving.

## <a name="run">How to run </a>

```
Clone repository onto local machine and cd into it

$ gem install bundle
$ irb
$ require 'nasa'
$ require 'command' 
$ require 'rover'
$ require 'mars_plateau'

Initialize nasa with input as arguments ($ @nasa = Nasa.new(grid size, start_one, movement_one, start_two, movement_two)

Actions
  - $ @nasa.mission_one
  - $ @nasa.mission_two
```

## <a name="irb">IRB Output Example</a>

![example](https://github.com/tobydawson1/mars_rover_tech_test/blob/master/example.png)

## <a name="output">Input / Output </a>

| Input                           | Output                                                        | 
| ------------------------------- | ------------------------------------------------------------  | 
| 5 5                             | 1 3 N                                                         |
| 1 2 N                           |  5 1 E                                                        |
| LMLMLMLMM                       |                                                               |
| 3 3 E                           |                                                               |
| MMRMMRMRRM                      |                                                               |
| ------------------------------- | ------------------------------------------------------------  | 
| 5 5                             | 2 1 S                                                         |
| 1 2 N                           |  5 0 E                                                        |
| LMMLMMRMLMM                       |                                                               |
| 3 3 E                           |                                                               |
| RMMLMMRM                      |                                                               |
| ------------------------------- | ------------------------------------------------------------  | 
| 10 10                             | 5 3 N                                                         |
| 5 2 W                           |   10 10 E                                                        |
| MMLMLMMMLM                       |                                                               |
| 7 7 N                           |                                                               |
| MRMMLMMRM                      |                                                               |
| ------------------------------- | ------------------------------------------------------------  | 

## <a name="functions">Functions and Methods </a>

| Object:          | Nasa                                            | 
| ---------------- | -------------------------------------------------- | 
| **Properties:**  | Grid size, start_one, movement_one, start_two, movement_two|
| **Function:**    | mission_one                                    |
| **Function:**    | mission_two                                           |  

| Object:          | Commmand                                        | 
| ---------------- | -------------------------------------------------- | 
| **Properties:**  | Grid size, Start, Movement                              |
| **Function:**    | mars                                    |
| **Function:**    | rover_coordinates                                             |  
| **Function:**    | process                                    |
| **Function:**    | move_forward                                           |  
| **Function:**    | turn_left                                    |
| **Function:**    | turn_right                                             |  
| **Function:**    | face_to                                    |
| **Function:**    | limit?                                          |  

| Object:          | Rover                                     | 
| ---------------- | -------------------------------------------------- | 
| **Properties:**  | Start                                                  |
| **Function:**    | rover_location                                 |
| **Function:**    | deploy                                            |  

| Object:          | Mars_plateau                                    | 
| ---------------- | -------------------------------------------------- | 
| **Properties:**  | grid_size                                                  |
| **Function:**    | grid                                 |


## <a name="stories">User Stories</a>

```
As a NASA Engineer
So I can map the plateau
I would like to be able to input the upper right coordinates of the plateau
```

```
As a NASA Engineer
So I can move the rover
I would like to be able to input the starting coordinates of the rover and the desired movement pattern
```

```
As a NASA Engineer 
So I can use two rovers
I would like to be able to input data for two rovers, one after the other
```

```
As a Nasa Engineer 
So I know where the rovers finish
I would like the final coordinates of both rovers to be outputed
```



