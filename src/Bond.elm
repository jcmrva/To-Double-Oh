module Bond exposing (..)

-- source: https://en.wikipedia.org/wiki/James_Bond


stories : List Story
stories =
    [ Story "Dr No"
        [ Film 1963 Connery
        , Print 1958 Fleming
        ]
    , Story "From Russia with Love"
        [ Film 1963 Connery
        , Print 1957 Fleming
        ]
    , Story "Goldfinger"
        [ Film 1964 Connery
        , Print 1959 Fleming
        ]
    , Story "Thunderball"
        [ Film 1965 Connery
        , Print 1961 Fleming
        ]
    , Story "You Only Live Twice"
        [ Film 1967 Connery
        , Print 1964 Fleming
        ]
    , Story "On Her Majesty's Secret Service"
        [ Film 1969 Lazenby
        , Print 1963 Fleming
        ]
    , Story "Diamonds Are Forever"
        [ Film 1971 Connery
        , Print 1956 Fleming
        ]
    , Story "Live and Let Die"
        [ Film 1973 Moore
        , Print 1954 Fleming
        ]
    , Story "The Man with the Golden Gun"
        [ Film 1974 Moore
        , Print 1965 Fleming
        ]
    , Story "The Spy Who Loved Me"
        [ Film 1977 Moore
        , Print 1962 Fleming
        ]
    , Story "Moonraker"
        [ Film 1979 Moore
        , Print 1955 Fleming
        ]
    , Story "For Your Eyes Only"
        [ Film 1981 Moore
        , Print 1960 Fleming
        ]
    , Story "Octopussy"
        [ Film 1983 Moore
        , Print 1965 Fleming
        ]
    , Story "A View to a Kill"
        [ Film 1985 Moore
        , Print 1959 Fleming
        ]
    , Story "The Living Daylights"
        [ Film 1987 Dalton
        , Print 1962 Fleming
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
        [ Film 2008 Craig
        , Print 1959 Fleming
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
    = Actor Actor
    | Author Author


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


yearsActive : List Story -> Name -> ( Year, Year )
yearsActive stories name =
    case name of
        Actor n ->
            ( 1, 2 )

        Author n ->
            ( 1, 2 )


yearsBrosnan : ( Int, Int )
yearsBrosnan =
    yearsActive [] (Actor Brosnan)


yearsFleming : ( Int, Int )
yearsFleming =
    yearsActive [] (Author Fleming)
