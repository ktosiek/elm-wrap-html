# Elm Wrapped HTML

Example of wrapping the Html.Html type and constructors.

I forgot to wire in subscriptions once or twice. Not anymore!

This repo shows how to keep subscriptions together with Html,
while only changing one import.

Example:
```elm
module Main exposing (..)

import SubHtml as Html  -- replaced the import
import Browser
import Wrapper exposing (withSubs)

main = Browser.element
    { init = \() -> 0
    , view = view >> Tuple.first
    , subscriptions = view >> Tuple.second
    , update = update
    }   


-- looks like a normal view using a "clock" view function
view model =
    Html.h1 []
        [ clock model ]


-- A widget view: HTML, events on that HTML, and subscriptions
-- Types will make sure the `msg` matches, and that it's handled in the `update` function.
-- Types don't help that much with making sure views and subscriptions match - so it's better to put them together into one value.
clock model =
    Html.text (String.fromInt model)
    |> withSubs (Time.every 500 Tick)
```
