module Api.Backend exposing (..)

type Backend
   = Rest
   | GraphQL

toString : Backend -> String
toString backend = 
   case backend of
      Rest -> "rest"
      GraphQL -> "graphql"

fromString : String -> Backend
fromString str =
    case str of
        "graphql" ->
            GraphQL
        _ ->
            Rest