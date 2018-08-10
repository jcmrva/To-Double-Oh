module Queries exposing (..)

import Bond exposing (..)


getName : Version -> String
getName v =
    case v of
        Film _ a ->
            a |> toString

        Tv _ a ->
            a |> toString

        Novel _ a ->
            a |> toString

        Short _ a ->
            a |> toString


hasActor : Actor -> Version -> Bool
hasActor actor version =
    case version of
        Film _ a ->
            a == actor

        Tv _ a ->
            a == actor

        _ ->
            False


hasAuthor : Version -> Author -> Bool
hasAuthor version author =
    case version of
        Novel _ a ->
            a == author

        Short _ a ->
            a == author

        _ ->
            False


getYear : Version -> Year
getYear vers =
    case vers of
        Film y _ ->
            y

        Novel y _ ->
            y

        Short y _ ->
            y

        Tv y _ ->
            y


yearsActive : List Version -> ( Year, Year )
yearsActive versions =
    let
        years =
            List.map getYear versions
    in
        ( List.minimum years |> Maybe.withDefault 0
        , List.maximum years |> Maybe.withDefault 0
        )


allVersions : List Story -> List Version
allVersions stories =
    let
        getVersions story versions =
            List.append story.versions versions
    in
        List.foldr getVersions [] stories



--stories |> allVersions |> List.filter (hasActor Brosnan) |> yearsActive
--stories |> allVersions |> List.take 4
