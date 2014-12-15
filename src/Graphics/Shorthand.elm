module Graphics.Shorthand where
{-| 

-}

import Graphics.Collage (..)

onePxLine drawingScale color = { defaultLine | width <- 1.0 / (drawingScale)
                                             , color <- color }
onePxOutlined drawingScale color = outlined (onePxLine drawingScale color)
onePxTraced drawingScale color = traced <| onePxLine drawingScale color
