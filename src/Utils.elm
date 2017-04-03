module Utils exposing (..)

-- rename to Conversion

import Base64
import UrlBase64


b64e : String -> String
b64e str =
    case str |> enc of
        Ok text ->
            text

        Err _ ->
            "Base 64 error"


enc : String -> Result String String
enc =
    UrlBase64.encode Base64.encode


dec : String -> Result String String
dec =
    UrlBase64.decode Base64.decode
