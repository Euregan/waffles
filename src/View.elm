module View exposing (view)

import Svg exposing (Svg, svg, rect, text, text_)
import Svg.Attributes exposing (width, height)
import List exposing (map, concat)

import Model exposing (..)
import Msg exposing (Msg)
import View.Table


view : Model -> Svg Msg
view model =
  svg [ width "600", height "600" ] <| concat <| map View.Table.representation model.tables
