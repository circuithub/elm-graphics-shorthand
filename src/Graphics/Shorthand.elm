module Graphics.Shorthand where
{-| Some helpful shorthands for common graphics styles.

# Drawing styles
These drawing styles are all relative to a global drawing scale supplied as the first argument
@docs onePxLine, onePxOutlined, onePxTraced

-}

import Graphics.Collage exposing (..)
import Color exposing (..)

{-| Shorthand for 'defaultLine' with a drawing scale and color
-}
onePxLine : Float -> Color -> LineStyle
onePxLine drawingScale color = { defaultLine | width = 1.0 / (drawingScale)
                                             , color = color }

{-| Shorthand for 'outlined' with a drawing scale and color
-}
onePxOutlined : Float -> Color -> Shape -> Form
onePxOutlined drawingScale color = outlined (onePxLine drawingScale color)

{-| Shorthand for 'traced' with a drawing scale and color
-}
onePxTraced : Float -> Color -> Path -> Form
onePxTraced drawingScale color = traced <| onePxLine drawingScale color
