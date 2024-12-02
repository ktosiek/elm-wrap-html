module Gen.Html.Lazy exposing
    ( moduleName_, lazy, lazy2, lazy3, lazy4, lazy5
    , lazy6, lazy7, lazy8, call_, values_
    )

{-|
# Generated bindings for Html.Lazy

@docs moduleName_, lazy, lazy2, lazy3, lazy4, lazy5
@docs lazy6, lazy7, lazy8, call_, values_
-}


import Elm
import Elm.Annotation as Type


{-| The name of this module. -}
moduleName_ : List String
moduleName_ =
    [ "Html", "Lazy" ]


{-| A performance optimization that delays the building of virtual DOM nodes.

Calling `(view model)` will definitely build some virtual DOM, perhaps a lot of
it. Calling `(lazy view model)` delays the call until later. During diffing, we
can check to see if `model` is referentially equal to the previous value used,
and if so, we just stop. No need to build up the tree structure and diff it,
we know if the input to `view` is the same, the output must be the same!

lazy: (a -> Html.Html msg) -> a -> Html.Html msg
-}
lazy : (Elm.Expression -> Elm.Expression) -> Elm.Expression -> Elm.Expression
lazy lazyArg_ lazyArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Lazy" ]
             , name = "lazy"
             , annotation =
                 Just
                     (Type.function
                          [ Type.function
                              [ Type.var "a" ]
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          , Type.var "a"
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.functionReduced "lazyUnpack" lazyArg_, lazyArg_0 ]


{-| Same as `lazy` but checks on two arguments.

lazy2: (a -> b -> Html.Html msg) -> a -> b -> Html.Html msg
-}
lazy2 :
    (Elm.Expression -> Elm.Expression -> Elm.Expression)
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
lazy2 lazy2Arg_ lazy2Arg_0 lazy2Arg_1 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Lazy" ]
             , name = "lazy2"
             , annotation =
                 Just
                     (Type.function
                          [ Type.function
                              [ Type.var "a", Type.var "b" ]
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          , Type.var "a"
                          , Type.var "b"
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.functionReduced
            "lazy2Unpack"
            (\functionReducedUnpack ->
               Elm.functionReduced "unpack" (lazy2Arg_ functionReducedUnpack)
            )
        , lazy2Arg_0
        , lazy2Arg_1
        ]


{-| Same as `lazy` but checks on three arguments.

lazy3: (a -> b -> c -> Html.Html msg) -> a -> b -> c -> Html.Html msg
-}
lazy3 :
    (Elm.Expression -> Elm.Expression -> Elm.Expression -> Elm.Expression)
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
lazy3 lazy3Arg_ lazy3Arg_0 lazy3Arg_1 lazy3Arg_2 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Lazy" ]
             , name = "lazy3"
             , annotation =
                 Just
                     (Type.function
                          [ Type.function
                              [ Type.var "a", Type.var "b", Type.var "c" ]
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          , Type.var "a"
                          , Type.var "b"
                          , Type.var "c"
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.functionReduced
            "lazy3Unpack"
            (\functionReducedUnpack ->
               Elm.functionReduced
                   "unpack"
                   (\functionReducedUnpack0 ->
                        Elm.functionReduced
                            "unpack"
                            ((lazy3Arg_ functionReducedUnpack)
                                 functionReducedUnpack0
                            )
                   )
            )
        , lazy3Arg_0
        , lazy3Arg_1
        , lazy3Arg_2
        ]


{-| Same as `lazy` but checks on four arguments.

lazy4: (a -> b -> c -> d -> Html.Html msg) -> a -> b -> c -> d -> Html.Html msg
-}
lazy4 :
    (Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression)
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
lazy4 lazy4Arg_ lazy4Arg_0 lazy4Arg_1 lazy4Arg_2 lazy4Arg_3 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Lazy" ]
             , name = "lazy4"
             , annotation =
                 Just
                     (Type.function
                          [ Type.function
                              [ Type.var "a"
                              , Type.var "b"
                              , Type.var "c"
                              , Type.var "d"
                              ]
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          , Type.var "a"
                          , Type.var "b"
                          , Type.var "c"
                          , Type.var "d"
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.functionReduced
            "lazy4Unpack"
            (\functionReducedUnpack ->
               Elm.functionReduced
                   "unpack"
                   (\functionReducedUnpack0 ->
                        Elm.functionReduced
                            "unpack"
                            (\functionReducedUnpack_2_1_2_0_2_0_2_0_0 ->
                                 Elm.functionReduced
                                     "unpack"
                                     (((lazy4Arg_ functionReducedUnpack)
                                           functionReducedUnpack0
                                      )
                                          functionReducedUnpack_2_1_2_0_2_0_2_0_0
                                     )
                            )
                   )
            )
        , lazy4Arg_0
        , lazy4Arg_1
        , lazy4Arg_2
        , lazy4Arg_3
        ]


{-| Same as `lazy` but checks on five arguments.

lazy5: 
    (a -> b -> c -> d -> e -> Html.Html msg)
    -> a
    -> b
    -> c
    -> d
    -> e
    -> Html.Html msg
-}
lazy5 :
    (Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression)
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
lazy5 lazy5Arg_ lazy5Arg_0 lazy5Arg_1 lazy5Arg_2 lazy5Arg_3 lazy5Arg_4 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Lazy" ]
             , name = "lazy5"
             , annotation =
                 Just
                     (Type.function
                          [ Type.function
                              [ Type.var "a"
                              , Type.var "b"
                              , Type.var "c"
                              , Type.var "d"
                              , Type.var "e"
                              ]
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          , Type.var "a"
                          , Type.var "b"
                          , Type.var "c"
                          , Type.var "d"
                          , Type.var "e"
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.functionReduced
            "lazy5Unpack"
            (\functionReducedUnpack ->
               Elm.functionReduced
                   "unpack"
                   (\functionReducedUnpack0 ->
                        Elm.functionReduced
                            "unpack"
                            (\functionReducedUnpack_2_1_2_0_2_0_2_0_0 ->
                                 Elm.functionReduced
                                     "unpack"
                                     (\functionReducedUnpack_2_1_2_1_2_0_2_0_2_0_0 ->
                                          Elm.functionReduced
                                              "unpack"
                                              ((((lazy5Arg_
                                                      functionReducedUnpack
                                                 )
                                                     functionReducedUnpack0
                                                )
                                                    functionReducedUnpack_2_1_2_0_2_0_2_0_0
                                               )
                                                   functionReducedUnpack_2_1_2_1_2_0_2_0_2_0_0
                                              )
                                     )
                            )
                   )
            )
        , lazy5Arg_0
        , lazy5Arg_1
        , lazy5Arg_2
        , lazy5Arg_3
        , lazy5Arg_4
        ]


{-| Same as `lazy` but checks on six arguments.

lazy6: 
    (a -> b -> c -> d -> e -> f -> Html.Html msg)
    -> a
    -> b
    -> c
    -> d
    -> e
    -> f
    -> Html.Html msg
-}
lazy6 :
    (Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression)
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
lazy6 lazy6Arg_ lazy6Arg_0 lazy6Arg_1 lazy6Arg_2 lazy6Arg_3 lazy6Arg_4 lazy6Arg_5 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Lazy" ]
             , name = "lazy6"
             , annotation =
                 Just
                     (Type.function
                          [ Type.function
                              [ Type.var "a"
                              , Type.var "b"
                              , Type.var "c"
                              , Type.var "d"
                              , Type.var "e"
                              , Type.var "f"
                              ]
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          , Type.var "a"
                          , Type.var "b"
                          , Type.var "c"
                          , Type.var "d"
                          , Type.var "e"
                          , Type.var "f"
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.functionReduced
            "lazy6Unpack"
            (\functionReducedUnpack ->
               Elm.functionReduced
                   "unpack"
                   (\functionReducedUnpack0 ->
                        Elm.functionReduced
                            "unpack"
                            (\functionReducedUnpack_2_1_2_0_2_0_2_0_0 ->
                                 Elm.functionReduced
                                     "unpack"
                                     (\functionReducedUnpack_2_1_2_1_2_0_2_0_2_0_0 ->
                                          Elm.functionReduced
                                              "unpack"
                                              (\functionReducedUnpack_2_1_2_1_2_1_2_0_2_0_2_0_0 ->
                                                   Elm.functionReduced
                                                       "unpack"
                                                       (((((lazy6Arg_
                                                                functionReducedUnpack
                                                           )
                                                               functionReducedUnpack0
                                                          )
                                                              functionReducedUnpack_2_1_2_0_2_0_2_0_0
                                                         )
                                                             functionReducedUnpack_2_1_2_1_2_0_2_0_2_0_0
                                                        )
                                                            functionReducedUnpack_2_1_2_1_2_1_2_0_2_0_2_0_0
                                                       )
                                              )
                                     )
                            )
                   )
            )
        , lazy6Arg_0
        , lazy6Arg_1
        , lazy6Arg_2
        , lazy6Arg_3
        , lazy6Arg_4
        , lazy6Arg_5
        ]


{-| Same as `lazy` but checks on seven arguments.

lazy7: 
    (a -> b -> c -> d -> e -> f -> g -> Html.Html msg)
    -> a
    -> b
    -> c
    -> d
    -> e
    -> f
    -> g
    -> Html.Html msg
-}
lazy7 :
    (Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression)
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
lazy7 lazy7Arg_ lazy7Arg_0 lazy7Arg_1 lazy7Arg_2 lazy7Arg_3 lazy7Arg_4 lazy7Arg_5 lazy7Arg_6 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Lazy" ]
             , name = "lazy7"
             , annotation =
                 Just
                     (Type.function
                          [ Type.function
                              [ Type.var "a"
                              , Type.var "b"
                              , Type.var "c"
                              , Type.var "d"
                              , Type.var "e"
                              , Type.var "f"
                              , Type.var "g"
                              ]
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          , Type.var "a"
                          , Type.var "b"
                          , Type.var "c"
                          , Type.var "d"
                          , Type.var "e"
                          , Type.var "f"
                          , Type.var "g"
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.functionReduced
            "lazy7Unpack"
            (\functionReducedUnpack ->
               Elm.functionReduced
                   "unpack"
                   (\functionReducedUnpack0 ->
                        Elm.functionReduced
                            "unpack"
                            (\functionReducedUnpack_2_1_2_0_2_0_2_0_0 ->
                                 Elm.functionReduced
                                     "unpack"
                                     (\functionReducedUnpack_2_1_2_1_2_0_2_0_2_0_0 ->
                                          Elm.functionReduced
                                              "unpack"
                                              (\functionReducedUnpack_2_1_2_1_2_1_2_0_2_0_2_0_0 ->
                                                   Elm.functionReduced
                                                       "unpack"
                                                       (\functionReducedUnpack_2_1_2_1_2_1_2_1_2_0_2_0_2_0_0 ->
                                                            Elm.functionReduced
                                                                "unpack"
                                                                ((((((lazy7Arg_
                                                                          functionReducedUnpack
                                                                     )
                                                                         functionReducedUnpack0
                                                                    )
                                                                        functionReducedUnpack_2_1_2_0_2_0_2_0_0
                                                                   )
                                                                       functionReducedUnpack_2_1_2_1_2_0_2_0_2_0_0
                                                                  )
                                                                      functionReducedUnpack_2_1_2_1_2_1_2_0_2_0_2_0_0
                                                                 )
                                                                     functionReducedUnpack_2_1_2_1_2_1_2_1_2_0_2_0_2_0_0
                                                                )
                                                       )
                                              )
                                     )
                            )
                   )
            )
        , lazy7Arg_0
        , lazy7Arg_1
        , lazy7Arg_2
        , lazy7Arg_3
        , lazy7Arg_4
        , lazy7Arg_5
        , lazy7Arg_6
        ]


{-| Same as `lazy` but checks on eight arguments.

lazy8: 
    (a -> b -> c -> d -> e -> f -> g -> h -> Html.Html msg)
    -> a
    -> b
    -> c
    -> d
    -> e
    -> f
    -> g
    -> h
    -> Html.Html msg
-}
lazy8 :
    (Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression)
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
    -> Elm.Expression
lazy8 lazy8Arg_ lazy8Arg_0 lazy8Arg_1 lazy8Arg_2 lazy8Arg_3 lazy8Arg_4 lazy8Arg_5 lazy8Arg_6 lazy8Arg_7 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Lazy" ]
             , name = "lazy8"
             , annotation =
                 Just
                     (Type.function
                          [ Type.function
                              [ Type.var "a"
                              , Type.var "b"
                              , Type.var "c"
                              , Type.var "d"
                              , Type.var "e"
                              , Type.var "f"
                              , Type.var "g"
                              , Type.var "h"
                              ]
                              (Type.namedWith
                                 [ "Html" ]
                                 "Html"
                                 [ Type.var "msg" ]
                              )
                          , Type.var "a"
                          , Type.var "b"
                          , Type.var "c"
                          , Type.var "d"
                          , Type.var "e"
                          , Type.var "f"
                          , Type.var "g"
                          , Type.var "h"
                          ]
                          (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                     )
             }
        )
        [ Elm.functionReduced
            "lazy8Unpack"
            (\functionReducedUnpack ->
               Elm.functionReduced
                   "unpack"
                   (\functionReducedUnpack0 ->
                        Elm.functionReduced
                            "unpack"
                            (\functionReducedUnpack_2_1_2_0_2_0_2_0_0 ->
                                 Elm.functionReduced
                                     "unpack"
                                     (\functionReducedUnpack_2_1_2_1_2_0_2_0_2_0_0 ->
                                          Elm.functionReduced
                                              "unpack"
                                              (\functionReducedUnpack_2_1_2_1_2_1_2_0_2_0_2_0_0 ->
                                                   Elm.functionReduced
                                                       "unpack"
                                                       (\functionReducedUnpack_2_1_2_1_2_1_2_1_2_0_2_0_2_0_0 ->
                                                            Elm.functionReduced
                                                                "unpack"
                                                                (\functionReducedUnpack_2_1_2_1_2_1_2_1_2_1_2_0_2_0_2_0_0 ->
                                                                     Elm.functionReduced
                                                                         "unpack"
                                                                         (((((((lazy8Arg_
                                                                                    functionReducedUnpack
                                                                               )
                                                                                   functionReducedUnpack0
                                                                              )
                                                                                  functionReducedUnpack_2_1_2_0_2_0_2_0_0
                                                                             )
                                                                                 functionReducedUnpack_2_1_2_1_2_0_2_0_2_0_0
                                                                            )
                                                                                functionReducedUnpack_2_1_2_1_2_1_2_0_2_0_2_0_0
                                                                           )
                                                                               functionReducedUnpack_2_1_2_1_2_1_2_1_2_0_2_0_2_0_0
                                                                          )
                                                                              functionReducedUnpack_2_1_2_1_2_1_2_1_2_1_2_0_2_0_2_0_0
                                                                         )
                                                                )
                                                       )
                                              )
                                     )
                            )
                   )
            )
        , lazy8Arg_0
        , lazy8Arg_1
        , lazy8Arg_2
        , lazy8Arg_3
        , lazy8Arg_4
        , lazy8Arg_5
        , lazy8Arg_6
        , lazy8Arg_7
        ]


call_ :
    { lazy : Elm.Expression -> Elm.Expression -> Elm.Expression
    , lazy2 :
        Elm.Expression -> Elm.Expression -> Elm.Expression -> Elm.Expression
    , lazy3 :
        Elm.Expression
        -> Elm.Expression
        -> Elm.Expression
        -> Elm.Expression
        -> Elm.Expression
    , lazy4 :
        Elm.Expression
        -> Elm.Expression
        -> Elm.Expression
        -> Elm.Expression
        -> Elm.Expression
        -> Elm.Expression
    , lazy5 :
        Elm.Expression
        -> Elm.Expression
        -> Elm.Expression
        -> Elm.Expression
        -> Elm.Expression
        -> Elm.Expression
        -> Elm.Expression
    , lazy6 :
        Elm.Expression
        -> Elm.Expression
        -> Elm.Expression
        -> Elm.Expression
        -> Elm.Expression
        -> Elm.Expression
        -> Elm.Expression
        -> Elm.Expression
    , lazy7 :
        Elm.Expression
        -> Elm.Expression
        -> Elm.Expression
        -> Elm.Expression
        -> Elm.Expression
        -> Elm.Expression
        -> Elm.Expression
        -> Elm.Expression
        -> Elm.Expression
    , lazy8 :
        Elm.Expression
        -> Elm.Expression
        -> Elm.Expression
        -> Elm.Expression
        -> Elm.Expression
        -> Elm.Expression
        -> Elm.Expression
        -> Elm.Expression
        -> Elm.Expression
        -> Elm.Expression
    }
call_ =
    { lazy =
        \lazyArg_ lazyArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Lazy" ]
                     , name = "lazy"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.function
                                      [ Type.var "a" ]
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.var "a"
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ lazyArg_, lazyArg_0 ]
    , lazy2 =
        \lazy2Arg_ lazy2Arg_0 lazy2Arg_1 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Lazy" ]
                     , name = "lazy2"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.function
                                      [ Type.var "a", Type.var "b" ]
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.var "a"
                                  , Type.var "b"
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ lazy2Arg_, lazy2Arg_0, lazy2Arg_1 ]
    , lazy3 =
        \lazy3Arg_ lazy3Arg_0 lazy3Arg_1 lazy3Arg_2 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Lazy" ]
                     , name = "lazy3"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.function
                                      [ Type.var "a"
                                      , Type.var "b"
                                      , Type.var "c"
                                      ]
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.var "a"
                                  , Type.var "b"
                                  , Type.var "c"
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ lazy3Arg_, lazy3Arg_0, lazy3Arg_1, lazy3Arg_2 ]
    , lazy4 =
        \lazy4Arg_ lazy4Arg_0 lazy4Arg_1 lazy4Arg_2 lazy4Arg_3 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Lazy" ]
                     , name = "lazy4"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.function
                                      [ Type.var "a"
                                      , Type.var "b"
                                      , Type.var "c"
                                      , Type.var "d"
                                      ]
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.var "a"
                                  , Type.var "b"
                                  , Type.var "c"
                                  , Type.var "d"
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ lazy4Arg_, lazy4Arg_0, lazy4Arg_1, lazy4Arg_2, lazy4Arg_3 ]
    , lazy5 =
        \lazy5Arg_ lazy5Arg_0 lazy5Arg_1 lazy5Arg_2 lazy5Arg_3 lazy5Arg_4 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Lazy" ]
                     , name = "lazy5"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.function
                                      [ Type.var "a"
                                      , Type.var "b"
                                      , Type.var "c"
                                      , Type.var "d"
                                      , Type.var "e"
                                      ]
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.var "a"
                                  , Type.var "b"
                                  , Type.var "c"
                                  , Type.var "d"
                                  , Type.var "e"
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ lazy5Arg_
                , lazy5Arg_0
                , lazy5Arg_1
                , lazy5Arg_2
                , lazy5Arg_3
                , lazy5Arg_4
                ]
    , lazy6 =
        \lazy6Arg_ lazy6Arg_0 lazy6Arg_1 lazy6Arg_2 lazy6Arg_3 lazy6Arg_4 lazy6Arg_5 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Lazy" ]
                     , name = "lazy6"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.function
                                      [ Type.var "a"
                                      , Type.var "b"
                                      , Type.var "c"
                                      , Type.var "d"
                                      , Type.var "e"
                                      , Type.var "f"
                                      ]
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.var "a"
                                  , Type.var "b"
                                  , Type.var "c"
                                  , Type.var "d"
                                  , Type.var "e"
                                  , Type.var "f"
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ lazy6Arg_
                , lazy6Arg_0
                , lazy6Arg_1
                , lazy6Arg_2
                , lazy6Arg_3
                , lazy6Arg_4
                , lazy6Arg_5
                ]
    , lazy7 =
        \lazy7Arg_ lazy7Arg_0 lazy7Arg_1 lazy7Arg_2 lazy7Arg_3 lazy7Arg_4 lazy7Arg_5 lazy7Arg_6 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Lazy" ]
                     , name = "lazy7"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.function
                                      [ Type.var "a"
                                      , Type.var "b"
                                      , Type.var "c"
                                      , Type.var "d"
                                      , Type.var "e"
                                      , Type.var "f"
                                      , Type.var "g"
                                      ]
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.var "a"
                                  , Type.var "b"
                                  , Type.var "c"
                                  , Type.var "d"
                                  , Type.var "e"
                                  , Type.var "f"
                                  , Type.var "g"
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ lazy7Arg_
                , lazy7Arg_0
                , lazy7Arg_1
                , lazy7Arg_2
                , lazy7Arg_3
                , lazy7Arg_4
                , lazy7Arg_5
                , lazy7Arg_6
                ]
    , lazy8 =
        \lazy8Arg_ lazy8Arg_0 lazy8Arg_1 lazy8Arg_2 lazy8Arg_3 lazy8Arg_4 lazy8Arg_5 lazy8Arg_6 lazy8Arg_7 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Lazy" ]
                     , name = "lazy8"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.function
                                      [ Type.var "a"
                                      , Type.var "b"
                                      , Type.var "c"
                                      , Type.var "d"
                                      , Type.var "e"
                                      , Type.var "f"
                                      , Type.var "g"
                                      , Type.var "h"
                                      ]
                                      (Type.namedWith
                                         [ "Html" ]
                                         "Html"
                                         [ Type.var "msg" ]
                                      )
                                  , Type.var "a"
                                  , Type.var "b"
                                  , Type.var "c"
                                  , Type.var "d"
                                  , Type.var "e"
                                  , Type.var "f"
                                  , Type.var "g"
                                  , Type.var "h"
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Html"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ lazy8Arg_
                , lazy8Arg_0
                , lazy8Arg_1
                , lazy8Arg_2
                , lazy8Arg_3
                , lazy8Arg_4
                , lazy8Arg_5
                , lazy8Arg_6
                , lazy8Arg_7
                ]
    }


values_ :
    { lazy : Elm.Expression
    , lazy2 : Elm.Expression
    , lazy3 : Elm.Expression
    , lazy4 : Elm.Expression
    , lazy5 : Elm.Expression
    , lazy6 : Elm.Expression
    , lazy7 : Elm.Expression
    , lazy8 : Elm.Expression
    }
values_ =
    { lazy =
        Elm.value
            { importFrom = [ "Html", "Lazy" ]
            , name = "lazy"
            , annotation =
                Just
                    (Type.function
                         [ Type.function
                             [ Type.var "a" ]
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         , Type.var "a"
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , lazy2 =
        Elm.value
            { importFrom = [ "Html", "Lazy" ]
            , name = "lazy2"
            , annotation =
                Just
                    (Type.function
                         [ Type.function
                             [ Type.var "a", Type.var "b" ]
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         , Type.var "a"
                         , Type.var "b"
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , lazy3 =
        Elm.value
            { importFrom = [ "Html", "Lazy" ]
            , name = "lazy3"
            , annotation =
                Just
                    (Type.function
                         [ Type.function
                             [ Type.var "a", Type.var "b", Type.var "c" ]
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         , Type.var "a"
                         , Type.var "b"
                         , Type.var "c"
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , lazy4 =
        Elm.value
            { importFrom = [ "Html", "Lazy" ]
            , name = "lazy4"
            , annotation =
                Just
                    (Type.function
                         [ Type.function
                             [ Type.var "a"
                             , Type.var "b"
                             , Type.var "c"
                             , Type.var "d"
                             ]
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         , Type.var "a"
                         , Type.var "b"
                         , Type.var "c"
                         , Type.var "d"
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , lazy5 =
        Elm.value
            { importFrom = [ "Html", "Lazy" ]
            , name = "lazy5"
            , annotation =
                Just
                    (Type.function
                         [ Type.function
                             [ Type.var "a"
                             , Type.var "b"
                             , Type.var "c"
                             , Type.var "d"
                             , Type.var "e"
                             ]
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         , Type.var "a"
                         , Type.var "b"
                         , Type.var "c"
                         , Type.var "d"
                         , Type.var "e"
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , lazy6 =
        Elm.value
            { importFrom = [ "Html", "Lazy" ]
            , name = "lazy6"
            , annotation =
                Just
                    (Type.function
                         [ Type.function
                             [ Type.var "a"
                             , Type.var "b"
                             , Type.var "c"
                             , Type.var "d"
                             , Type.var "e"
                             , Type.var "f"
                             ]
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         , Type.var "a"
                         , Type.var "b"
                         , Type.var "c"
                         , Type.var "d"
                         , Type.var "e"
                         , Type.var "f"
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , lazy7 =
        Elm.value
            { importFrom = [ "Html", "Lazy" ]
            , name = "lazy7"
            , annotation =
                Just
                    (Type.function
                         [ Type.function
                             [ Type.var "a"
                             , Type.var "b"
                             , Type.var "c"
                             , Type.var "d"
                             , Type.var "e"
                             , Type.var "f"
                             , Type.var "g"
                             ]
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         , Type.var "a"
                         , Type.var "b"
                         , Type.var "c"
                         , Type.var "d"
                         , Type.var "e"
                         , Type.var "f"
                         , Type.var "g"
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    , lazy8 =
        Elm.value
            { importFrom = [ "Html", "Lazy" ]
            , name = "lazy8"
            , annotation =
                Just
                    (Type.function
                         [ Type.function
                             [ Type.var "a"
                             , Type.var "b"
                             , Type.var "c"
                             , Type.var "d"
                             , Type.var "e"
                             , Type.var "f"
                             , Type.var "g"
                             , Type.var "h"
                             ]
                             (Type.namedWith
                                [ "Html" ]
                                "Html"
                                [ Type.var "msg" ]
                             )
                         , Type.var "a"
                         , Type.var "b"
                         , Type.var "c"
                         , Type.var "d"
                         , Type.var "e"
                         , Type.var "f"
                         , Type.var "g"
                         , Type.var "h"
                         ]
                         (Type.namedWith [ "Html" ] "Html" [ Type.var "msg" ])
                    )
            }
    }