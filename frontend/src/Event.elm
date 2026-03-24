module Event exposing (..)

import Http
import Url exposing (Url)
import Browser exposing (UrlRequest)
import Api.Backend exposing (Backend)
import Model.Page.LoginModel exposing (LoginModel)
import Model.Page.RegisterModel exposing (RegisterModel)

type Msg
   = SetBackend Backend
   | SubmitLogin LoginModel
   | SubmitRegister RegisterModel
   | GotResources (Result Http.Error (List String))
   | UrlChange Url
   | LinkClicked UrlRequest