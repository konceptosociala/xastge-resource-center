module Component.Form exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Event exposing (Msg(..))

formFluid : List (Html msg) -> Html msg
formFluid comps = 
   div [ class "container-fluid mt-5" ]
      [ div [ class "row justify-content-center px-3" ]
         [ div [ class "col-lg-3 col-md-6 col-sm-8 col-12 border mt-5 p-5 border-secondary rounded" ]
            [ Html.form [ class "form-dark" ]
               comps
            ]
         ]
      ]

lnk : String -> String -> Html msg
lnk lab hrf = 
   div [ class "mb-3 text-center" ] 
      [ a [ class "text-info", href hrf ] [ text lab ] ]

submitButton : String -> msg -> Bool -> Html msg
submitButton lab msg dis = 
   div [ class "d-flex justify-content-center mb-3" ]
      [ button 
         [ class "btn btn-info px-5"
         , type_ "button"
         , onClick msg
         , classList 
            [ ("btn-smooth", True)
            , ("is-disabled", dis)
            ]
         ] 
         [ text lab ]
      ]

switch : String -> Bool -> Html msg
switch lab val = 
   div [ class "form-check form-switch mb-3" ]
      [ input [ class "form-check-input", id "switchCheckDefault", attribute "role" "switch", type_ "checkbox", checked val ]
         []
      , label [ class "form-check-label text-light", for "switchCheckDefault" ]
         [ text lab ]
      ]

heading : String -> Html msg
heading h = 
   h1 
      [ class "mb-3 text-center text-light mt-3" ]
      [ text h ]

formInput : String -> String -> String -> Html msg
formInput lab ty val = 
   div [ class "mb-3" ]
      [ label [ class "form-label text-light" ] [ text lab ]
      , input [ class "form-control text-bg-dark border-secondary", type_ ty, value val ] []
      ]