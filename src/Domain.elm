module Domain exposing (..)


type Actor
    = Dalton
    | Connery
    | Moore
    | Craig
    | Brosnan
    | Lazenby
    | Other


type Author
    = Fleming


type Media
    = Film
    | Book


type alias FilmInfo =
    { title : String
    , year : Int
    , actor : Actor
    }
