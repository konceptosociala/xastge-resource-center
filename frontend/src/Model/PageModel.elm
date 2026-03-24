module Model.PageModel exposing (..)

import Model.Route as Route
import Model.Route exposing (Route)
import Model.Page.HomeModel exposing (HomeModel)
import Model.Page.LoginModel exposing (LoginModel)
import Model.Page.LoginModel as LoginModel
import Model.Page.RegisterModel exposing (RegisterModel)
import Model.Page.RegisterModel as RegisterModel

type PageModel 
   = Home HomeModel 
   | About
   | Login LoginModel
   | Register RegisterModel
   | NotFound String

fromRoute : Route -> PageModel
fromRoute route = case route of
   Route.Home -> 
      Home {}
   Route.About -> 
      About
   Route.Login -> 
      Login LoginModel.empty
   Route.Register ->
      Register RegisterModel.empty
   Route.NotFound page -> 
      NotFound page
