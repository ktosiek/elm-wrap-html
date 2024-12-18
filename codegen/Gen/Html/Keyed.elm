module Gen.Html.Keyed exposing
    ( moduleName_, node, ol, ul, call_, values_
    )

{-|
# Generated bindings for Html.Keyed

@docs moduleName_, node, ol, ul, call_, values_
-}


import Elm
import Elm.Annotation as Type


{-| The name of this module. -}
moduleName_ : List String
moduleName_ =
    [ "Html", "Keyed" ]


{-| Works just like `Html.node`, but you add a unique identifier to each child
node. You want this when you have a list of nodes that is changing: adding
nodes, removing nodes, etc. In these cases, the unique identifiers help make
the DOM modifications more efficient.

node: 
    String
    -> List (Html.Attribute msg)
    -> List ( String, Html.Html msg )
    -> Html.Html msg
-}
node : String -> List Elm.Expression -> List Elm.Expression -> Elm.Expression
node nodeArg_ nodeArg_0 nodeArg_1 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Keyed" ]
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
                              (Type.tuple
                                 Type.string
                                 (Type.namedWith
                                    [ "Html" ]
                                    "Html"
                                    [ Type.var "msg" ]
                                 )
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.string nodeArg_, Elm.list nodeArg_0, Elm.list nodeArg_1 ]


{-| ol: List (Html.Attribute msg) -> List ( String, Html.Html msg ) -> Html.Html msg -}
ol : List Elm.Expression -> List Elm.Expression -> Elm.Expression
ol olArg_ olArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Keyed" ]
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
                              (Type.tuple
                                 Type.string
                                 (Type.namedWith
                                    [ "Html" ]
                                    "Html"
                                    [ Type.var "msg" ]
                                 )
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list olArg_, Elm.list olArg_0 ]


{-| ul: List (Html.Attribute msg) -> List ( String, Html.Html msg ) -> Html.Html msg -}
ul : List Elm.Expression -> List Elm.Expression -> Elm.Expression
ul ulArg_ ulArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Keyed" ]
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
                              (Type.tuple
                                 Type.string
                                 (Type.namedWith
                                    [ "Html" ]
                                    "Html"
                                    [ Type.var "msg" ]
                                 )
                              )
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.list ulArg_, Elm.list ulArg_0 ]


call_ :
    { node :
        Elm.Expression -> Elm.Expression -> Elm.Expression -> Elm.Expression
    , ol : Elm.Expression -> Elm.Expression -> Elm.Expression
    , ul : Elm.Expression -> Elm.Expression -> Elm.Expression
    }
call_ =
    { node =
        \nodeArg_ nodeArg_0 nodeArg_1 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Keyed" ]
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
                                      (Type.tuple
                                         Type.string
                                         (Type.namedWith
                                            [ "Html" ]
                                            "Html"
                                            [ Type.var "msg" ]
                                         )
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
    , ol =
        \olArg_ olArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Keyed" ]
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
                                      (Type.tuple
                                         Type.string
                                         (Type.namedWith
                                            [ "Html" ]
                                            "Html"
                                            [ Type.var "msg" ]
                                         )
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
                     { importFrom = [ "Html", "Keyed" ]
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
                                      (Type.tuple
                                         Type.string
                                         (Type.namedWith
                                            [ "Html" ]
                                            "Html"
                                            [ Type.var "msg" ]
                                         )
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
    }


values_ : { node : Elm.Expression, ol : Elm.Expression, ul : Elm.Expression }
values_ =
    { node =
        Elm.value
            { importFrom = [ "Html", "Keyed" ]
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
                             (Type.tuple
                                Type.string
                                (Type.namedWith
                                   [ "Html" ]
                                   "Html"
                                   [ Type.var "msg" ]
                                )
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , ol =
        Elm.value
            { importFrom = [ "Html", "Keyed" ]
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
                             (Type.tuple
                                Type.string
                                (Type.namedWith
                                   [ "Html" ]
                                   "Html"
                                   [ Type.var "msg" ]
                                )
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , ul =
        Elm.value
            { importFrom = [ "Html", "Keyed" ]
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
                             (Type.tuple
                                Type.string
                                (Type.namedWith
                                   [ "Html" ]
                                   "Html"
                                   [ Type.var "msg" ]
                                )
                             )
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    }