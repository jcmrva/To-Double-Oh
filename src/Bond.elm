module Bond exposing (..)

-- source: https://en.wikipedia.org/wiki/James_Bond


stories : List Story
stories =
    [ Story "Dr No"
        [ Print 1958 Fleming
        , Film 1962 Connery
        ]
    , Story "From Russia with Love"
        [ Print 1957 Fleming
        , Film 1963 Connery
        ]
    , Story "Goldfinger"
        [ Print 1959 Fleming
        , Film 1964 Connery
        ]
    , Story "Thunderball"
        [ Print 1961 Fleming
        , Film 1965 Connery
        ]
    , Story "You Only Live Twice"
        [ Print 1964 Fleming
        , Film 1967 Connery
        ]
    , Story "On Her Majesty's Secret Service"
        [ Print 1963 Fleming
        , Film 1969 Lazenby
        ]
    , Story "Diamonds Are Forever"
        [ Print 1956 Fleming
        , Film 1971 Connery
        ]
    , Story "Live and Let Die"
        [ Print 1954 Fleming
        , Film 1973 Moore
        ]
    , Story "The Man with the Golden Gun"
        [ Print 1965 Fleming
        , Film 1974 Moore
        ]
    , Story "The Spy Who Loved Me"
        [ Print 1962 Fleming
        , Film 1977 Moore
        ]
    , Story "Moonraker"
        [ Print 1955 Fleming
        , Film 1979 Moore
        ]
    , Story "For Your Eyes Only"
        [ Print 1960 Fleming
        , Film 1981 Moore
        ]
    , Story "Octopussy"
        [ Print 1965 Fleming
        , Film 1983 Moore
        ]
    , Story "A View to a Kill"
        [ Print 1959 Fleming
        , Film 1985 Moore
        ]
    , Story "The Living Daylights"
        [ Print 1962 Fleming
        , Film 1987 Dalton
        ]
    , Story "License to Kill"
        [ Film 1989 Dalton
        ]
    , Story "GoldenEye"
        [ Film 1995 Brosnan
        ]
    , Story "The World is Not Enough"
        [ Film 1997 Brosnan
        ]
    , Story "Tomorrow Never Dies"
        [ Film 1999 Brosnan
        ]
    , Story "Die Another Day"
        [ Film 2002 Brosnan
        ]
    , Story "Casino Royale"
        [ Print 1953 Fleming
        , Tv 1954 Nelson
        , Film 2006 Craig
        ]
    , Story "Quantum of Solace"
        [ Print 1959 Fleming
        , Film 2008 Craig
        ]
    , Story "Skyfall"
        [ Film 2012 Craig
        ]
    , Story "Spectre"
        [ Film 2015 Craig
        ]
    ]


type Actor
    = Nelson
    | Connery
    | Moore
    | Lazenby
    | Dalton
    | Brosnan
    | Craig


type Author
    = Fleming


type Name
    = ActorName Actor
    | AuthorName Author


type Version
    = Film Year Actor
    | Tv Year Actor
    | Print Year Author


type alias Year =
    Int


type alias Story =
    { title : String
    , versions : List Version
    }


getName : Version -> String
getName v =
    case v of
        Film y a ->
            a |> toString

        Tv y a ->
            a |> toString

        Print y a ->
            a |> toString


hasActor : Version -> Actor -> Bool
hasActor version actor =
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
        Print _ a ->
            a == author

        _ ->
            False


yearsActive : List Version -> Name -> ( Year, Year )
yearsActive versions name =
    let
        x =
            1
    in
        case name of
            ActorName n ->
                ( 1, 2 )

            AuthorName n ->
                ( 1, 2 )


yearsBrosnan : ( Year, Year )
yearsBrosnan =
    yearsActive [] (ActorName Brosnan)


yearsFleming : ( Year, Year )
yearsFleming =
    yearsActive [] (AuthorName Fleming)



--yearsBrosnan |> Tuple.first |> toString


allVersions : List Story -> List Version
allVersions stories =
    let
        getVersions story versions =
            List.append story.versions versions
    in
        List.foldr getVersions [] stories



--stories |> allVersions |> List.take 4
