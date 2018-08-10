module Bond exposing (..)

-- source: https://en.wikipedia.org/wiki/James_Bond


stories : List Story
stories =
    [ Story "Dr No"
        [ Novel 1958 Fleming
        , Film 1962 Connery
        ]
    , Story "From Russia with Love"
        [ Novel 1957 Fleming
        , Film 1963 Connery
        ]
    , Story "Goldfinger"
        [ Novel 1959 Fleming
        , Film 1964 Connery
        ]
    , Story "Thunderball"
        [ Novel 1961 Fleming
        , Film 1965 Connery
        ]
    , Story "You Only Live Twice"
        [ Novel 1964 Fleming
        , Film 1967 Connery
        ]
    , Story "On Her Majesty's Secret Service"
        [ Novel 1963 Fleming
        , Film 1969 Lazenby
        ]
    , Story "Diamonds Are Forever"
        [ Novel 1956 Fleming
        , Film 1971 Connery
        ]
    , Story "Live and Let Die"
        [ Novel 1954 Fleming
        , Film 1973 Moore
        ]
    , Story "The Man with the Golden Gun"
        [ Novel 1965 Fleming
        , Film 1974 Moore
        ]
    , Story "The Spy Who Loved Me"
        [ Novel 1962 Fleming
        , Film 1977 Moore
        ]
    , Story "Moonraker"
        [ Novel 1955 Fleming
        , Film 1979 Moore
        ]
    , Story "For Your Eyes Only"
        [ Short 1960 Fleming
        , Film 1981 Moore
        ]
    , Story "Octopussy"
        [ Short 1965 Fleming
        , Film 1983 Moore
        ]
    , Story "A View to a Kill"
        [ Short 1959 Fleming
        , Film 1985 Moore
        ]
    , Story "The Living Daylights"
        [ Short 1962 Fleming
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
        [ Novel 1953 Fleming
        , Tv 1954 Nelson
        , Film 2006 Craig
        ]
    , Story "Quantum of Solace"
        [ Short 1959 Fleming
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
    | Elba


type Author
    = Fleming


type Name
    = ActorName Actor
    | AuthorName Author


type Version
    = Film Year Actor
    | Tv Year Actor
    | Novel Year Author
    | Short Year Author


type alias Year =
    Int


type alias Story =
    { title : String
    , versions : List Version
    }
