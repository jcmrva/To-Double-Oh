module Main exposing (..)

import Html exposing (..)
import Bond exposing (..)


--import Html.Attributes exposing (..)
--import Html.Events exposing (..)
--import Http
-- UPDATE
-- favorite film/book - only one of each
--type alias Favorites =     { film : Film, book : Book }
-- ^ doesn't work
--type alias Favorites =     { film : Media, book : Media }
-- ^ doesn't represent the model


type Msg
    = Selected
    | Unselected
    | Toggled


type alias Model =
    { selected : List Bond.Version
    }


model : Model
model =
    { selected = []
    }


view : a -> Html msg
view model =
    div []
        []


update : Msg -> a -> a
update msg model =
    case msg of
        Toggled ->
            model

        _ ->
            model


main : Program Never Model Msg
main =
    Html.beginnerProgram
        { model = model
        , view = view
        , update = update
        }
