# Code for Maze solver 

This is the Haskell code for an assignment by Dr A Calinescu.

### Modules
Load **Main.lhs** for the maze definition with allWalls.  

Load **Main2.lhs** for the *optimized* Maze definition.

### Test Cases
solveMaze largeMaze (0,0) (16,17)

### Observations
```haskell
Prelude> :l Main.lhs
[1 of 3] Compiling Geography        ( Geography.lhs, interpreted )
[2 of 3] Compiling Maze             ( Maze.lhs, interpreted )
[3 of 3] Compiling Main             ( Main.lhs, interpreted )
Ok, modules loaded: Geography, Maze, Main.
(0.16 secs, 105,246,480 bytes)
*Main> solveMaze largeMaze (0,0) (16,17)
[N,N,N,N,N,N,N,N,N,E,E,E,N,W,W,W,N,E,E,E,N,W,W,W,N,E,E,E,E,E,N,N,N,W,S,S,W,W,W,W,N,N,N,E,S,S,E,E,N,W,N,N,W,W,N,E,E,E,E,E,E,N,W,W,W,W,W,W,N,E,E,E,E,E,E,E,S,S,S,S,E,E,N,N,N,N,E,E,E,E,S,W,W,W,S,S,S,E,N,N,E,E,E,S,W,W,S,S,W,W,W,W,W,S,E,E,E,S,W,W,W,S,S,S,E,S,S,S,E,N,N,N,E,S,S,S,S,W,W,W,S,E,E,E,S,W,W,W,S,E,E,E,E,S,S,E,E,E,E,E,E,E,S,E,E,E,N,W,W,N,N,N,E,S,S,E,E,N,W,N,E,N,N,W,S,W,W,W,W,S,W,N,N,N,W,W,W,N,N,N,E,S,S,E,N,N,N,W,W,N,N,N,N,N,E,E,S,S,S,E,E,N,W,N,E,N,W]
(0.15 secs, 19,470,080 bytes)
*Main> :m
Prelude> :l Main2.lhs 
[1 of 3] Compiling Geography        ( Geography.lhs, interpreted )
[2 of 3] Compiling MyMaze           ( MyMaze.lhs, interpreted )
[3 of 3] Compiling Main             ( Main2.lhs, interpreted )
Ok, modules loaded: Geography, Main, MyMaze.
(0.16 secs, 122,714,768 bytes)
*Main> solveMaze largeMaze (0,0) (16,17)
[N,N,N,N,N,N,N,N,N,E,E,E,N,W,W,W,N,E,E,E,N,W,W,W,N,E,E,E,E,E,N,N,N,W,S,S,W,W,W,W,N,N,N,E,S,S,E,E,N,W,N,N,W,W,N,E,E,E,E,E,E,N,W,W,W,W,W,W,N,E,E,E,E,E,E,E,S,S,S,S,E,E,N,N,N,N,E,E,E,E,S,W,W,W,S,S,S,E,N,N,E,E,E,S,W,W,S,S,W,W,W,W,W,S,E,E,E,S,W,W,W,S,S,S,E,S,S,S,E,N,N,N,E,S,S,S,S,W,W,W,S,E,E,E,S,W,W,W,S,E,E,E,E,S,S,E,E,E,E,E,E,E,S,E,E,E,N,W,W,N,N,N,E,S,S,E,E,N,W,N,E,N,N,W,S,W,W,W,W,S,W,N,N,N,W,W,W,N,N,N,E,S,S,E,N,N,N,W,W,N,N,N,N,N,E,E,S,S,S,E,E,N,W,N,E,N,W]
(27.12 secs, 2,934,583,776 bytes)
*Main> 
```
