module Model.Page.LoginModel exposing (..)

type alias LoginModel =
   { email : String
   , password : String
   , saveSession : Bool
   , loginButtonDisabled : Bool
   }

empty : LoginModel
empty = 
   { email = ""
   , password = ""
   , saveSession = False 
   , loginButtonDisabled = False
   }