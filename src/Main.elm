module Main exposing (..)

import Html exposing (..)
import Domain exposing (stories, Actor(..))


--import Html.Attributes exposing (..)
--import Html.Events exposing (..)
--import Http
-- NEW label if year >= current - 1
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


type alias FilmInfo =
    { title : String
    , year : Int
    , actor : Actor
    }


model : FilmInfo
model =
    FilmInfo "From Russia With Love" 1962 (Connery1 "Connery")


tableHeader : List String
tableHeader =
    [ "Title", "Actor", "Film Year", "Author", "Book Year" ]


view : { a | title : String } -> Html msg
view model =
    div []
        [ table []
            (tr []
                [ th [] [ text "Title" ]
                , th [] [ text "Actor" ]
                , th [] [ text "Film Year" ]
                , th [] [ text "Author" ]
                , th [] [ text "Book Year" ]
                ]
                :: (Domain.getTitles
                        |> List.map (\t -> tr [] [ text t ])
                   )
            )
        ]


update : Msg -> a -> a
update msg model =
    case msg of
        Toggled ->
            model

        _ ->
            model


main : Program Never FilmInfo (FilmInfo -> FilmInfo)
main =
    Html.beginnerProgram
        { model = model
        , view = view
        , update = update Toggled
        }
