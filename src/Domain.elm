module Domain exposing (..)


type Actor
    = Dalton1 String
    | Connery1 String
    | Elba1 String
    | Moore1 String
    | Craig1 String
    | Brosnan1 String
    | Lazenby1 String
    | Other1 String


type Principal
    = --actors
      Dalton
    | Connery
    | Moore
    | Craig
    | Brosnan
    | Lazenby
      --authors
    | Fleming


isAuthor : Principal -> Bool
isAuthor b =
    case b of
        Fleming ->
            True

        _ ->
            False


type Media
    = Film
    | Book


type alias Release =
    { year : Int
    , media : Media
    , principal : Principal
    }


type Rel
    = Film2 { year : Int, principal : Principal }
    | Novel2 { year : Int, principal : Principal }


type alias Story2 =
    { title : String
    , releases : List Rel
    }


type alias Story =
    { title : String
    , releases : List Release
    }


getReleaseOfType :
    String
    -> a
    -> { c | media : b, principal : Principal, year : Int }
    -> FilmInfo
getReleaseOfType title mediaType { year, media, principal } =
    case media of
        mediaType ->
            FilmInfo title year principal



--{ title = title, year = year, principal = principal }


getFilms : String -> List Release -> List FilmInfo
getFilms title lst =
    List.map (getReleaseOfType title Film) lst


type alias FilmInfo =
    { title : String, year : Int, principal : Principal }


getTitles : List String
getTitles =
    stories |> List.map (\l -> l.title)



-- check for record type?  Film 1963 Connery


stories : List Story
stories =
    [ Story "Dr No"
        [ Release 1963 Film Connery
        , Release 1958 Book Fleming
        ]
    , Story "From Russia with Love"
        [ Release 1963 Film Connery
        , Release 1957 Book Fleming
        ]
    , Story "Goldfinger"
        [ Release 1964 Film Connery
        , Release 1959 Book Fleming
        ]
    , Story "Thunderball"
        [ Release 1965 Film Connery
        , Release 1961 Book Fleming
        ]
    , Story "You Only Live Twice"
        [ Release 1967 Film Connery
        , Release 1964 Book Fleming
        ]
    , Story "On Her Majesty's Secret Service"
        [ Release 1969 Film Lazenby
        , Release 1963 Book Fleming
        ]
    , Story "Diamonds Are Forever"
        [ Release 1971 Film Connery
        , Release 1956 Book Fleming
        ]
    , Story "Live and Let Die"
        [ Release 1973 Film Moore
        , Release 1954 Book Fleming
        ]
    , Story "The Man with the Golden Gun"
        [ Release 1974 Film Moore
        , Release 1965 Book Fleming
        ]
    , Story "The Spy Who Loved Me"
        [ Release 1977 Film Moore
        , Release 1962 Book Fleming
        ]
    , Story "Moonraker"
        [ Release 1979 Film Moore
        , Release 1955 Book Fleming
        ]
    , Story "For Your Eyes Only"
        [ Release 1981 Film Moore
        , Release 1960 Book Fleming
        ]
    , Story "Octopussy"
        [ Release 1983 Film Moore
        , Release 1965 Book Fleming
        ]
    , Story "A View to a Kill"
        [ Release 1985 Film Moore
        , Release 1959 Book Fleming
        ]
    , Story "The Living Daylights"
        [ Release 1987 Film Dalton
        , Release 1962 Book Fleming
        ]
    , Story "License to Kill" [ Release 1989 Film Dalton ]
    , Story "GoldenEye" [ Release 1995 Film Brosnan ]
    , Story "The World is Not Enough" [ Release 1997 Film Brosnan ]
    , Story "Tomorrow Never Dies" [ Release 1999 Film Brosnan ]
    , Story "Die Another Day" [ Release 2002 Film Brosnan ]
    , Story "Casino Royale"
        [ Release 1953 Book Fleming
        , Release 2006 Film Craig
        ]
    , Story "Quantum of Solace"
        [ Release 2008 Film Craig
        , Release 1959 Book Fleming
        ]
    , Story "Skyfall" [ Release 2012 Film Craig ]
    , Story "Spectre" [ Release 2015 Film Craig ]
    ]
