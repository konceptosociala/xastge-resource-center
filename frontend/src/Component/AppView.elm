module Component.AppView exposing (..)

import Event exposing (Msg)
import Model exposing (Model)
import Html exposing (..)
import Component.Navbar as Navbar
import Model.AccountStatus as AccountStatus
import Model.PageModel exposing (PageModel(..))
import Component.Page.HomeView as HomeView
import Component.Page.LoginView as LoginView
import Component.Page.RegisterView as RegisterView

view : Model -> List (Html Msg)
view model = 
   -- Navigation
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
   -- Page content
   , case model.page of
      Home home -> 
         HomeView.view home

      Login login -> 
         LoginView.view login

      Register register -> 
         RegisterView.view register

      _ -> text "ERROR"
   ]