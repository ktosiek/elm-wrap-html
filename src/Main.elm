module Main exposing (..)

import HelloWorld
import Wrapper
import Time
import Browser

main = Browser.document {
    init = \() -> (Nothing, Cmd.none)
    , view = view >> Tuple.first >> \html -> {title="hello", body = [html]}
    , subscriptions = view >> Tuple.second
    , update = update
  }

view model = HelloWorld.div [] [ HelloWorld.text "yo!"
    ,HelloWorld.br [] []
    , clock model ]


update msg model =
    case msg of
        Tick posix -> (Just posix, Cmd.none)

type Msg = Tick Time.Posix

clock model =
    model
        |> Maybe.map (\time ->
            HelloWorld.div []
                [ Time.toSecond Time.utc time |> String.fromInt |> HelloWorld.text
                , HelloWorld.br [] []
                , String.fromFloat (timeUntilNextSecond time) |> HelloWorld.text
                ]
                |> withSubs (Time.every (timeUntilNextSecond time) Tick)
            )
        |> Maybe.withDefault (
            HelloWorld.text "waiting for a tick"
            |> withSubs (Time.every 1 Tick)
        )


timeUntilNextSecond : Time.Posix -> Float
timeUntilNextSecond timeNow =
    Time.posixToMillis timeNow
    |> (\t -> 1000 - (modBy 1000 t))
    |> toFloat


withSubs : Sub msg -> Wrapper.WithSubs html msg -> Wrapper.WithSubs html msg
withSubs sub (html, baseSubs) =
    (html, Sub.batch [sub, baseSubs])
