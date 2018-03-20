import Html exposing (Html)

import Uuid exposing (Uuid, uuidGenerator)
import Random.Pcg exposing (initialSeed, step)

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

uuid : Uuid
uuid =
  let
    (uuid, _) = step uuidGenerator (initialSeed 0)
  in
    uuid

-- UPDATE

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    AddTable name ->
      ( { model | tables = (Table uuid name []) :: model.tables }
      , Cmd.none
      )
