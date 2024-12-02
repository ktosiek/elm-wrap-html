module Main exposing (..)

import SubHtml as Html
import Html as RawHtml
import Wrapper
import Time
import Browser

main = Browser.document {
    init = \() -> (Nothing, Cmd.none)
    , view = view >> Tuple.first >> \html -> {title="hello", body = [html]}
    , subscriptions = view >> Tuple.second
    , update = update
  }

view model = Html.div []
    [ Html.text "A timer, with all subscription inside the `clock` view function:"
    , Html.br [] []
    , clock model
    , Html.br [] []
    , RawHtml.h4 []
        [ RawHtml.text "component from native Html.text"
        ]
        |> Wrapper.fromHtml
    ]


update msg model =
    case msg of
        Tick posix -> (Just posix, Cmd.none)

type Msg = Tick Time.Posix

clock model =
    model
        |> Maybe.map (\time ->
            Html.div []
                [ ("Second of this minute: " ++ (Time.toSecond Time.utc time |> String.fromInt))
                    |> Html.text
                , Html.br [] []
                , ("Time until next second: " ++ String.fromFloat (timeUntilNextSecond time) ++ "ms")
                    |> Html.text
                ]
                |> withSubs (Time.every (timeUntilNextSecond time) Tick)
            )
        |> Maybe.withDefault (
            Html.text "waiting for a tick"
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
