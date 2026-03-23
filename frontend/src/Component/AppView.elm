module Component.AppView exposing (..)

import Event exposing (Msg)
import Model exposing (Model)
import Html exposing (..)
import Component.Navbar as Navbar
import Model.AccountStatus as AccountStatus
import Model.PageModel exposing (PageModel(..))
import Component.Page.HomeView as HomeView

view : Model -> List (Html Msg)
view model = 
   [ Navbar.view 
      { icon = "assets/img/favicon.svg"
      , brand = "XastGE Resource Center"
      , links = 
         [ ("Home", "/")
         , ("About", "/about")
         ]
      , accountStatus = AccountStatus.LoggedOut
      , backend = model.backend
      }
   , case model.page of
      Home home -> HomeView.view home
      _ -> text "ERROR"
   ]