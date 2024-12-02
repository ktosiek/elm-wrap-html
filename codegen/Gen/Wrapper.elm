module Gen.Wrapper exposing ( moduleName_, wrap, call_, values_ )

{-|
# Generated bindings for Wrapper

@docs moduleName_, wrap, call_, values_
-}


import Elm
import Elm.Annotation as Type


{-| The name of this module. -}
moduleName_ : List String
moduleName_ =
    [ "Wrapper" ]


{-| wrap: 
    (attrs -> List html -> html)
    -> attrs
    -> List (Wrapper.WithSubs html msg)
    -> Wrapper.WithSubs html msg
-}
wrap :
    (Elm.Expression -> Elm.Expression -> Elm.Expression)
    -> Elm.Expression
    -> List Elm.Expression
    -> Elm.Expression
wrap wrapArg_ wrapArg_0 wrapArg_1 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Wrapper" ]
             , name = "wrap"
             , annotation =
                 Just
                     (Type.function
                          [ Type.function
                              [ Type.var "attrs", Type.list (Type.var "html") ]
                              (Type.var "html")
                          , Type.var "attrs"
                          , Type.list
                              (Type.namedWith
                                 [ "Wrapper" ]
                                 "WithSubs"
                                 [ Type.var "html", Type.var "msg" ]
                              )
                          ]
                          (Type.namedWith
                               [ "Wrapper" ]
                               "WithSubs"
                               [ Type.var "html", Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.functionReduced
            "wrapUnpack"
            (\functionReducedUnpack ->
               Elm.functionReduced "unpack" (wrapArg_ functionReducedUnpack)
            )
        , wrapArg_0
        , Elm.list wrapArg_1
        ]


call_ :
    { wrap :
        Elm.Expression -> Elm.Expression -> Elm.Expression -> Elm.Expression
    }
call_ =
    { wrap =
        \wrapArg_ wrapArg_0 wrapArg_1 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Wrapper" ]
                     , name = "wrap"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.function
                                      [ Type.var "attrs"
                                      , Type.list (Type.var "html")
                                      ]
                                      (Type.var "html")
                                  , Type.var "attrs"
                                  , Type.list
                                      (Type.namedWith
                                         [ "Wrapper" ]
                                         "WithSubs"
                                         [ Type.var "html", Type.var "msg" ]
                                      )
                                  ]
                                  (Type.namedWith
                                       [ "Wrapper" ]
                                       "WithSubs"
                                       [ Type.var "html", Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ wrapArg_, wrapArg_0, wrapArg_1 ]
    }


values_ : { wrap : Elm.Expression }
values_ =
    { wrap =
        Elm.value
            { importFrom = [ "Wrapper" ]
            , name = "wrap"
            , annotation =
                Just
                    (Type.function
                         [ Type.function
                             [ Type.var "attrs", Type.list (Type.var "html") ]
                             (Type.var "html")
                         , Type.var "attrs"
                         , Type.list
                             (Type.namedWith
                                [ "Wrapper" ]
                                "WithSubs"
                                [ Type.var "html", Type.var "msg" ]
                             )
                         ]
                         (Type.namedWith
                              [ "Wrapper" ]
                              "WithSubs"
                              [ Type.var "html", Type.var "msg" ]
                         )
                    )
            }
    }