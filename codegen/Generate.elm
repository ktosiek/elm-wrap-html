module Generate exposing (main)


{-| -}

import Elm
import Elm.Arg
import Elm.Annotation as Type
import Gen.CodeGen.Generate as Generate
import Gen.Html
import Gen.Platform.Sub
import Gen.Wrapper


main : Program {} () ()
main =
    Generate.run
        [ file
        ]


file : Elm.File
file =
    Elm.file [ "HelloWorld" ]
        ([ Elm.declaration "hello"
            (Elm.string "World!")
         , Elm.declaration "text"
            (Elm.fn (Elm.Arg.var "raw")
                (\rawText -> Elm.tuple
                    (Gen.Html.call_.text rawText)
                    (Gen.Platform.Sub.values_.none)
                    ))
        ] ++ htmlElementDeclarations)


htmlElementDeclarations =
    List.map (\(nodeName, nodeConstructor) -> Elm.declaration nodeName
        (Elm.fn2 (Elm.Arg.var "attrs") (Elm.Arg.var "elems")
         (\attrs elems -> (Gen.Wrapper.call_.wrap nodeConstructor) attrs elems))
    )
    [   ("h1", Gen.Html.values_.h1)
        ,("h2", Gen.Html.values_.h2)
        ,("h3", Gen.Html.values_.h3)
        ,("h4", Gen.Html.values_.h4)
        ,("h5", Gen.Html.values_.h5)
        ,("h6", Gen.Html.values_.h6)
        ,("div", Gen.Html.values_.div)
        ,("p", Gen.Html.values_.p)
        ,("hr", Gen.Html.values_.hr)
        ,("pre", Gen.Html.values_.pre)
        ,("blockquote", Gen.Html.values_.blockquote)
        ,("span", Gen.Html.values_.span)
        ,("a", Gen.Html.values_.a)
        ,("code", Gen.Html.values_.code)
        ,("em", Gen.Html.values_.em)
        ,("strong", Gen.Html.values_.strong)
        ,("i", Gen.Html.values_.i)
        ,("b", Gen.Html.values_.b)
        ,("u", Gen.Html.values_.u)
        ,("sub", Gen.Html.values_.sub)
        ,("sup", Gen.Html.values_.sup)
        ,("br", Gen.Html.values_.br)
        ,("ol", Gen.Html.values_.ol)
        ,("ul", Gen.Html.values_.ul)
        ,("li", Gen.Html.values_.li)
        ,("dl", Gen.Html.values_.dl)
        ,("dt", Gen.Html.values_.dt)
        ,("dd", Gen.Html.values_.dd)
        ,("img", Gen.Html.values_.img)
        ,("iframe", Gen.Html.values_.iframe)
        ,("canvas", Gen.Html.values_.canvas)
        ,("math", Gen.Html.values_.math)
        ,("form", Gen.Html.values_.form)
        ,("input", Gen.Html.values_.input)
        ,("textarea", Gen.Html.values_.textarea)
        ,("button", Gen.Html.values_.button)
        ,("select", Gen.Html.values_.select)
        ,("option", Gen.Html.values_.option)
        ,("section", Gen.Html.values_.section)
        ,("nav", Gen.Html.values_.nav)
        ,("article", Gen.Html.values_.article)
        ,("aside", Gen.Html.values_.aside)
        ,("header", Gen.Html.values_.header)
        ,("footer", Gen.Html.values_.footer)
        ,("address", Gen.Html.values_.address)
        ,("main_", Gen.Html.values_.main_)
        ,("figure", Gen.Html.values_.figure)
        ,("figcaption", Gen.Html.values_.figcaption)
        ,("table", Gen.Html.values_.table)
        ,("caption", Gen.Html.values_.caption)
        ,("colgroup", Gen.Html.values_.colgroup)
        ,("col", Gen.Html.values_.col)
        ,("tbody", Gen.Html.values_.tbody)
        ,("thead", Gen.Html.values_.thead)
        ,("tfoot", Gen.Html.values_.tfoot)
        ,("tr", Gen.Html.values_.tr)
        ,("td", Gen.Html.values_.td)
        ,("th", Gen.Html.values_.th)
        ,("fieldset", Gen.Html.values_.fieldset)
        ,("legend", Gen.Html.values_.legend)
        ,("label", Gen.Html.values_.label)
        ,("datalist", Gen.Html.values_.datalist)
        ,("optgroup", Gen.Html.values_.optgroup)
        ,("output", Gen.Html.values_.output)
        ,("progress", Gen.Html.values_.progress)
        ,("meter", Gen.Html.values_.meter)
        ,("audio", Gen.Html.values_.audio)
        ,("video", Gen.Html.values_.video)
        ,("source", Gen.Html.values_.source)
        ,("track", Gen.Html.values_.track)
        ,("embed", Gen.Html.values_.embed)
        ,("object", Gen.Html.values_.object)
        ,("param", Gen.Html.values_.param)
        ,("ins", Gen.Html.values_.ins)
        ,("del", Gen.Html.values_.del)
        ,("small", Gen.Html.values_.small)
        ,("cite", Gen.Html.values_.cite)
        ,("dfn", Gen.Html.values_.dfn)
        ,("abbr", Gen.Html.values_.abbr)
        ,("time", Gen.Html.values_.time)
        ,("var", Gen.Html.values_.var)
        ,("samp", Gen.Html.values_.samp)
        ,("kbd", Gen.Html.values_.kbd)
        ,("s", Gen.Html.values_.s)
        ,("q", Gen.Html.values_.q)
        ,("mark", Gen.Html.values_.mark)
        ,("ruby", Gen.Html.values_.ruby)
        ,("rt", Gen.Html.values_.rt)
        ,("rp", Gen.Html.values_.rp)
        ,("bdi", Gen.Html.values_.bdi)
        ,("bdo", Gen.Html.values_.bdo)
        ,("wbr", Gen.Html.values_.wbr)
        ,("details", Gen.Html.values_.details)
        ,("summary", Gen.Html.values_.summary)
        ,("menuitem", Gen.Html.values_.menuitem)
        ,("menu", Gen.Html.values_.menu)

    ]
