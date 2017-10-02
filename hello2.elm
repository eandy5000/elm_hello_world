module Hello2 exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class)

main: Html msg
main = 
    div [class "green"] [
        h1 [] [text "Elm program!!!"]
        ,p [] [text "lorem ipsum"]
    ]