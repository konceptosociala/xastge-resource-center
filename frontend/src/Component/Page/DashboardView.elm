module Component.Page.DashboardView exposing (..)

import Model.Page.DashboardModel exposing (DashboardModel)
import Model.AccountStatus exposing (UserData)
import Event exposing (Msg)
import Html exposing (..)
import Html.Attributes exposing (..)

view : DashboardModel -> UserData -> Html Msg
view model userData = text "Dashboard"

invalidView : Html msg
invalidView = 
   div [ class "container-fluid mt-5 d-flex flex-column align-items-center" ]
      [ h1 [ class "display-2 text-light fw-bold mt-5 text-center" ] [ text "Invalid state" ]
      , h1 [ class "display-5 text-light text-center" ] [ text "You must be logged in to view the dashboard." ]
      ]