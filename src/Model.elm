module Model exposing (..)

import Uuid exposing (Uuid)


type alias Model =
  { name: String
  , tables: List Table
  }

type alias Table =
  { id: Uuid
  , name: String
  , columns: List Column
  }

type alias Column =
  { id: Uuid
  , name: String
  , datatype: ColumnType
  }

type ColumnType
  = CHARACTER Int
  | VARCHAR Int
  | BOOLEAN
  | INTEGER Int
  | DECIMAL Int Int
