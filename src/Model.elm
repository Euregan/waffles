module Model exposing (..)


type alias Model =
  { name: String
  , tables: List Table
  }

type alias Table =
  { name: String
  , columns: List Column
  }

type alias Column =
  { name: String
  , datatype: ColumnType
  }

type ColumnType
  = CHARACTER Int
  | VARCHAR Int
  | BOOLEAN
  | INTEGER Int
  | DECIMAL Int Int
