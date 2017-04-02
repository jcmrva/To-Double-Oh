module Main exposing (..)

import Html exposing (..)
import Domain exposing (..)
import Utils exposing (..)


--import Html.Attributes exposing (..)
--import Html.Events exposing (..)
--import Http
--import Json.Decode as Decode
-- UPDATE


type Msg
    = NothingYet


model : FilmInfo
model =
    { title = "From Russia With Love"
    , year = 1962
    , actor = Connery
    }


view : { a | title : String } -> Html msg
view model =
    div []
        [ h2 [] [ text <| Utils.b64e model.title ]
        ]


update : a -> a
update model =
    model


main : Program Never FilmInfo (FilmInfo -> FilmInfo)
main =
    Html.beginnerProgram
        { model = model
        , view = view
        , update = update
        }
