module View.Table exposing (representation)

import Svg.Attributes as Attr exposing (width, height, fill, stroke, strokeWidth, fontSize, x, y)
import Svg exposing (Svg, svg, rect, text, text_)
import List exposing (map, concat, length)

import Model exposing (..)
import Msg exposing (Msg)
import View.Column as Column


representation : Table -> List (Svg Msg)
representation table =
  let
    width = 200
    line = 20
    box =
      rect
        [ Attr.width (toString width)
        , height (toString <| line * (1 + (length table.columns)))
        , fill "transparent"
        , stroke "black"
        , strokeWidth "1"
        ] []
    column = Column.representation width line
  in
    concat
      [ [ box ]
      , title width line table.name
      , concat <| map column table.columns
      ]

title : Int -> Int -> String -> List (Svg Msg)
title width height title =
  let
    box =
      rect
        [ Attr.width (toString width)
        , Attr.height (toString height)
        , stroke "black"
        , strokeWidth "1"
        , fill "transparent"
        ] []
    label =
      text_
        [ fill "black"
        , fontSize (toString height)
        , y (toString height)
        ] [ text title ]
  in
    [ box
    , label
    ]
