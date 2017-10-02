module Another exposing (..)
import Html exposing (..)

checkStatus: Int -> String
checkStatus status =
    if status == 200 then
        "success"
    else if status == 404 then
        "file not found"
    else
        "unknown error"

stati: List String
stati = 
    [
    checkStatus 200
    , checkStatus 404
    , checkStatus 418
    ]

renderList: List String -> Html msg
renderList list =
    ul [] 
    (List.map(\ i -> li [] [text i]) list)
    

main: Html msg
main = 
    div [] [
        h1 [] [text "Maps and Lists"]
        , renderList stati
    ]