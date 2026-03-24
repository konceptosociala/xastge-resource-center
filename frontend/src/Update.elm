module Update exposing (..)

import Browser.Navigation as Nav
import Model exposing (Model)
import Event exposing (Msg(..))
import Browser exposing (UrlRequest(..))
import Model.Route exposing (parseUrl)
import Url
import Model.PageModel as PageModel

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model = 
   case msg of
      UrlChange url ->
         let newRoute = parseUrl url
         in 
            (  { model 
               | route = newRoute 
               , page = PageModel.fromRoute newRoute
               }
            , Cmd.none
            )

      LinkClicked req ->
         case req of 
            External href ->
               ( model, Nav.load href )

            Internal url ->
               ( model, Nav.pushUrl model.key (Url.toString url) )     
      
      SetBackend backend -> 
         ({ model | backend = backend }, Cmd.none)

      SubmitLogin loginModel ->
         (  { model 
            | page = PageModel.Login 
               { loginModel 
               | loginButtonDisabled = True 
               }
            }
         , Cmd.none
         )

      _ -> (model, Cmd.none)