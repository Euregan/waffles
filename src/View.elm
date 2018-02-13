module View exposing (view)

import Svg exposing (Svg, svg, rect, text)
import Svg.Attributes exposing (width, height, viewBox)
import List exposing (map)

import Model exposing (..)
import Msg exposing (Msg)


view : Model -> Svg Msg
view model =
  svg [ width "600", height "600", viewBox "0 0 120 120" ] <| map table model.tables

table : Table -> Svg Msg
table table =
  rect [ width "60", height "120" ]
    [ text table.name ]
