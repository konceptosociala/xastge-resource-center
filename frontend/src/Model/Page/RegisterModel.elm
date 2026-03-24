module Model.Page.RegisterModel exposing (..)

type alias RegisterModel =
   { username : String
   , email : String
   , password : String
   , passwordAgain : String
   , saveSession : Bool
   , registerButtonDisabled : Bool
   }

empty : RegisterModel
empty = 
   { username = ""
   , email = ""
   , password = ""
   , passwordAgain = ""
   , saveSession = False
   , registerButtonDisabled = False
   }