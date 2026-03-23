module Model.PageModel exposing (..)

import Model.Route as Route
import Model.Route exposing (Route)
import Model.Page.HomeModel exposing (HomeModel)

type PageModel 
   = Home HomeModel 
   | About ()
   | NotFound String

fromRoute : Route -> PageModel
fromRoute route = case route of
   Route.Home -> Home {}
   Route.NotFound page -> NotFound page
   _ -> NotFound "ERROR"