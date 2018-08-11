module Bond exposing (stories, Actor(..), Author(..), Name(..), Version(..), Year, Story)

-- source: https://en.wikipedia.org/wiki/James_Bond
-- entries are limited to the official films but versions are in release order


stories : List Story
stories =
    [ "Dr No"
        > [ Novel 1958 Fleming
          , Film 1962 Connery
          ]
    , "From Russia with Love"
        > [ Novel 1957 Fleming
          , Film 1963 Connery
          ]
    , "Goldfinger"
        > [ Novel 1959 Fleming
          , Film 1964 Connery
          ]
    , "Thunderball"
        > [ Novel 1961 Fleming
          , Film 1965 Connery
          ]
    , "You Only Live Twice"
        > [ Novel 1964 Fleming
          , Film 1967 Connery
          ]
    , "On Her Majesty's Secret Service"
        > [ Novel 1963 Fleming
          , Film 1969 Lazenby
          ]
    , "Diamonds Are Forever"
        > [ Novel 1956 Fleming
          , Film 1971 Connery
          ]
    , "Live and Let Die"
        > [ Novel 1954 Fleming
          , Film 1973 Moore
          ]
    , "The Man with the Golden Gun"
        > [ Novel 1965 Fleming
          , Film 1974 Moore
          ]
    , "The Spy Who Loved Me"
        > [ Novel 1962 Fleming
          , Film 1977 Moore
          ]
    , "Moonraker"
        > [ Novel 1955 Fleming
          , Film 1979 Moore
          ]
    , "For Your Eyes Only"
        > [ Short 1960 Fleming
          , Film 1981 Moore
          ]
    , "Octopussy"
        > [ Short 1965 Fleming
          , Film 1983 Moore
          ]
    , "A View to a Kill"
        > [ Short 1959 Fleming
          , Film 1985 Moore
          ]
    , "The Living Daylights"
        > [ Short 1962 Fleming
          , Film 1987 Dalton
          ]
    , "License to Kill"
        > [ Film 1989 Dalton
          ]
    , "GoldenEye"
        > [ Film 1995 Brosnan
          ]
    , "The World is Not Enough"
        > [ Film 1997 Brosnan
          ]
    , "Tomorrow Never Dies"
        > [ Film 1999 Brosnan
          ]
    , "Die Another Day"
        > [ Film 2002 Brosnan
          ]
    , "Casino Royale"
        > [ Novel 1953 Fleming
          , Tv 1954 Nelson
          , Film 2006 Craig
          ]
    , "Quantum of Solace"
        > [ Short 1959 Fleming
          , Film 2008 Craig
          ]
    , "Skyfall"
        > [ Film 2012 Craig
          ]
    , "Spectre"
        > [ Film 2015 Craig
          ]
    ]



-- model


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


(>) : String -> List Version -> Story
(>) s lv =
    { title = s, versions = lv }
