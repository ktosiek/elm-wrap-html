module Main exposing (..)

import SubHtml as Html
import Wrapper
import Time
import Browser

main = Browser.document {
    init = \() -> (Nothing, Cmd.none)
    , view = view >> Tuple.first >> \html -> {title="hello", body = [html]}
    , subscriptions = view >> Tuple.second
    , update = update
  }

view model = Html.div [] [ Html.text "yo!"
    ,Html.br [] []
    , clock model ]


update msg model =
    case msg of
        Tick posix -> (Just posix, Cmd.none)

type Msg = Tick Time.Posix

clock model =
    model
        |> Maybe.map (\time ->
            Html.div []
                [ Time.toSecond Time.utc time |> String.fromInt |> Html.text
                , Html.br [] []
                , String.fromFloat (timeUntilNextSecond time) |> Html.text
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
