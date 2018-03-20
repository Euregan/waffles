module View.Column exposing (representation)

import Svg.Attributes exposing (width, height, fill, stroke, strokeWidth, fontSize, x, y)
import Svg exposing (Svg, svg, rect, text, text_)
import List exposing (map)

import Model exposing (..)
import Msg exposing (Msg)


representation : Int -> Int -> Column -> List (Svg Msg)
representation width height column =
  [ text_
    [ fill "black"
    , fontSize (toString height)
    , y (toString height)
    ] [ text column.name ] ]
