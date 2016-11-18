Module to define the type of a maze

> module MyMaze (
>   MyMaze, 
>   makeMaze, -- :: Size -> [Place] -> [Place] -> [Place] -> [Place] -> Maze
>   hasWall,  -- :: Maze -> Place -> Direction -> Bool
>   sizeOf    -- :: Maze -> Size
> )
> where

> import Geography

We'll represent a maze by its size and a list of its walls.

> data MyMaze = AMaze Size [Place] [Place] [Place] [Place]

This function creates a maze given its size and a list of walls; the list of
walls might not be complete in the above sense.

> makeMaze :: Size -> [Place] -> [Place] -> [Place] -> [Place] -> MyMaze
> makeMaze (x,y) nwalls swalls ewalls wwalls = 
>   let -- the four boundaries
>       wboundary = [(0,j) | j <- [0..y-1]] -- westerly boundary
>       eboundary = [(x-1,j) | j <- [0..y-1]] -- easterly boundary
>       sboundary = [(i,0) | i <- [0..x-1]] -- southerly boundary
>       nboundary = [(i,y-1) | i <- [0..x-1]]    -- northerly boundary
>  in AMaze (x,y) (nwalls ++ nboundary ++ map (reflect S) swalls) (swalls ++ sboundary ++ map (reflect N) nwalls) (ewalls ++ eboundary ++ map (reflect W) wwalls) (wwalls ++ wboundary ++ map (reflect E) ewalls)

> reflect :: Direction -> Place -> Place
> reflect d pos = move d pos


The following function tests whether the maze includes a wall in a particular
direction from a particular place:

> hasWall :: MyMaze -> Place -> Direction -> Bool
> hasWall (AMaze _ nwalls swalls ewalls wwalls) pos d 
> 	| d == N = pos `elem` nwalls
>	| d == S = pos `elem` swalls
>   | d == E = pos `elem` ewalls
>   | otherwise = pos `elem` wwalls

The following function returns the size of a maze:

> sizeOf :: MyMaze -> Size
> sizeOf (AMaze size _ _ _ _) = size

