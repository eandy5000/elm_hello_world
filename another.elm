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

--one way to render a list
renderList: List String -> Html msg
renderList list =
    list
    |> (List.map(\i -> li [] []))
    |> ul []

--second way to render a list
renderList2: List String -> Html msg
renderList2 list =
    ul []
    (List.map(\i -> li [] [text i]) list)

--third way using helper function
renderList3: List String -> Html msg  
renderList3 list =
    ul []
    (List.map (liMaker) list)

--third way with helper variation
renderList4: List String -> Html msg
renderList4 list =
    list
    |> List.map liMaker
    |> ul []
    
--helper function takes String -> li
liMaker: String -> Html msg  
liMaker str =
    li [] [text str]

main: Html msg
main = 
    div [] [
        h1 [] [text "Maps and Lists"]
        , renderList4 stati
    ]