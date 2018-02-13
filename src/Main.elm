import Html exposing (Html)

import Model exposing (..)
import View exposing (view)
import Msg exposing (Msg(..))

main =
  Html.program
    { init = (Model "" [], Cmd.none)
    , view = view
    , update = update
    , subscriptions = \_ -> Sub.none
    }


-- UPDATE

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    _ ->
      (model, Cmd.none)
