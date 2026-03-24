module Component.Page.RegisterView exposing (..)

import Model.Page.RegisterModel exposing (RegisterModel)
import Event exposing (Msg)
import Html exposing (..)
import Html.Attributes exposing (..)
import Event exposing (Msg(..))
import Component.Form as Form

view : RegisterModel -> Html Msg
view model = 
   Form.formFluid
      [ Form.heading      "Register"
      , Form.formInput    "Username" "text" model.username
      , Form.formInput    "Email" "email" model.email
      , Form.formInput    "Password" "password" model.password
      , Form.formInput    "Confirm password" "password" model.passwordAgain
      , Form.switch       "Save session" model.saveSession
      , Form.submitButton "Register" (SubmitRegister model) model.registerButtonDisabled
      , Form.lnk "Already have an account? Login!" "/login"
      ]