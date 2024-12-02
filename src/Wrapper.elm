module Wrapper exposing (wrap, WithSubs, fromHtml)


type alias WithSubs html msg = (html, Sub msg)

wrap : (attrs -> List html -> html) -> (attrs -> List (WithSubs html msg) -> WithSubs html msg)
wrap function attrs elems_with_subs =
    let
        subs = List.map Tuple.second elems_with_subs
        elems = List.map Tuple.first elems_with_subs
    in
        (function attrs elems, Sub.batch subs)


fromHtml : html -> WithSubs (html) msg
fromHtml html = (html, Sub.none)
