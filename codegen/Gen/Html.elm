module Gen.Html exposing
    ( moduleName_, text, node, map, h1, h2
    , h3, h4, h5, h6, div, p, hr
    , pre, blockquote, span, a, code, em, strong
    , i, b, u, sub, sup, br, ol
    , ul, li, dl, dt, dd, img, iframe
    , canvas, math, form, input, textarea, button, select
    , option, section, nav, article, aside, header, footer
    , address, main_, figure, figcaption, table, caption, colgroup
    , col, tbody, thead, tfoot, tr, td, th
    , fieldset, legend, label, datalist, optgroup, output, progress
    , meter, audio, video, source, track, embed, object
    , param, ins, del, small, cite, dfn, abbr
    , time, var, samp, kbd, s, q, mark
    , ruby, rt, rp, bdi, bdo, wbr, details
    , summary, menuitem, menu, annotation_, call_, values_
    )

{-|
# Generated bindings for Html

@docs moduleName_, text, node, map, h1, h2
@docs h3, h4, h5, h6, div, p
@docs hr, pre, blockquote, span, a, code
@docs em, strong, i, b, u, sub
@docs sup, br, ol, ul, li, dl
@docs dt, dd, img, iframe, canvas, math
@docs form, input, textarea, button, select, option
@docs section, nav, article, aside, header, footer
@docs address, main_, figure, figcaption, table, caption
@docs colgroup, col, tbody, thead, tfoot, tr
@docs td, th, fieldset, legend, label, datalist
@docs optgroup, output, progress, meter, audio, video
@docs source, track, embed, object, param, ins
@docs del, small, cite, dfn, abbr, time
@docs var, samp, kbd, s, q, mark
@docs ruby, rt, rp, bdi, bdo, wbr
@docs details, summary, menuitem, menu, annotation_, call_
@docs values_
-}


import Elm
import Elm.Annotation as Type


{-| The name of this module. -}
moduleName_ : List String
moduleName_ =
    [ "Html" ]


{-| Just put plain text in the DOM. It will escape the string so that it appears
exactly as you specify.

    text "Hello World!"

text: String -> Html.Html msg
-}
text : String -> Elm.Expression
text textArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "text"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.string textArg_ ]


{-| General way to create HTML nodes. It is used to define all of the helper
functions in this library.

    div : List (Attribute msg) -> List (Html msg) -> Html msg
    div attributes children =
        node "div" attributes children

You can use this to create custom nodes if you need to create something that
is not covered by the helper functions in this library.

node: String -> List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
node : String -> List Elm.Expression -> List Elm.Expression -> Elm.Expression
node nodeArg_ nodeArg_0 nodeArg_1 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "node"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.string nodeArg_, Elm.list nodeArg_0, Elm.list nodeArg_1 ]


{-| Transform the messages produced by some `Html`. In the following example,
we have `viewButton` that produces `()` messages, and we transform those values
into `Msg` values in `view`.

    type Msg = Left | Right

    view : model -> Html Msg
    view model =
      div []
        [ map (\_ -> Left) (viewButton "Left")
        , map (\_ -> Right) (viewButton "Right")
        ]

    viewButton : String -> Html ()
    viewButton name =
      button [ onClick () ] [ text name ]

This should not come in handy too often. Definitely read [this][reuse] before
deciding if this is what you want.

[reuse]: https://guide.elm-lang.org/reuse/

map: (a -> msg) -> Html.Html a -> Html.Html msg
-}
map : (Elm.Expression -> Elm.Expression) -> Elm.Expression -> Elm.Expression
map mapArg_ mapArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "map"
             , annotation =
                 Just
                     (Type.function
                          [ Type.function [ Type.var "a" ] (Type.var "msg")
                          , Type.namedWith [ "Html" ] "Html" [ Type.var "a" ]
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.functionReduced "mapUnpack" mapArg_, mapArg_0 ]


{-| h1: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg -}
h1 : List Elm.Expression -> List Elm.Expression -> Elm.Expression
h1 h1Arg_ h1Arg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "h1"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list h1Arg_, Elm.list h1Arg_0 ]


{-| h2: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg -}
h2 : List Elm.Expression -> List Elm.Expression -> Elm.Expression
h2 h2Arg_ h2Arg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "h2"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list h2Arg_, Elm.list h2Arg_0 ]


{-| h3: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg -}
h3 : List Elm.Expression -> List Elm.Expression -> Elm.Expression
h3 h3Arg_ h3Arg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "h3"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list h3Arg_, Elm.list h3Arg_0 ]


{-| h4: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg -}
h4 : List Elm.Expression -> List Elm.Expression -> Elm.Expression
h4 h4Arg_ h4Arg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "h4"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list h4Arg_, Elm.list h4Arg_0 ]


{-| h5: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg -}
h5 : List Elm.Expression -> List Elm.Expression -> Elm.Expression
h5 h5Arg_ h5Arg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "h5"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list h5Arg_, Elm.list h5Arg_0 ]


{-| h6: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg -}
h6 : List Elm.Expression -> List Elm.Expression -> Elm.Expression
h6 h6Arg_ h6Arg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "h6"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list h6Arg_, Elm.list h6Arg_0 ]


{-| Represents a generic container with no special meaning.

div: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
div : List Elm.Expression -> List Elm.Expression -> Elm.Expression
div divArg_ divArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "div"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list divArg_, Elm.list divArg_0 ]


{-| Defines a portion that should be displayed as a paragraph.

p: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
p : List Elm.Expression -> List Elm.Expression -> Elm.Expression
p pArg_ pArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "p"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list pArg_, Elm.list pArg_0 ]


{-| Represents a thematic break between paragraphs of a section or article or
any longer content.

hr: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
hr : List Elm.Expression -> List Elm.Expression -> Elm.Expression
hr hrArg_ hrArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "hr"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list hrArg_, Elm.list hrArg_0 ]


{-| Indicates that its content is preformatted and that this format must be
preserved.

pre: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
pre : List Elm.Expression -> List Elm.Expression -> Elm.Expression
pre preArg_ preArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "pre"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list preArg_, Elm.list preArg_0 ]


{-| Represents a content that is quoted from another source.

blockquote: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
blockquote : List Elm.Expression -> List Elm.Expression -> Elm.Expression
blockquote blockquoteArg_ blockquoteArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "blockquote"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list blockquoteArg_, Elm.list blockquoteArg_0 ]


{-| Represents text with no specific meaning. This has to be used when no other
text-semantic element conveys an adequate meaning, which, in this case, is
often brought by global attributes like `class`, `lang`, or `dir`.

span: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
span : List Elm.Expression -> List Elm.Expression -> Elm.Expression
span spanArg_ spanArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "span"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list spanArg_, Elm.list spanArg_0 ]


{-| Represents a hyperlink, linking to another resource.

a: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
a : List Elm.Expression -> List Elm.Expression -> Elm.Expression
a aArg_ aArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "a"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list aArg_, Elm.list aArg_0 ]


{-| Represents computer code.

code: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
code : List Elm.Expression -> List Elm.Expression -> Elm.Expression
code codeArg_ codeArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "code"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list codeArg_, Elm.list codeArg_0 ]


{-| Represents emphasized text, like a stress accent.

em: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
em : List Elm.Expression -> List Elm.Expression -> Elm.Expression
em emArg_ emArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "em"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list emArg_, Elm.list emArg_0 ]


{-| Represents especially important text.

strong: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
strong : List Elm.Expression -> List Elm.Expression -> Elm.Expression
strong strongArg_ strongArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "strong"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list strongArg_, Elm.list strongArg_0 ]


{-| Represents some text in an alternate voice or mood, or at least of
different quality, such as a taxonomic designation, a technical term, an
idiomatic phrase, a thought, or a ship name.

i: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
i : List Elm.Expression -> List Elm.Expression -> Elm.Expression
i iArg_ iArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "i"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list iArg_, Elm.list iArg_0 ]


{-| Represents a text which to which attention is drawn for utilitarian
purposes. It doesn't convey extra importance and doesn't imply an alternate
voice.

b: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
b : List Elm.Expression -> List Elm.Expression -> Elm.Expression
b bArg_ bArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "b"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list bArg_, Elm.list bArg_0 ]


{-| Represents a non-textual annotation for which the conventional
presentation is underlining, such labeling the text as being misspelt or
labeling a proper name in Chinese text.

u: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
u : List Elm.Expression -> List Elm.Expression -> Elm.Expression
u uArg_ uArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "u"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list uArg_, Elm.list uArg_0 ]


{-| Represent a subscript.

sub: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
sub : List Elm.Expression -> List Elm.Expression -> Elm.Expression
sub subArg_ subArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "sub"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list subArg_, Elm.list subArg_0 ]


{-| Represent a superscript.

sup: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
sup : List Elm.Expression -> List Elm.Expression -> Elm.Expression
sup supArg_ supArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "sup"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list supArg_, Elm.list supArg_0 ]


{-| Represents a line break.

br: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
br : List Elm.Expression -> List Elm.Expression -> Elm.Expression
br brArg_ brArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "br"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list brArg_, Elm.list brArg_0 ]


{-| Defines an ordered list of items.

ol: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
ol : List Elm.Expression -> List Elm.Expression -> Elm.Expression
ol olArg_ olArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "ol"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list olArg_, Elm.list olArg_0 ]


{-| Defines an unordered list of items.

ul: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
ul : List Elm.Expression -> List Elm.Expression -> Elm.Expression
ul ulArg_ ulArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "ul"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list ulArg_, Elm.list ulArg_0 ]


{-| Defines a item of an enumeration list.

li: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
li : List Elm.Expression -> List Elm.Expression -> Elm.Expression
li liArg_ liArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "li"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list liArg_, Elm.list liArg_0 ]


{-| Defines a definition list, that is, a list of terms and their associated
definitions.

dl: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
dl : List Elm.Expression -> List Elm.Expression -> Elm.Expression
dl dlArg_ dlArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "dl"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list dlArg_, Elm.list dlArg_0 ]


{-| Represents a term defined by the next `dd`.

dt: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
dt : List Elm.Expression -> List Elm.Expression -> Elm.Expression
dt dtArg_ dtArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "dt"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list dtArg_, Elm.list dtArg_0 ]


{-| Represents the definition of the terms immediately listed before it.

dd: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
dd : List Elm.Expression -> List Elm.Expression -> Elm.Expression
dd ddArg_ ddArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "dd"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list ddArg_, Elm.list ddArg_0 ]


{-| Represents an image.

img: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
img : List Elm.Expression -> List Elm.Expression -> Elm.Expression
img imgArg_ imgArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "img"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list imgArg_, Elm.list imgArg_0 ]


{-| Embedded an HTML document.

iframe: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
iframe : List Elm.Expression -> List Elm.Expression -> Elm.Expression
iframe iframeArg_ iframeArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "iframe"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list iframeArg_, Elm.list iframeArg_0 ]


{-| Represents a bitmap area for graphics rendering.

canvas: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
canvas : List Elm.Expression -> List Elm.Expression -> Elm.Expression
canvas canvasArg_ canvasArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "canvas"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list canvasArg_, Elm.list canvasArg_0 ]


{-| Defines a mathematical formula.

math: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
math : List Elm.Expression -> List Elm.Expression -> Elm.Expression
math mathArg_ mathArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "math"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list mathArg_, Elm.list mathArg_0 ]


{-| Represents a form, consisting of controls, that can be submitted to a
server for processing.

form: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
form : List Elm.Expression -> List Elm.Expression -> Elm.Expression
form formArg_ formArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "form"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list formArg_, Elm.list formArg_0 ]


{-| Represents a typed data field allowing the user to edit the data.

input: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
input : List Elm.Expression -> List Elm.Expression -> Elm.Expression
input inputArg_ inputArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "input"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list inputArg_, Elm.list inputArg_0 ]


{-| Represents a multiline text edit control.

textarea: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
textarea : List Elm.Expression -> List Elm.Expression -> Elm.Expression
textarea textareaArg_ textareaArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "textarea"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list textareaArg_, Elm.list textareaArg_0 ]


{-| Represents a button.

button: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
button : List Elm.Expression -> List Elm.Expression -> Elm.Expression
button buttonArg_ buttonArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "button"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list buttonArg_, Elm.list buttonArg_0 ]


{-| Represents a control allowing selection among a set of options.

select: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
select : List Elm.Expression -> List Elm.Expression -> Elm.Expression
select selectArg_ selectArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "select"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list selectArg_, Elm.list selectArg_0 ]


{-| Represents an option in a `select` element or a suggestion of a `datalist`
element.

option: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
option : List Elm.Expression -> List Elm.Expression -> Elm.Expression
option optionArg_ optionArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "option"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list optionArg_, Elm.list optionArg_0 ]


{-| Defines a section in a document.

section: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
section : List Elm.Expression -> List Elm.Expression -> Elm.Expression
section sectionArg_ sectionArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "section"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list sectionArg_, Elm.list sectionArg_0 ]


{-| Defines a section that contains only navigation links.

nav: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
nav : List Elm.Expression -> List Elm.Expression -> Elm.Expression
nav navArg_ navArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "nav"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list navArg_, Elm.list navArg_0 ]


{-| Defines self-contained content that could exist independently of the rest
of the content.

article: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
article : List Elm.Expression -> List Elm.Expression -> Elm.Expression
article articleArg_ articleArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "article"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list articleArg_, Elm.list articleArg_0 ]


{-| Defines some content loosely related to the page content. If it is removed,
the remaining content still makes sense.

aside: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
aside : List Elm.Expression -> List Elm.Expression -> Elm.Expression
aside asideArg_ asideArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "aside"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list asideArg_, Elm.list asideArg_0 ]


{-| Defines the header of a page or section. It often contains a logo, the
title of the web site, and a navigational table of content.

header: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
header : List Elm.Expression -> List Elm.Expression -> Elm.Expression
header headerArg_ headerArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "header"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list headerArg_, Elm.list headerArg_0 ]


{-| Defines the footer for a page or section. It often contains a copyright
notice, some links to legal information, or addresses to give feedback.

footer: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
footer : List Elm.Expression -> List Elm.Expression -> Elm.Expression
footer footerArg_ footerArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "footer"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list footerArg_, Elm.list footerArg_0 ]


{-| Defines a section containing contact information.

address: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
address : List Elm.Expression -> List Elm.Expression -> Elm.Expression
address addressArg_ addressArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "address"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list addressArg_, Elm.list addressArg_0 ]


{-| Defines the main or important content in the document. There is only one
`main` element in the document.

main_: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
main_ : List Elm.Expression -> List Elm.Expression -> Elm.Expression
main_ main_Arg_ main_Arg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "main_"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list main_Arg_, Elm.list main_Arg_0 ]


{-| Represents a figure illustrated as part of the document.

figure: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
figure : List Elm.Expression -> List Elm.Expression -> Elm.Expression
figure figureArg_ figureArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "figure"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list figureArg_, Elm.list figureArg_0 ]


{-| Represents the legend of a figure.

figcaption: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
figcaption : List Elm.Expression -> List Elm.Expression -> Elm.Expression
figcaption figcaptionArg_ figcaptionArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "figcaption"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list figcaptionArg_, Elm.list figcaptionArg_0 ]


{-| Represents data with more than one dimension.

table: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
table : List Elm.Expression -> List Elm.Expression -> Elm.Expression
table tableArg_ tableArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "table"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list tableArg_, Elm.list tableArg_0 ]


{-| Represents the title of a table.

caption: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
caption : List Elm.Expression -> List Elm.Expression -> Elm.Expression
caption captionArg_ captionArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "caption"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list captionArg_, Elm.list captionArg_0 ]


{-| Represents a set of one or more columns of a table.

colgroup: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
colgroup : List Elm.Expression -> List Elm.Expression -> Elm.Expression
colgroup colgroupArg_ colgroupArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "colgroup"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list colgroupArg_, Elm.list colgroupArg_0 ]


{-| Represents a column of a table.

col: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
col : List Elm.Expression -> List Elm.Expression -> Elm.Expression
col colArg_ colArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "col"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list colArg_, Elm.list colArg_0 ]


{-| Represents the block of rows that describes the concrete data of a table.

tbody: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
tbody : List Elm.Expression -> List Elm.Expression -> Elm.Expression
tbody tbodyArg_ tbodyArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "tbody"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list tbodyArg_, Elm.list tbodyArg_0 ]


{-| Represents the block of rows that describes the column labels of a table.

thead: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
thead : List Elm.Expression -> List Elm.Expression -> Elm.Expression
thead theadArg_ theadArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "thead"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list theadArg_, Elm.list theadArg_0 ]


{-| Represents the block of rows that describes the column summaries of a table.

tfoot: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
tfoot : List Elm.Expression -> List Elm.Expression -> Elm.Expression
tfoot tfootArg_ tfootArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "tfoot"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list tfootArg_, Elm.list tfootArg_0 ]


{-| Represents a row of cells in a table.

tr: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
tr : List Elm.Expression -> List Elm.Expression -> Elm.Expression
tr trArg_ trArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "tr"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list trArg_, Elm.list trArg_0 ]


{-| Represents a data cell in a table.

td: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
td : List Elm.Expression -> List Elm.Expression -> Elm.Expression
td tdArg_ tdArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "td"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list tdArg_, Elm.list tdArg_0 ]


{-| Represents a header cell in a table.

th: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
th : List Elm.Expression -> List Elm.Expression -> Elm.Expression
th thArg_ thArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "th"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list thArg_, Elm.list thArg_0 ]


{-| Represents a set of controls.

fieldset: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
fieldset : List Elm.Expression -> List Elm.Expression -> Elm.Expression
fieldset fieldsetArg_ fieldsetArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "fieldset"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list fieldsetArg_, Elm.list fieldsetArg_0 ]


{-| Represents the caption for a `fieldset`.

legend: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
legend : List Elm.Expression -> List Elm.Expression -> Elm.Expression
legend legendArg_ legendArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "legend"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list legendArg_, Elm.list legendArg_0 ]


{-| Represents the caption of a form control.

label: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
label : List Elm.Expression -> List Elm.Expression -> Elm.Expression
label labelArg_ labelArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "label"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list labelArg_, Elm.list labelArg_0 ]


{-| Represents a set of predefined options for other controls.

datalist: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
datalist : List Elm.Expression -> List Elm.Expression -> Elm.Expression
datalist datalistArg_ datalistArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "datalist"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list datalistArg_, Elm.list datalistArg_0 ]


{-| Represents a set of options, logically grouped.

optgroup: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
optgroup : List Elm.Expression -> List Elm.Expression -> Elm.Expression
optgroup optgroupArg_ optgroupArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "optgroup"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list optgroupArg_, Elm.list optgroupArg_0 ]


{-| Represents the result of a calculation.

output: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
output : List Elm.Expression -> List Elm.Expression -> Elm.Expression
output outputArg_ outputArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "output"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list outputArg_, Elm.list outputArg_0 ]


{-| Represents the completion progress of a task.

progress: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
progress : List Elm.Expression -> List Elm.Expression -> Elm.Expression
progress progressArg_ progressArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "progress"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list progressArg_, Elm.list progressArg_0 ]


{-| Represents a scalar measurement (or a fractional value), within a known
range.

meter: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
meter : List Elm.Expression -> List Elm.Expression -> Elm.Expression
meter meterArg_ meterArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "meter"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list meterArg_, Elm.list meterArg_0 ]


{-| Represents a sound or audio stream.

audio: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
audio : List Elm.Expression -> List Elm.Expression -> Elm.Expression
audio audioArg_ audioArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "audio"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list audioArg_, Elm.list audioArg_0 ]


{-| Represents a video, the associated audio and captions, and controls.

video: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
video : List Elm.Expression -> List Elm.Expression -> Elm.Expression
video videoArg_ videoArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "video"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list videoArg_, Elm.list videoArg_0 ]


{-| Allows authors to specify alternative media resources for media elements
like `video` or `audio`.

source: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
source : List Elm.Expression -> List Elm.Expression -> Elm.Expression
source sourceArg_ sourceArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "source"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list sourceArg_, Elm.list sourceArg_0 ]


{-| Allows authors to specify timed text track for media elements like `video`
or `audio`.

track: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
track : List Elm.Expression -> List Elm.Expression -> Elm.Expression
track trackArg_ trackArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "track"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list trackArg_, Elm.list trackArg_0 ]


{-| Represents a integration point for an external, often non-HTML,
application or interactive content.

embed: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
embed : List Elm.Expression -> List Elm.Expression -> Elm.Expression
embed embedArg_ embedArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "embed"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list embedArg_, Elm.list embedArg_0 ]


{-| Represents an external resource, which is treated as an image, an HTML
sub-document, or an external resource to be processed by a plug-in.

object: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
object : List Elm.Expression -> List Elm.Expression -> Elm.Expression
object objectArg_ objectArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "object"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list objectArg_, Elm.list objectArg_0 ]


{-| Defines parameters for use by plug-ins invoked by `object` elements.

param: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
param : List Elm.Expression -> List Elm.Expression -> Elm.Expression
param paramArg_ paramArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "param"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list paramArg_, Elm.list paramArg_0 ]


{-| Defines an addition to the document.

ins: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
ins : List Elm.Expression -> List Elm.Expression -> Elm.Expression
ins insArg_ insArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "ins"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list insArg_, Elm.list insArg_0 ]


{-| Defines a removal from the document.

del: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
del : List Elm.Expression -> List Elm.Expression -> Elm.Expression
del delArg_ delArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "del"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list delArg_, Elm.list delArg_0 ]


{-| Represents a side comment, that is, text like a disclaimer or a
copyright, which is not essential to the comprehension of the document.

small: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
small : List Elm.Expression -> List Elm.Expression -> Elm.Expression
small smallArg_ smallArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "small"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list smallArg_, Elm.list smallArg_0 ]


{-| Represents the title of a work.

cite: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
cite : List Elm.Expression -> List Elm.Expression -> Elm.Expression
cite citeArg_ citeArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "cite"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list citeArg_, Elm.list citeArg_0 ]


{-| Represents a term whose definition is contained in its nearest ancestor
content.

dfn: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
dfn : List Elm.Expression -> List Elm.Expression -> Elm.Expression
dfn dfnArg_ dfnArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "dfn"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list dfnArg_, Elm.list dfnArg_0 ]


{-| Represents an abbreviation or an acronym; the expansion of the
abbreviation can be represented in the title attribute.

abbr: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
abbr : List Elm.Expression -> List Elm.Expression -> Elm.Expression
abbr abbrArg_ abbrArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "abbr"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list abbrArg_, Elm.list abbrArg_0 ]


{-| Represents a date and time value; the machine-readable equivalent can be
represented in the datetime attribute.

time: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
time : List Elm.Expression -> List Elm.Expression -> Elm.Expression
time timeArg_ timeArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "time"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list timeArg_, Elm.list timeArg_0 ]


{-| Represents a variable. Specific cases where it should be used include an
actual mathematical expression or programming context, an identifier
representing a constant, a symbol identifying a physical quantity, a function
parameter, or a mere placeholder in prose.

var: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
var : List Elm.Expression -> List Elm.Expression -> Elm.Expression
var varArg_ varArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "var"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list varArg_, Elm.list varArg_0 ]


{-| Represents the output of a program or a computer.

samp: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
samp : List Elm.Expression -> List Elm.Expression -> Elm.Expression
samp sampArg_ sampArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "samp"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list sampArg_, Elm.list sampArg_0 ]


{-| Represents user input, often from the keyboard, but not necessarily; it
may represent other input, like transcribed voice commands.

kbd: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
kbd : List Elm.Expression -> List Elm.Expression -> Elm.Expression
kbd kbdArg_ kbdArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "kbd"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list kbdArg_, Elm.list kbdArg_0 ]


{-| Represents content that is no longer accurate or relevant.

s: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
s : List Elm.Expression -> List Elm.Expression -> Elm.Expression
s sArg_ sArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "s"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list sArg_, Elm.list sArg_0 ]


{-| Represents an inline quotation.

q: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
q : List Elm.Expression -> List Elm.Expression -> Elm.Expression
q qArg_ qArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "q"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list qArg_, Elm.list qArg_0 ]


{-| Represents text highlighted for reference purposes, that is for its
relevance in another context.

mark: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
mark : List Elm.Expression -> List Elm.Expression -> Elm.Expression
mark markArg_ markArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "mark"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list markArg_, Elm.list markArg_0 ]


{-| Represents content to be marked with ruby annotations, short runs of text
presented alongside the text. This is often used in conjunction with East Asian
language where the annotations act as a guide for pronunciation, like the
Japanese furigana.

ruby: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
ruby : List Elm.Expression -> List Elm.Expression -> Elm.Expression
ruby rubyArg_ rubyArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "ruby"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list rubyArg_, Elm.list rubyArg_0 ]


{-| Represents the text of a ruby annotation.

rt: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
rt : List Elm.Expression -> List Elm.Expression -> Elm.Expression
rt rtArg_ rtArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "rt"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list rtArg_, Elm.list rtArg_0 ]


{-| Represents parenthesis around a ruby annotation, used to display the
annotation in an alternate way by browsers not supporting the standard display
for annotations.

rp: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
rp : List Elm.Expression -> List Elm.Expression -> Elm.Expression
rp rpArg_ rpArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "rp"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list rpArg_, Elm.list rpArg_0 ]


{-| Represents text that must be isolated from its surrounding for
bidirectional text formatting. It allows embedding a span of text with a
different, or unknown, directionality.

bdi: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
bdi : List Elm.Expression -> List Elm.Expression -> Elm.Expression
bdi bdiArg_ bdiArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "bdi"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list bdiArg_, Elm.list bdiArg_0 ]


{-| Represents the directionality of its children, in order to explicitly
override the Unicode bidirectional algorithm.

bdo: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
bdo : List Elm.Expression -> List Elm.Expression -> Elm.Expression
bdo bdoArg_ bdoArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "bdo"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list bdoArg_, Elm.list bdoArg_0 ]


{-| Represents a line break opportunity, that is a suggested point for
wrapping text in order to improve readability of text split on several lines.

wbr: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
wbr : List Elm.Expression -> List Elm.Expression -> Elm.Expression
wbr wbrArg_ wbrArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "wbr"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list wbrArg_, Elm.list wbrArg_0 ]


{-| Represents a widget from which the user can obtain additional information
or controls.

details: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
details : List Elm.Expression -> List Elm.Expression -> Elm.Expression
details detailsArg_ detailsArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "details"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list detailsArg_, Elm.list detailsArg_0 ]


{-| Represents a summary, caption, or legend for a given `details`.

summary: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
summary : List Elm.Expression -> List Elm.Expression -> Elm.Expression
summary summaryArg_ summaryArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "summary"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list summaryArg_, Elm.list summaryArg_0 ]


{-| Represents a command that the user can invoke.

menuitem: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
menuitem : List Elm.Expression -> List Elm.Expression -> Elm.Expression
menuitem menuitemArg_ menuitemArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "menuitem"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list menuitemArg_, Elm.list menuitemArg_0 ]


{-| Represents a list of commands.

menu: List (Html.Attribute msg) -> List (Html.Html msg) -> Html.Html msg
-}
menu : List Elm.Expression -> List Elm.Expression -> Elm.Expression
menu menuArg_ menuArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html" ]
             , name = "menu"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Attribute"
                                 [ Type.var "msg" ]
                              )
                          , Type.list
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list menuArg_, Elm.list menuArg_0 ]


annotation_ :
    { html : Type.Annotation -> Type.Annotation
    , attribute : Type.Annotation -> Type.Annotation
    }
annotation_ =
    { html =
        \htmlArg0 ->
            Type.alias
                moduleName_
                "Html"
                [ htmlArg0 ]
                (Type.namedWith [ "VirtualDom" ] "Node" [ Type.var "msg" ])
    , attribute =
        \attributeArg0 ->
            Type.alias
                moduleName_
                "Attribute"
                [ attributeArg0 ]
                (Type.namedWith [ "VirtualDom" ] "Attribute" [ Type.var "msg" ])
    }


call_ :
    { text : Elm.Expression -> Elm.Expression
    , node :
        Elm.Expression -> Elm.Expression -> Elm.Expression -> Elm.Expression
    , map : Elm.Expression -> Elm.Expression -> Elm.Expression
    , h1 : Elm.Expression -> Elm.Expression -> Elm.Expression
    , h2 : Elm.Expression -> Elm.Expression -> Elm.Expression
    , h3 : Elm.Expression -> Elm.Expression -> Elm.Expression
    , h4 : Elm.Expression -> Elm.Expression -> Elm.Expression
    , h5 : Elm.Expression -> Elm.Expression -> Elm.Expression
    , h6 : Elm.Expression -> Elm.Expression -> Elm.Expression
    , div : Elm.Expression -> Elm.Expression -> Elm.Expression
    , p : Elm.Expression -> Elm.Expression -> Elm.Expression
    , hr : Elm.Expression -> Elm.Expression -> Elm.Expression
    , pre : Elm.Expression -> Elm.Expression -> Elm.Expression
    , blockquote : Elm.Expression -> Elm.Expression -> Elm.Expression
    , span : Elm.Expression -> Elm.Expression -> Elm.Expression
    , a : Elm.Expression -> Elm.Expression -> Elm.Expression
    , code : Elm.Expression -> Elm.Expression -> Elm.Expression
    , em : Elm.Expression -> Elm.Expression -> Elm.Expression
    , strong : Elm.Expression -> Elm.Expression -> Elm.Expression
    , i : Elm.Expression -> Elm.Expression -> Elm.Expression
    , b : Elm.Expression -> Elm.Expression -> Elm.Expression
    , u : Elm.Expression -> Elm.Expression -> Elm.Expression
    , sub : Elm.Expression -> Elm.Expression -> Elm.Expression
    , sup : Elm.Expression -> Elm.Expression -> Elm.Expression
    , br : Elm.Expression -> Elm.Expression -> Elm.Expression
    , ol : Elm.Expression -> Elm.Expression -> Elm.Expression
    , ul : Elm.Expression -> Elm.Expression -> Elm.Expression
    , li : Elm.Expression -> Elm.Expression -> Elm.Expression
    , dl : Elm.Expression -> Elm.Expression -> Elm.Expression
    , dt : Elm.Expression -> Elm.Expression -> Elm.Expression
    , dd : Elm.Expression -> Elm.Expression -> Elm.Expression
    , img : Elm.Expression -> Elm.Expression -> Elm.Expression
    , iframe : Elm.Expression -> Elm.Expression -> Elm.Expression
    , canvas : Elm.Expression -> Elm.Expression -> Elm.Expression
    , math : Elm.Expression -> Elm.Expression -> Elm.Expression
    , form : Elm.Expression -> Elm.Expression -> Elm.Expression
    , input : Elm.Expression -> Elm.Expression -> Elm.Expression
    , textarea : Elm.Expression -> Elm.Expression -> Elm.Expression
    , button : Elm.Expression -> Elm.Expression -> Elm.Expression
    , select : Elm.Expression -> Elm.Expression -> Elm.Expression
    , option : Elm.Expression -> Elm.Expression -> Elm.Expression
    , section : Elm.Expression -> Elm.Expression -> Elm.Expression
    , nav : Elm.Expression -> Elm.Expression -> Elm.Expression
    , article : Elm.Expression -> Elm.Expression -> Elm.Expression
    , aside : Elm.Expression -> Elm.Expression -> Elm.Expression
    , header : Elm.Expression -> Elm.Expression -> Elm.Expression
    , footer : Elm.Expression -> Elm.Expression -> Elm.Expression
    , address : Elm.Expression -> Elm.Expression -> Elm.Expression
    , main_ : Elm.Expression -> Elm.Expression -> Elm.Expression
    , figure : Elm.Expression -> Elm.Expression -> Elm.Expression
    , figcaption : Elm.Expression -> Elm.Expression -> Elm.Expression
    , table : Elm.Expression -> Elm.Expression -> Elm.Expression
    , caption : Elm.Expression -> Elm.Expression -> Elm.Expression
    , colgroup : Elm.Expression -> Elm.Expression -> Elm.Expression
    , col : Elm.Expression -> Elm.Expression -> Elm.Expression
    , tbody : Elm.Expression -> Elm.Expression -> Elm.Expression
    , thead : Elm.Expression -> Elm.Expression -> Elm.Expression
    , tfoot : Elm.Expression -> Elm.Expression -> Elm.Expression
    , tr : Elm.Expression -> Elm.Expression -> Elm.Expression
    , td : Elm.Expression -> Elm.Expression -> Elm.Expression
    , th : Elm.Expression -> Elm.Expression -> Elm.Expression
    , fieldset : Elm.Expression -> Elm.Expression -> Elm.Expression
    , legend : Elm.Expression -> Elm.Expression -> Elm.Expression
    , label : Elm.Expression -> Elm.Expression -> Elm.Expression
    , datalist : Elm.Expression -> Elm.Expression -> Elm.Expression
    , optgroup : Elm.Expression -> Elm.Expression -> Elm.Expression
    , output : Elm.Expression -> Elm.Expression -> Elm.Expression
    , progress : Elm.Expression -> Elm.Expression -> Elm.Expression
    , meter : Elm.Expression -> Elm.Expression -> Elm.Expression
    , audio : Elm.Expression -> Elm.Expression -> Elm.Expression
    , video : Elm.Expression -> Elm.Expression -> Elm.Expression
    , source : Elm.Expression -> Elm.Expression -> Elm.Expression
    , track : Elm.Expression -> Elm.Expression -> Elm.Expression
    , embed : Elm.Expression -> Elm.Expression -> Elm.Expression
    , object : Elm.Expression -> Elm.Expression -> Elm.Expression
    , param : Elm.Expression -> Elm.Expression -> Elm.Expression
    , ins : Elm.Expression -> Elm.Expression -> Elm.Expression
    , del : Elm.Expression -> Elm.Expression -> Elm.Expression
    , small : Elm.Expression -> Elm.Expression -> Elm.Expression
    , cite : Elm.Expression -> Elm.Expression -> Elm.Expression
    , dfn : Elm.Expression -> Elm.Expression -> Elm.Expression
    , abbr : Elm.Expression -> Elm.Expression -> Elm.Expression
    , time : Elm.Expression -> Elm.Expression -> Elm.Expression
    , var : Elm.Expression -> Elm.Expression -> Elm.Expression
    , samp : Elm.Expression -> Elm.Expression -> Elm.Expression
    , kbd : Elm.Expression -> Elm.Expression -> Elm.Expression
    , s : Elm.Expression -> Elm.Expression -> Elm.Expression
    , q : Elm.Expression -> Elm.Expression -> Elm.Expression
    , mark : Elm.Expression -> Elm.Expression -> Elm.Expression
    , ruby : Elm.Expression -> Elm.Expression -> Elm.Expression
    , rt : Elm.Expression -> Elm.Expression -> Elm.Expression
    , rp : Elm.Expression -> Elm.Expression -> Elm.Expression
    , bdi : Elm.Expression -> Elm.Expression -> Elm.Expression
    , bdo : Elm.Expression -> Elm.Expression -> Elm.Expression
    , wbr : Elm.Expression -> Elm.Expression -> Elm.Expression
    , details : Elm.Expression -> Elm.Expression -> Elm.Expression
    , summary : Elm.Expression -> Elm.Expression -> Elm.Expression
    , menuitem : Elm.Expression -> Elm.Expression -> Elm.Expression
    , menu : Elm.Expression -> Elm.Expression -> Elm.Expression
    }
call_ =
    { text =
        \textArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "text"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ textArg_ ]
    , node =
        \nodeArg_ nodeArg_0 nodeArg_1 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "node"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ nodeArg_, nodeArg_0, nodeArg_1 ]
    , map =
        \mapArg_ mapArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "map"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.function
                                      [ Type.var "a" ]
                                      (Type.var "msg")
                                  , Type.namedWith
                                      [ "Html" ]
                                      "Html"
                                      [ Type.var "a" ]
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ mapArg_, mapArg_0 ]
    , h1 =
        \h1Arg_ h1Arg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "h1"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ h1Arg_, h1Arg_0 ]
    , h2 =
        \h2Arg_ h2Arg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "h2"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ h2Arg_, h2Arg_0 ]
    , h3 =
        \h3Arg_ h3Arg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "h3"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ h3Arg_, h3Arg_0 ]
    , h4 =
        \h4Arg_ h4Arg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "h4"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ h4Arg_, h4Arg_0 ]
    , h5 =
        \h5Arg_ h5Arg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "h5"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ h5Arg_, h5Arg_0 ]
    , h6 =
        \h6Arg_ h6Arg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "h6"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ h6Arg_, h6Arg_0 ]
    , div =
        \divArg_ divArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "div"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ divArg_, divArg_0 ]
    , p =
        \pArg_ pArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "p"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ pArg_, pArg_0 ]
    , hr =
        \hrArg_ hrArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "hr"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ hrArg_, hrArg_0 ]
    , pre =
        \preArg_ preArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "pre"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ preArg_, preArg_0 ]
    , blockquote =
        \blockquoteArg_ blockquoteArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "blockquote"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ blockquoteArg_, blockquoteArg_0 ]
    , span =
        \spanArg_ spanArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "span"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ spanArg_, spanArg_0 ]
    , a =
        \aArg_ aArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "a"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ aArg_, aArg_0 ]
    , code =
        \codeArg_ codeArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "code"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ codeArg_, codeArg_0 ]
    , em =
        \emArg_ emArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "em"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ emArg_, emArg_0 ]
    , strong =
        \strongArg_ strongArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "strong"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ strongArg_, strongArg_0 ]
    , i =
        \iArg_ iArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "i"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ iArg_, iArg_0 ]
    , b =
        \bArg_ bArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "b"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ bArg_, bArg_0 ]
    , u =
        \uArg_ uArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "u"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ uArg_, uArg_0 ]
    , sub =
        \subArg_ subArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "sub"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ subArg_, subArg_0 ]
    , sup =
        \supArg_ supArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "sup"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ supArg_, supArg_0 ]
    , br =
        \brArg_ brArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "br"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ brArg_, brArg_0 ]
    , ol =
        \olArg_ olArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "ol"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ olArg_, olArg_0 ]
    , ul =
        \ulArg_ ulArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "ul"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ ulArg_, ulArg_0 ]
    , li =
        \liArg_ liArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "li"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ liArg_, liArg_0 ]
    , dl =
        \dlArg_ dlArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "dl"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ dlArg_, dlArg_0 ]
    , dt =
        \dtArg_ dtArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "dt"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ dtArg_, dtArg_0 ]
    , dd =
        \ddArg_ ddArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "dd"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ ddArg_, ddArg_0 ]
    , img =
        \imgArg_ imgArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "img"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ imgArg_, imgArg_0 ]
    , iframe =
        \iframeArg_ iframeArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "iframe"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ iframeArg_, iframeArg_0 ]
    , canvas =
        \canvasArg_ canvasArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "canvas"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ canvasArg_, canvasArg_0 ]
    , math =
        \mathArg_ mathArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "math"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ mathArg_, mathArg_0 ]
    , form =
        \formArg_ formArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "form"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ formArg_, formArg_0 ]
    , input =
        \inputArg_ inputArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "input"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ inputArg_, inputArg_0 ]
    , textarea =
        \textareaArg_ textareaArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "textarea"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ textareaArg_, textareaArg_0 ]
    , button =
        \buttonArg_ buttonArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "button"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ buttonArg_, buttonArg_0 ]
    , select =
        \selectArg_ selectArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "select"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ selectArg_, selectArg_0 ]
    , option =
        \optionArg_ optionArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "option"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ optionArg_, optionArg_0 ]
    , section =
        \sectionArg_ sectionArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "section"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ sectionArg_, sectionArg_0 ]
    , nav =
        \navArg_ navArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "nav"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ navArg_, navArg_0 ]
    , article =
        \articleArg_ articleArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "article"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ articleArg_, articleArg_0 ]
    , aside =
        \asideArg_ asideArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "aside"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ asideArg_, asideArg_0 ]
    , header =
        \headerArg_ headerArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "header"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ headerArg_, headerArg_0 ]
    , footer =
        \footerArg_ footerArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "footer"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ footerArg_, footerArg_0 ]
    , address =
        \addressArg_ addressArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "address"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ addressArg_, addressArg_0 ]
    , main_ =
        \main_Arg_ main_Arg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "main_"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ main_Arg_, main_Arg_0 ]
    , figure =
        \figureArg_ figureArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "figure"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ figureArg_, figureArg_0 ]
    , figcaption =
        \figcaptionArg_ figcaptionArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "figcaption"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ figcaptionArg_, figcaptionArg_0 ]
    , table =
        \tableArg_ tableArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "table"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ tableArg_, tableArg_0 ]
    , caption =
        \captionArg_ captionArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "caption"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ captionArg_, captionArg_0 ]
    , colgroup =
        \colgroupArg_ colgroupArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "colgroup"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ colgroupArg_, colgroupArg_0 ]
    , col =
        \colArg_ colArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "col"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ colArg_, colArg_0 ]
    , tbody =
        \tbodyArg_ tbodyArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "tbody"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ tbodyArg_, tbodyArg_0 ]
    , thead =
        \theadArg_ theadArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "thead"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ theadArg_, theadArg_0 ]
    , tfoot =
        \tfootArg_ tfootArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "tfoot"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ tfootArg_, tfootArg_0 ]
    , tr =
        \trArg_ trArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "tr"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ trArg_, trArg_0 ]
    , td =
        \tdArg_ tdArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "td"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ tdArg_, tdArg_0 ]
    , th =
        \thArg_ thArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "th"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ thArg_, thArg_0 ]
    , fieldset =
        \fieldsetArg_ fieldsetArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "fieldset"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ fieldsetArg_, fieldsetArg_0 ]
    , legend =
        \legendArg_ legendArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "legend"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ legendArg_, legendArg_0 ]
    , label =
        \labelArg_ labelArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "label"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ labelArg_, labelArg_0 ]
    , datalist =
        \datalistArg_ datalistArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "datalist"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ datalistArg_, datalistArg_0 ]
    , optgroup =
        \optgroupArg_ optgroupArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "optgroup"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ optgroupArg_, optgroupArg_0 ]
    , output =
        \outputArg_ outputArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "output"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ outputArg_, outputArg_0 ]
    , progress =
        \progressArg_ progressArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "progress"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ progressArg_, progressArg_0 ]
    , meter =
        \meterArg_ meterArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "meter"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ meterArg_, meterArg_0 ]
    , audio =
        \audioArg_ audioArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "audio"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ audioArg_, audioArg_0 ]
    , video =
        \videoArg_ videoArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "video"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ videoArg_, videoArg_0 ]
    , source =
        \sourceArg_ sourceArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "source"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ sourceArg_, sourceArg_0 ]
    , track =
        \trackArg_ trackArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "track"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ trackArg_, trackArg_0 ]
    , embed =
        \embedArg_ embedArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "embed"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ embedArg_, embedArg_0 ]
    , object =
        \objectArg_ objectArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "object"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ objectArg_, objectArg_0 ]
    , param =
        \paramArg_ paramArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "param"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ paramArg_, paramArg_0 ]
    , ins =
        \insArg_ insArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "ins"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ insArg_, insArg_0 ]
    , del =
        \delArg_ delArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "del"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ delArg_, delArg_0 ]
    , small =
        \smallArg_ smallArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "small"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ smallArg_, smallArg_0 ]
    , cite =
        \citeArg_ citeArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "cite"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ citeArg_, citeArg_0 ]
    , dfn =
        \dfnArg_ dfnArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "dfn"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ dfnArg_, dfnArg_0 ]
    , abbr =
        \abbrArg_ abbrArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "abbr"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ abbrArg_, abbrArg_0 ]
    , time =
        \timeArg_ timeArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "time"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ timeArg_, timeArg_0 ]
    , var =
        \varArg_ varArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "var"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ varArg_, varArg_0 ]
    , samp =
        \sampArg_ sampArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "samp"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ sampArg_, sampArg_0 ]
    , kbd =
        \kbdArg_ kbdArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "kbd"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ kbdArg_, kbdArg_0 ]
    , s =
        \sArg_ sArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "s"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ sArg_, sArg_0 ]
    , q =
        \qArg_ qArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "q"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ qArg_, qArg_0 ]
    , mark =
        \markArg_ markArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "mark"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ markArg_, markArg_0 ]
    , ruby =
        \rubyArg_ rubyArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "ruby"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ rubyArg_, rubyArg_0 ]
    , rt =
        \rtArg_ rtArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "rt"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ rtArg_, rtArg_0 ]
    , rp =
        \rpArg_ rpArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "rp"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ rpArg_, rpArg_0 ]
    , bdi =
        \bdiArg_ bdiArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "bdi"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ bdiArg_, bdiArg_0 ]
    , bdo =
        \bdoArg_ bdoArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "bdo"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ bdoArg_, bdoArg_0 ]
    , wbr =
        \wbrArg_ wbrArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "wbr"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ wbrArg_, wbrArg_0 ]
    , details =
        \detailsArg_ detailsArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "details"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ detailsArg_, detailsArg_0 ]
    , summary =
        \summaryArg_ summaryArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "summary"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ summaryArg_, summaryArg_0 ]
    , menuitem =
        \menuitemArg_ menuitemArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "menuitem"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ menuitemArg_, menuitemArg_0 ]
    , menu =
        \menuArg_ menuArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html" ]
                     , name = "menu"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Attribute"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.list
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ menuArg_, menuArg_0 ]
    }


values_ :
    { text : Elm.Expression
    , node : Elm.Expression
    , map : Elm.Expression
    , h1 : Elm.Expression
    , h2 : Elm.Expression
    , h3 : Elm.Expression
    , h4 : Elm.Expression
    , h5 : Elm.Expression
    , h6 : Elm.Expression
    , div : Elm.Expression
    , p : Elm.Expression
    , hr : Elm.Expression
    , pre : Elm.Expression
    , blockquote : Elm.Expression
    , span : Elm.Expression
    , a : Elm.Expression
    , code : Elm.Expression
    , em : Elm.Expression
    , strong : Elm.Expression
    , i : Elm.Expression
    , b : Elm.Expression
    , u : Elm.Expression
    , sub : Elm.Expression
    , sup : Elm.Expression
    , br : Elm.Expression
    , ol : Elm.Expression
    , ul : Elm.Expression
    , li : Elm.Expression
    , dl : Elm.Expression
    , dt : Elm.Expression
    , dd : Elm.Expression
    , img : Elm.Expression
    , iframe : Elm.Expression
    , canvas : Elm.Expression
    , math : Elm.Expression
    , form : Elm.Expression
    , input : Elm.Expression
    , textarea : Elm.Expression
    , button : Elm.Expression
    , select : Elm.Expression
    , option : Elm.Expression
    , section : Elm.Expression
    , nav : Elm.Expression
    , article : Elm.Expression
    , aside : Elm.Expression
    , header : Elm.Expression
    , footer : Elm.Expression
    , address : Elm.Expression
    , main_ : Elm.Expression
    , figure : Elm.Expression
    , figcaption : Elm.Expression
    , table : Elm.Expression
    , caption : Elm.Expression
    , colgroup : Elm.Expression
    , col : Elm.Expression
    , tbody : Elm.Expression
    , thead : Elm.Expression
    , tfoot : Elm.Expression
    , tr : Elm.Expression
    , td : Elm.Expression
    , th : Elm.Expression
    , fieldset : Elm.Expression
    , legend : Elm.Expression
    , label : Elm.Expression
    , datalist : Elm.Expression
    , optgroup : Elm.Expression
    , output : Elm.Expression
    , progress : Elm.Expression
    , meter : Elm.Expression
    , audio : Elm.Expression
    , video : Elm.Expression
    , source : Elm.Expression
    , track : Elm.Expression
    , embed : Elm.Expression
    , object : Elm.Expression
    , param : Elm.Expression
    , ins : Elm.Expression
    , del : Elm.Expression
    , small : Elm.Expression
    , cite : Elm.Expression
    , dfn : Elm.Expression
    , abbr : Elm.Expression
    , time : Elm.Expression
    , var : Elm.Expression
    , samp : Elm.Expression
    , kbd : Elm.Expression
    , s : Elm.Expression
    , q : Elm.Expression
    , mark : Elm.Expression
    , ruby : Elm.Expression
    , rt : Elm.Expression
    , rp : Elm.Expression
    , bdi : Elm.Expression
    , bdo : Elm.Expression
    , wbr : Elm.Expression
    , details : Elm.Expression
    , summary : Elm.Expression
    , menuitem : Elm.Expression
    , menu : Elm.Expression
    }
values_ =
    { text =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "text"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , node =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "node"
            , annotation =
                Just
                    (Type.function
                         [ Type.string
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , map =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "map"
            , annotation =
                Just
                    (Type.function
                         [ Type.function [ Type.var "a" ] (Type.var "msg")
                         , Type.namedWith [ "Html" ] "Html" [ Type.var "a" ]
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , h1 =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "h1"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , h2 =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "h2"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , h3 =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "h3"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , h4 =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "h4"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , h5 =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "h5"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , h6 =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "h6"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , div =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "div"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , p =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "p"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , hr =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "hr"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , pre =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "pre"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , blockquote =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "blockquote"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , span =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "span"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , a =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "a"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , code =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "code"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , em =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "em"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , strong =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "strong"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , i =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "i"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , b =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "b"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , u =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "u"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , sub =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "sub"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , sup =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "sup"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , br =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "br"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , ol =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "ol"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , ul =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "ul"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , li =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "li"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , dl =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "dl"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , dt =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "dt"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , dd =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "dd"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , img =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "img"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , iframe =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "iframe"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , canvas =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "canvas"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , math =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "math"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , form =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "form"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , input =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "input"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , textarea =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "textarea"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , button =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "button"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , select =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "select"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , option =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "option"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , section =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "section"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , nav =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "nav"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , article =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "article"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , aside =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "aside"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , header =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "header"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , footer =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "footer"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , address =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "address"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , main_ =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "main_"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , figure =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "figure"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , figcaption =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "figcaption"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , table =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "table"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , caption =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "caption"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , colgroup =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "colgroup"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , col =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "col"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , tbody =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "tbody"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , thead =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "thead"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , tfoot =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "tfoot"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , tr =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "tr"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , td =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "td"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , th =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "th"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , fieldset =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "fieldset"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , legend =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "legend"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , label =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "label"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , datalist =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "datalist"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , optgroup =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "optgroup"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , output =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "output"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , progress =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "progress"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , meter =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "meter"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , audio =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "audio"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , video =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "video"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , source =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "source"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , track =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "track"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , embed =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "embed"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , object =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "object"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , param =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "param"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , ins =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "ins"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , del =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "del"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , small =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "small"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , cite =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "cite"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , dfn =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "dfn"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , abbr =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "abbr"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , time =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "time"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , var =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "var"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , samp =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "samp"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , kbd =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "kbd"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , s =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "s"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , q =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "q"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , mark =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "mark"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , ruby =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "ruby"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , rt =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "rt"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , rp =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "rp"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , bdi =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "bdi"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , bdo =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "bdo"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , wbr =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "wbr"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , details =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "details"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , summary =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "summary"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , menuitem =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "menuitem"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , menu =
        Elm.value
            { importFrom = [ "Html" ]
            , name = "menu"
            , annotation =
                Just
                    (Type.function
                         [ Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Attribute"
                                [ Type.var "msg" ]
                             )
                         , Type.list
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    }