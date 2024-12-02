module Gen.Html.Attributes exposing
    ( moduleName_, style, property, attribute, map, class
    , classList, id, title, hidden, type_, value, checked
    , placeholder, selected, accept, acceptCharset, action, autocomplete, autofocus
    , disabled, enctype, list, maxlength, minlength, method, multiple
    , name, novalidate, pattern, readonly, required, size, for
    , form, max, min, step, cols, rows, wrap
    , href, target, download, hreflang, media, ping, rel
    , ismap, usemap, shape, coords, src, height, width
    , alt, autoplay, controls, loop, preload, poster, default
    , kind, srclang, sandbox, srcdoc, reversed, start, align
    , colspan, rowspan, headers, scope, accesskey, contenteditable, contextmenu
    , dir, draggable, dropzone, itemprop, lang, spellcheck, tabindex
    , cite, datetime, pubdate, manifest, call_, values_
    )

{-|
# Generated bindings for Html.Attributes

@docs moduleName_, style, property, attribute, map, class
@docs classList, id, title, hidden, type_, value
@docs checked, placeholder, selected, accept, acceptCharset, action
@docs autocomplete, autofocus, disabled, enctype, list, maxlength
@docs minlength, method, multiple, name, novalidate, pattern
@docs readonly, required, size, for, form, max
@docs min, step, cols, rows, wrap, href
@docs target, download, hreflang, media, ping, rel
@docs ismap, usemap, shape, coords, src, height
@docs width, alt, autoplay, controls, loop, preload
@docs poster, default, kind, srclang, sandbox, srcdoc
@docs reversed, start, align, colspan, rowspan, headers
@docs scope, accesskey, contenteditable, contextmenu, dir, draggable
@docs dropzone, itemprop, lang, spellcheck, tabindex, cite
@docs datetime, pubdate, manifest, call_, values_
-}


import Elm
import Elm.Annotation as Type


{-| The name of this module. -}
moduleName_ : List String
moduleName_ =
    [ "Html", "Attributes" ]


{-| Specify a style.

    greeting : Node msg
    greeting =
      div
        [ style "background-color" "red"
        , style "height" "90px"
        , style "width" "100%"
        ]
        [ text "Hello!"
        ]

There is no `Html.Styles` module because best practices for working with HTML
suggest that this should primarily be specified in CSS files. So the general
recommendation is to use this function lightly.

style: String -> String -> Html.Attribute msg
-}
style : String -> String -> Elm.Expression
style styleArg_ styleArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "style"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string, Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string styleArg_, Elm.string styleArg_0 ]


{-| Create *properties*, like saying `domNode.className = 'greeting'` in
JavaScript.

    import Json.Encode as Encode

    class : String -> Attribute msg
    class name =
      property "className" (Encode.string name)

Read more about the difference between properties and attributes [here][].

[here]: https://github.com/elm/html/blob/master/properties-vs-attributes.md

property: String -> Json.Encode.Value -> Html.Attribute msg
-}
property : String -> Elm.Expression -> Elm.Expression
property propertyArg_ propertyArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "property"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string
                          , Type.namedWith [ "Json", "Encode" ] "Value" []
                          ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string propertyArg_, propertyArg_0 ]


{-| Create *attributes*, like saying `domNode.setAttribute('class', 'greeting')`
in JavaScript.

    class : String -> Attribute msg
    class name =
      attribute "class" name

Read more about the difference between properties and attributes [here][].

[here]: https://github.com/elm/html/blob/master/properties-vs-attributes.md

attribute: String -> String -> Html.Attribute msg
-}
attribute : String -> String -> Elm.Expression
attribute attributeArg_ attributeArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "attribute"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string, Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string attributeArg_, Elm.string attributeArg_0 ]


{-| Transform the messages produced by an `Attribute`.

map: (a -> msg) -> Html.Attribute a -> Html.Attribute msg
-}
map : (Elm.Expression -> Elm.Expression) -> Elm.Expression -> Elm.Expression
map mapArg_ mapArg_0 =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "map"
             , annotation =
                 Just
                     (Type.function
                          [ Type.function [ Type.var "a" ] (Type.var "msg")
                          , Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "a" ]
                          ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.functionReduced "mapUnpack" mapArg_, mapArg_0 ]


{-| Often used with CSS to style elements with common properties.

**Note:** You can have as many `class` and `classList` attributes as you want.
They all get applied, so if you say `[ class "notice", class "notice-seen" ]`
you will get both classes!

class: String -> Html.Attribute msg
-}
class : String -> Elm.Expression
class classArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "class"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string classArg_ ]


{-| This function makes it easier to build a space-separated class attribute.
Each class can easily be added and removed depending on the boolean value it
is paired with. For example, maybe we want a way to view notices:

    viewNotice : Notice -> Html msg
    viewNotice notice =
      div
        [ classList
            [ ("notice", True)
            , ("notice-important", notice.isImportant)
            , ("notice-seen", notice.isSeen)
            ]
        ]
        [ text notice.content ]

**Note:** You can have as many `class` and `classList` attributes as you want.
They all get applied, so if you say `[ class "notice", class "notice-seen" ]`
you will get both classes!

classList: List ( String, Bool ) -> Html.Attribute msg
-}
classList : List Elm.Expression -> Elm.Expression
classList classListArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "classList"
             , annotation =
                 Just
                     (Type.function
                          [ Type.list (Type.tuple Type.string Type.bool) ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.list classListArg_ ]


{-| Often used with CSS to style a specific element. The value of this
attribute must be unique.

id: String -> Html.Attribute msg
-}
id : String -> Elm.Expression
id idArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "id"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string idArg_ ]


{-| Text to be displayed in a tooltip when hovering over the element.

title: String -> Html.Attribute msg
-}
title : String -> Elm.Expression
title titleArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "title"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string titleArg_ ]


{-| Indicates the relevance of an element.

hidden: Bool -> Html.Attribute msg
-}
hidden : Bool -> Elm.Expression
hidden hiddenArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "hidden"
             , annotation =
                 Just
                     (Type.function
                          [ Type.bool ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.bool hiddenArg_ ]


{-| Defines the type of a `button`, `input`, `embed`, `object`, `script`,
`source`, `style`, or `menu`.

type_: String -> Html.Attribute msg
-}
type_ : String -> Elm.Expression
type_ type_Arg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "type_"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string type_Arg_ ]


{-| Defines a default value which will be displayed in a `button`, `option`,
`input`, `li`, `meter`, `progress`, or `param`.

value: String -> Html.Attribute msg
-}
value : String -> Elm.Expression
value valueArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "value"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string valueArg_ ]


{-| Indicates whether an `input` of type checkbox is checked.

checked: Bool -> Html.Attribute msg
-}
checked : Bool -> Elm.Expression
checked checkedArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "checked"
             , annotation =
                 Just
                     (Type.function
                          [ Type.bool ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.bool checkedArg_ ]


{-| Provides a hint to the user of what can be entered into an `input` or
`textarea`.

placeholder: String -> Html.Attribute msg
-}
placeholder : String -> Elm.Expression
placeholder placeholderArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "placeholder"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string placeholderArg_ ]


{-| Defines which `option` will be selected on page load.

selected: Bool -> Html.Attribute msg
-}
selected : Bool -> Elm.Expression
selected selectedArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "selected"
             , annotation =
                 Just
                     (Type.function
                          [ Type.bool ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.bool selectedArg_ ]


{-| List of types the server accepts, typically a file type.
For `form` and `input`.

accept: String -> Html.Attribute msg
-}
accept : String -> Elm.Expression
accept acceptArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "accept"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string acceptArg_ ]


{-| List of supported charsets in a `form`.

acceptCharset: String -> Html.Attribute msg
-}
acceptCharset : String -> Elm.Expression
acceptCharset acceptCharsetArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "acceptCharset"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string acceptCharsetArg_ ]


{-| The URI of a program that processes the information submitted via a `form`.

action: String -> Html.Attribute msg
-}
action : String -> Elm.Expression
action actionArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "action"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string actionArg_ ]


{-| Indicates whether a `form` or an `input` can have their values automatically
completed by the browser.

autocomplete: Bool -> Html.Attribute msg
-}
autocomplete : Bool -> Elm.Expression
autocomplete autocompleteArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "autocomplete"
             , annotation =
                 Just
                     (Type.function
                          [ Type.bool ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.bool autocompleteArg_ ]


{-| The element should be automatically focused after the page loaded.
For `button`, `input`, `select`, and `textarea`.

autofocus: Bool -> Html.Attribute msg
-}
autofocus : Bool -> Elm.Expression
autofocus autofocusArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "autofocus"
             , annotation =
                 Just
                     (Type.function
                          [ Type.bool ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.bool autofocusArg_ ]


{-| Indicates whether the user can interact with a `button`, `fieldset`,
`input`, `optgroup`, `option`, `select` or `textarea`.

disabled: Bool -> Html.Attribute msg
-}
disabled : Bool -> Elm.Expression
disabled disabledArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "disabled"
             , annotation =
                 Just
                     (Type.function
                          [ Type.bool ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.bool disabledArg_ ]


{-| How `form` data should be encoded when submitted with the POST method.
Options include: application/x-www-form-urlencoded, multipart/form-data, and
text/plain.

enctype: String -> Html.Attribute msg
-}
enctype : String -> Elm.Expression
enctype enctypeArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "enctype"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string enctypeArg_ ]


{-| Associates an `input` with a `datalist` tag. The datalist gives some
pre-defined options to suggest to the user as they interact with an input.
The value of the list attribute must match the id of a `datalist` node.
For `input`.

list: String -> Html.Attribute msg
-}
list : String -> Elm.Expression
list listArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "list"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string listArg_ ]


{-| Defines the maximum number of characters allowed in an `input` or
`textarea`.

maxlength: Int -> Html.Attribute msg
-}
maxlength : Int -> Elm.Expression
maxlength maxlengthArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "maxlength"
             , annotation =
                 Just
                     (Type.function
                          [ Type.int ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.int maxlengthArg_ ]


{-| Defines the minimum number of characters allowed in an `input` or
`textarea`.

minlength: Int -> Html.Attribute msg
-}
minlength : Int -> Elm.Expression
minlength minlengthArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "minlength"
             , annotation =
                 Just
                     (Type.function
                          [ Type.int ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.int minlengthArg_ ]


{-| Defines which HTTP method to use when submitting a `form`. Can be GET
(default) or POST.

method: String -> Html.Attribute msg
-}
method : String -> Elm.Expression
method methodArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "method"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string methodArg_ ]


{-| Indicates whether multiple values can be entered in an `input` of type
email or file. Can also indicate that you can `select` many options.

multiple: Bool -> Html.Attribute msg
-}
multiple : Bool -> Elm.Expression
multiple multipleArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "multiple"
             , annotation =
                 Just
                     (Type.function
                          [ Type.bool ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.bool multipleArg_ ]


{-| Name of the element. For example used by the server to identify the fields
in form submits. For `button`, `form`, `fieldset`, `iframe`, `input`,
`object`, `output`, `select`, `textarea`, `map`, `meta`, and `param`.

name: String -> Html.Attribute msg
-}
name : String -> Elm.Expression
name nameArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "name"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string nameArg_ ]


{-| This attribute indicates that a `form` shouldn't be validated when
submitted.

novalidate: Bool -> Html.Attribute msg
-}
novalidate : Bool -> Elm.Expression
novalidate novalidateArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "novalidate"
             , annotation =
                 Just
                     (Type.function
                          [ Type.bool ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.bool novalidateArg_ ]


{-| Defines a regular expression which an `input`'s value will be validated
against.

pattern: String -> Html.Attribute msg
-}
pattern : String -> Elm.Expression
pattern patternArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "pattern"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string patternArg_ ]


{-| Indicates whether an `input` or `textarea` can be edited.

readonly: Bool -> Html.Attribute msg
-}
readonly : Bool -> Elm.Expression
readonly readonlyArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "readonly"
             , annotation =
                 Just
                     (Type.function
                          [ Type.bool ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.bool readonlyArg_ ]


{-| Indicates whether this element is required to fill out or not.
For `input`, `select`, and `textarea`.

required: Bool -> Html.Attribute msg
-}
required : Bool -> Elm.Expression
required requiredArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "required"
             , annotation =
                 Just
                     (Type.function
                          [ Type.bool ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.bool requiredArg_ ]


{-| For `input` specifies the width of an input in characters.

For `select` specifies the number of visible options in a drop-down list.

size: Int -> Html.Attribute msg
-}
size : Int -> Elm.Expression
size sizeArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "size"
             , annotation =
                 Just
                     (Type.function
                          [ Type.int ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.int sizeArg_ ]


{-| The element ID described by this `label` or the element IDs that are used
for an `output`.

for: String -> Html.Attribute msg
-}
for : String -> Elm.Expression
for forArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "for"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string forArg_ ]


{-| Indicates the element ID of the `form` that owns this particular `button`,
`fieldset`, `input`, `label`, `meter`, `object`, `output`, `progress`,
`select`, or `textarea`.

form: String -> Html.Attribute msg
-}
form : String -> Elm.Expression
form formArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "form"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string formArg_ ]


{-| Indicates the maximum value allowed. When using an input of type number or
date, the max value must be a number or date. For `input`, `meter`, and `progress`.

max: String -> Html.Attribute msg
-}
max : String -> Elm.Expression
max maxArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "max"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string maxArg_ ]


{-| Indicates the minimum value allowed. When using an input of type number or
date, the min value must be a number or date. For `input` and `meter`.

min: String -> Html.Attribute msg
-}
min : String -> Elm.Expression
min minArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "min"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string minArg_ ]


{-| Add a step size to an `input`. Use `step "any"` to allow any floating-point
number to be used in the input.

step: String -> Html.Attribute msg
-}
step : String -> Elm.Expression
step stepArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "step"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string stepArg_ ]


{-| Defines the number of columns in a `textarea`.

cols: Int -> Html.Attribute msg
-}
cols : Int -> Elm.Expression
cols colsArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "cols"
             , annotation =
                 Just
                     (Type.function
                          [ Type.int ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.int colsArg_ ]


{-| Defines the number of rows in a `textarea`.

rows: Int -> Html.Attribute msg
-}
rows : Int -> Elm.Expression
rows rowsArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "rows"
             , annotation =
                 Just
                     (Type.function
                          [ Type.int ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.int rowsArg_ ]


{-| Indicates whether the text should be wrapped in a `textarea`. Possible
values are "hard" and "soft".

wrap: String -> Html.Attribute msg
-}
wrap : String -> Elm.Expression
wrap wrapArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "wrap"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string wrapArg_ ]


{-| The URL of a linked resource, such as `a`, `area`, `base`, or `link`.

href: String -> Html.Attribute msg
-}
href : String -> Elm.Expression
href hrefArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "href"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string hrefArg_ ]


{-| Specify where the results of clicking an `a`, `area`, `base`, or `form`
should appear. Possible special values include:

  * _blank &mdash; a new window or tab
  * _self &mdash; the same frame (this is default)
  * _parent &mdash; the parent frame
  * _top &mdash; the full body of the window

You can also give the name of any `frame` you have created.

target: String -> Html.Attribute msg
-}
target : String -> Elm.Expression
target targetArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "target"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string targetArg_ ]


{-| Indicates that clicking an `a` and `area` will download the resource
directly. The `String` argument determins the name of the downloaded file.
Say the file you are serving is named `hats.json`.

    download ""               -- hats.json
    download "my-hats.json"   -- my-hats.json
    download "snakes.json"    -- snakes.json

The empty `String` says to just name it whatever it was called on the server.

download: String -> Html.Attribute msg
-}
download : String -> Elm.Expression
download downloadArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "download"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string downloadArg_ ]


{-| Two-letter language code of the linked resource of an `a`, `area`, or `link`.

hreflang: String -> Html.Attribute msg
-}
hreflang : String -> Elm.Expression
hreflang hreflangArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "hreflang"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string hreflangArg_ ]


{-| Specifies a hint of the target media of a `a`, `area`, `link`, `source`,
or `style`.

media: String -> Html.Attribute msg
-}
media : String -> Elm.Expression
media mediaArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "media"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string mediaArg_ ]


{-| Specify a URL to send a short POST request to when the user clicks on an
`a` or `area`. Useful for monitoring and tracking.

ping: String -> Html.Attribute msg
-}
ping : String -> Elm.Expression
ping pingArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "ping"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string pingArg_ ]


{-| Specifies the relationship of the target object to the link object.
For `a`, `area`, `link`.

rel: String -> Html.Attribute msg
-}
rel : String -> Elm.Expression
rel relArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "rel"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string relArg_ ]


{-| When an `img` is a descendant of an `a` tag, the `ismap` attribute
indicates that the click location should be added to the parent `a`'s href as
a query string.

ismap: Bool -> Html.Attribute msg
-}
ismap : Bool -> Elm.Expression
ismap ismapArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "ismap"
             , annotation =
                 Just
                     (Type.function
                          [ Type.bool ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.bool ismapArg_ ]


{-| Specify the hash name reference of a `map` that should be used for an `img`
or `object`. A hash name reference is a hash symbol followed by the element's name or id.
E.g. `"#planet-map"`.

usemap: String -> Html.Attribute msg
-}
usemap : String -> Elm.Expression
usemap usemapArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "usemap"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string usemapArg_ ]


{-| Declare the shape of the clickable area in an `a` or `area`. Valid values
include: default, rect, circle, poly. This attribute can be paired with
`coords` to create more particular shapes.

shape: String -> Html.Attribute msg
-}
shape : String -> Elm.Expression
shape shapeArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "shape"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string shapeArg_ ]


{-| A set of values specifying the coordinates of the hot-spot region in an
`area`. Needs to be paired with a `shape` attribute to be meaningful.

coords: String -> Html.Attribute msg
-}
coords : String -> Elm.Expression
coords coordsArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "coords"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string coordsArg_ ]


{-| The URL of the embeddable content. For `audio`, `embed`, `iframe`, `img`,
`input`, `script`, `source`, `track`, and `video`.

src: String -> Html.Attribute msg
-}
src : String -> Elm.Expression
src srcArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "src"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string srcArg_ ]


{-| Declare the height of a `canvas`, `embed`, `iframe`, `img`, `input`,
`object`, or `video`.

height: Int -> Html.Attribute msg
-}
height : Int -> Elm.Expression
height heightArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "height"
             , annotation =
                 Just
                     (Type.function
                          [ Type.int ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.int heightArg_ ]


{-| Declare the width of a `canvas`, `embed`, `iframe`, `img`, `input`,
`object`, or `video`.

width: Int -> Html.Attribute msg
-}
width : Int -> Elm.Expression
width widthArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "width"
             , annotation =
                 Just
                     (Type.function
                          [ Type.int ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.int widthArg_ ]


{-| Alternative text in case an image can't be displayed. Works with `img`,
`area`, and `input`.

alt: String -> Html.Attribute msg
-}
alt : String -> Elm.Expression
alt altArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "alt"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string altArg_ ]


{-| The `audio` or `video` should play as soon as possible.

autoplay: Bool -> Html.Attribute msg
-}
autoplay : Bool -> Elm.Expression
autoplay autoplayArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "autoplay"
             , annotation =
                 Just
                     (Type.function
                          [ Type.bool ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.bool autoplayArg_ ]


{-| Indicates whether the browser should show playback controls for the `audio`
or `video`.

controls: Bool -> Html.Attribute msg
-}
controls : Bool -> Elm.Expression
controls controlsArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "controls"
             , annotation =
                 Just
                     (Type.function
                          [ Type.bool ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.bool controlsArg_ ]


{-| Indicates whether the `audio` or `video` should start playing from the
start when it's finished.

loop: Bool -> Html.Attribute msg
-}
loop : Bool -> Elm.Expression
loop loopArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "loop"
             , annotation =
                 Just
                     (Type.function
                          [ Type.bool ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.bool loopArg_ ]


{-| Control how much of an `audio` or `video` resource should be preloaded.

preload: String -> Html.Attribute msg
-}
preload : String -> Elm.Expression
preload preloadArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "preload"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string preloadArg_ ]


{-| A URL indicating a poster frame to show until the user plays or seeks the
`video`.

poster: String -> Html.Attribute msg
-}
poster : String -> Elm.Expression
poster posterArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "poster"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string posterArg_ ]


{-| Indicates that the `track` should be enabled unless the user's preferences
indicate something different.

default: Bool -> Html.Attribute msg
-}
default : Bool -> Elm.Expression
default defaultArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "default"
             , annotation =
                 Just
                     (Type.function
                          [ Type.bool ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.bool defaultArg_ ]


{-| Specifies the kind of text `track`.

kind: String -> Html.Attribute msg
-}
kind : String -> Elm.Expression
kind kindArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "kind"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string kindArg_ ]


{-| A two letter language code indicating the language of the `track` text data.

srclang: String -> Html.Attribute msg
-}
srclang : String -> Elm.Expression
srclang srclangArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "srclang"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string srclangArg_ ]


{-| A space separated list of security restrictions you'd like to lift for an
`iframe`.

sandbox: String -> Html.Attribute msg
-}
sandbox : String -> Elm.Expression
sandbox sandboxArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "sandbox"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string sandboxArg_ ]


{-| An HTML document that will be displayed as the body of an `iframe`. It will
override the content of the `src` attribute if it has been specified.

srcdoc: String -> Html.Attribute msg
-}
srcdoc : String -> Elm.Expression
srcdoc srcdocArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "srcdoc"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string srcdocArg_ ]


{-| Indicates whether an ordered list `ol` should be displayed in a descending
order instead of a ascending.

reversed: Bool -> Html.Attribute msg
-}
reversed : Bool -> Elm.Expression
reversed reversedArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "reversed"
             , annotation =
                 Just
                     (Type.function
                          [ Type.bool ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.bool reversedArg_ ]


{-| Defines the first number of an ordered list if you want it to be something
besides 1.

start: Int -> Html.Attribute msg
-}
start : Int -> Elm.Expression
start startArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "start"
             , annotation =
                 Just
                     (Type.function
                          [ Type.int ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.int startArg_ ]


{-| Specifies the horizontal alignment of a `caption`, `col`, `colgroup`,
`hr`, `iframe`, `img`, `table`, `tbody`,  `td`,  `tfoot`, `th`, `thead`, or
`tr`.

align: String -> Html.Attribute msg
-}
align : String -> Elm.Expression
align alignArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "align"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string alignArg_ ]


{-| The colspan attribute defines the number of columns a cell should span.
For `td` and `th`.

colspan: Int -> Html.Attribute msg
-}
colspan : Int -> Elm.Expression
colspan colspanArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "colspan"
             , annotation =
                 Just
                     (Type.function
                          [ Type.int ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.int colspanArg_ ]


{-| Defines the number of rows a table cell should span over.
For `td` and `th`.

rowspan: Int -> Html.Attribute msg
-}
rowspan : Int -> Elm.Expression
rowspan rowspanArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "rowspan"
             , annotation =
                 Just
                     (Type.function
                          [ Type.int ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.int rowspanArg_ ]


{-| A space separated list of element IDs indicating which `th` elements are
headers for this cell. For `td` and `th`.

headers: String -> Html.Attribute msg
-}
headers : String -> Elm.Expression
headers headersArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "headers"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string headersArg_ ]


{-| Specifies the scope of a header cell `th`. Possible values are: col, row,
colgroup, rowgroup.

scope: String -> Html.Attribute msg
-}
scope : String -> Elm.Expression
scope scopeArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "scope"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string scopeArg_ ]


{-| Defines a keyboard shortcut to activate or add focus to the element.

accesskey: Char.Char -> Html.Attribute msg
-}
accesskey : Char.Char -> Elm.Expression
accesskey accesskeyArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "accesskey"
             , annotation =
                 Just
                     (Type.function
                          [ Type.char ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.char accesskeyArg_ ]


{-| Indicates whether the element's content is editable.

contenteditable: Bool -> Html.Attribute msg
-}
contenteditable : Bool -> Elm.Expression
contenteditable contenteditableArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "contenteditable"
             , annotation =
                 Just
                     (Type.function
                          [ Type.bool ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.bool contenteditableArg_ ]


{-| Defines the ID of a `menu` element which will serve as the element's
context menu.

contextmenu: String -> Html.Attribute msg
-}
contextmenu : String -> Elm.Expression
contextmenu contextmenuArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "contextmenu"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string contextmenuArg_ ]


{-| Defines the text direction. Allowed values are ltr (Left-To-Right) or rtl
(Right-To-Left).

dir: String -> Html.Attribute msg
-}
dir : String -> Elm.Expression
dir dirArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "dir"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string dirArg_ ]


{-| Defines whether the element can be dragged.

draggable: String -> Html.Attribute msg
-}
draggable : String -> Elm.Expression
draggable draggableArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "draggable"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string draggableArg_ ]


{-| Indicates that the element accept the dropping of content on it.

dropzone: String -> Html.Attribute msg
-}
dropzone : String -> Elm.Expression
dropzone dropzoneArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "dropzone"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string dropzoneArg_ ]


{-| itemprop: String -> Html.Attribute msg -}
itemprop : String -> Elm.Expression
itemprop itempropArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "itemprop"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string itempropArg_ ]


{-| Defines the language used in the element.

lang: String -> Html.Attribute msg
-}
lang : String -> Elm.Expression
lang langArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "lang"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string langArg_ ]


{-| Indicates whether spell checking is allowed for the element.

spellcheck: Bool -> Html.Attribute msg
-}
spellcheck : Bool -> Elm.Expression
spellcheck spellcheckArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "spellcheck"
             , annotation =
                 Just
                     (Type.function
                          [ Type.bool ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.bool spellcheckArg_ ]


{-| Overrides the browser's default tab order and follows the one specified
instead.

tabindex: Int -> Html.Attribute msg
-}
tabindex : Int -> Elm.Expression
tabindex tabindexArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "tabindex"
             , annotation =
                 Just
                     (Type.function
                          [ Type.int ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.int tabindexArg_ ]


{-| Contains a URI which points to the source of the quote or change in a
`blockquote`, `del`, `ins`, or `q`.

cite: String -> Html.Attribute msg
-}
cite : String -> Elm.Expression
cite citeArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "cite"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string citeArg_ ]


{-| Indicates the date and time associated with the element.
For `del`, `ins`, `time`.

datetime: String -> Html.Attribute msg
-}
datetime : String -> Elm.Expression
datetime datetimeArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "datetime"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string datetimeArg_ ]


{-| Indicates whether this date and time is the date of the nearest `article`
ancestor element. For `time`.

pubdate: String -> Html.Attribute msg
-}
pubdate : String -> Elm.Expression
pubdate pubdateArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "pubdate"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string pubdateArg_ ]


{-| Specifies the URL of the cache manifest for an `html` tag.

manifest: String -> Html.Attribute msg
-}
manifest : String -> Elm.Expression
manifest manifestArg_ =
    Elm.apply
        (Elm.value
             { importFrom = [ "Html", "Attributes" ]
             , name = "manifest"
             , annotation =
                 Just
                     (Type.function
                          [ Type.string ]
                          (Type.namedWith
                               [ "Html" ]
                               "Attribute"
                               [ Type.var "msg" ]
                          )
                     )
             }
        )
        [ Elm.string manifestArg_ ]


call_ :
    { style : Elm.Expression -> Elm.Expression -> Elm.Expression
    , property : Elm.Expression -> Elm.Expression -> Elm.Expression
    , attribute : Elm.Expression -> Elm.Expression -> Elm.Expression
    , map : Elm.Expression -> Elm.Expression -> Elm.Expression
    , class : Elm.Expression -> Elm.Expression
    , classList : Elm.Expression -> Elm.Expression
    , id : Elm.Expression -> Elm.Expression
    , title : Elm.Expression -> Elm.Expression
    , hidden : Elm.Expression -> Elm.Expression
    , type_ : Elm.Expression -> Elm.Expression
    , value : Elm.Expression -> Elm.Expression
    , checked : Elm.Expression -> Elm.Expression
    , placeholder : Elm.Expression -> Elm.Expression
    , selected : Elm.Expression -> Elm.Expression
    , accept : Elm.Expression -> Elm.Expression
    , acceptCharset : Elm.Expression -> Elm.Expression
    , action : Elm.Expression -> Elm.Expression
    , autocomplete : Elm.Expression -> Elm.Expression
    , autofocus : Elm.Expression -> Elm.Expression
    , disabled : Elm.Expression -> Elm.Expression
    , enctype : Elm.Expression -> Elm.Expression
    , list : Elm.Expression -> Elm.Expression
    , maxlength : Elm.Expression -> Elm.Expression
    , minlength : Elm.Expression -> Elm.Expression
    , method : Elm.Expression -> Elm.Expression
    , multiple : Elm.Expression -> Elm.Expression
    , name : Elm.Expression -> Elm.Expression
    , novalidate : Elm.Expression -> Elm.Expression
    , pattern : Elm.Expression -> Elm.Expression
    , readonly : Elm.Expression -> Elm.Expression
    , required : Elm.Expression -> Elm.Expression
    , size : Elm.Expression -> Elm.Expression
    , for : Elm.Expression -> Elm.Expression
    , form : Elm.Expression -> Elm.Expression
    , max : Elm.Expression -> Elm.Expression
    , min : Elm.Expression -> Elm.Expression
    , step : Elm.Expression -> Elm.Expression
    , cols : Elm.Expression -> Elm.Expression
    , rows : Elm.Expression -> Elm.Expression
    , wrap : Elm.Expression -> Elm.Expression
    , href : Elm.Expression -> Elm.Expression
    , target : Elm.Expression -> Elm.Expression
    , download : Elm.Expression -> Elm.Expression
    , hreflang : Elm.Expression -> Elm.Expression
    , media : Elm.Expression -> Elm.Expression
    , ping : Elm.Expression -> Elm.Expression
    , rel : Elm.Expression -> Elm.Expression
    , ismap : Elm.Expression -> Elm.Expression
    , usemap : Elm.Expression -> Elm.Expression
    , shape : Elm.Expression -> Elm.Expression
    , coords : Elm.Expression -> Elm.Expression
    , src : Elm.Expression -> Elm.Expression
    , height : Elm.Expression -> Elm.Expression
    , width : Elm.Expression -> Elm.Expression
    , alt : Elm.Expression -> Elm.Expression
    , autoplay : Elm.Expression -> Elm.Expression
    , controls : Elm.Expression -> Elm.Expression
    , loop : Elm.Expression -> Elm.Expression
    , preload : Elm.Expression -> Elm.Expression
    , poster : Elm.Expression -> Elm.Expression
    , default : Elm.Expression -> Elm.Expression
    , kind : Elm.Expression -> Elm.Expression
    , srclang : Elm.Expression -> Elm.Expression
    , sandbox : Elm.Expression -> Elm.Expression
    , srcdoc : Elm.Expression -> Elm.Expression
    , reversed : Elm.Expression -> Elm.Expression
    , start : Elm.Expression -> Elm.Expression
    , align : Elm.Expression -> Elm.Expression
    , colspan : Elm.Expression -> Elm.Expression
    , rowspan : Elm.Expression -> Elm.Expression
    , headers : Elm.Expression -> Elm.Expression
    , scope : Elm.Expression -> Elm.Expression
    , accesskey : Elm.Expression -> Elm.Expression
    , contenteditable : Elm.Expression -> Elm.Expression
    , contextmenu : Elm.Expression -> Elm.Expression
    , dir : Elm.Expression -> Elm.Expression
    , draggable : Elm.Expression -> Elm.Expression
    , dropzone : Elm.Expression -> Elm.Expression
    , itemprop : Elm.Expression -> Elm.Expression
    , lang : Elm.Expression -> Elm.Expression
    , spellcheck : Elm.Expression -> Elm.Expression
    , tabindex : Elm.Expression -> Elm.Expression
    , cite : Elm.Expression -> Elm.Expression
    , datetime : Elm.Expression -> Elm.Expression
    , pubdate : Elm.Expression -> Elm.Expression
    , manifest : Elm.Expression -> Elm.Expression
    }
call_ =
    { style =
        \styleArg_ styleArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "style"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string, Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ styleArg_, styleArg_0 ]
    , property =
        \propertyArg_ propertyArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "property"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string
                                  , Type.namedWith
                                      [ "Json", "Encode" ]
                                      "Value"
                                      []
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ propertyArg_, propertyArg_0 ]
    , attribute =
        \attributeArg_ attributeArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "attribute"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string, Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ attributeArg_, attributeArg_0 ]
    , map =
        \mapArg_ mapArg_0 ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "map"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.function
                                      [ Type.var "a" ]
                                      (Type.var "msg")
                                  , Type.namedWith
                                      [ "Html" ]
                                      "Attribute"
                                      [ Type.var "a" ]
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ mapArg_, mapArg_0 ]
    , class =
        \classArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "class"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ classArg_ ]
    , classList =
        \classListArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "classList"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.list (Type.tuple Type.string Type.bool)
                                  ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ classListArg_ ]
    , id =
        \idArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "id"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ idArg_ ]
    , title =
        \titleArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "title"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ titleArg_ ]
    , hidden =
        \hiddenArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "hidden"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.bool ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ hiddenArg_ ]
    , type_ =
        \type_Arg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "type_"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ type_Arg_ ]
    , value =
        \valueArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "value"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ valueArg_ ]
    , checked =
        \checkedArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "checked"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.bool ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ checkedArg_ ]
    , placeholder =
        \placeholderArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "placeholder"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ placeholderArg_ ]
    , selected =
        \selectedArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "selected"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.bool ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ selectedArg_ ]
    , accept =
        \acceptArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "accept"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ acceptArg_ ]
    , acceptCharset =
        \acceptCharsetArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "acceptCharset"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ acceptCharsetArg_ ]
    , action =
        \actionArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "action"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ actionArg_ ]
    , autocomplete =
        \autocompleteArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "autocomplete"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.bool ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ autocompleteArg_ ]
    , autofocus =
        \autofocusArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "autofocus"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.bool ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ autofocusArg_ ]
    , disabled =
        \disabledArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "disabled"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.bool ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ disabledArg_ ]
    , enctype =
        \enctypeArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "enctype"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ enctypeArg_ ]
    , list =
        \listArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "list"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ listArg_ ]
    , maxlength =
        \maxlengthArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "maxlength"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.int ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ maxlengthArg_ ]
    , minlength =
        \minlengthArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "minlength"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.int ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ minlengthArg_ ]
    , method =
        \methodArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "method"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ methodArg_ ]
    , multiple =
        \multipleArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "multiple"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.bool ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ multipleArg_ ]
    , name =
        \nameArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "name"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ nameArg_ ]
    , novalidate =
        \novalidateArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "novalidate"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.bool ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ novalidateArg_ ]
    , pattern =
        \patternArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "pattern"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ patternArg_ ]
    , readonly =
        \readonlyArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "readonly"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.bool ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ readonlyArg_ ]
    , required =
        \requiredArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "required"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.bool ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ requiredArg_ ]
    , size =
        \sizeArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "size"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.int ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ sizeArg_ ]
    , for =
        \forArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "for"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ forArg_ ]
    , form =
        \formArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "form"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ formArg_ ]
    , max =
        \maxArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "max"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ maxArg_ ]
    , min =
        \minArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "min"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ minArg_ ]
    , step =
        \stepArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "step"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ stepArg_ ]
    , cols =
        \colsArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "cols"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.int ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ colsArg_ ]
    , rows =
        \rowsArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "rows"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.int ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ rowsArg_ ]
    , wrap =
        \wrapArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "wrap"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ wrapArg_ ]
    , href =
        \hrefArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "href"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ hrefArg_ ]
    , target =
        \targetArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "target"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ targetArg_ ]
    , download =
        \downloadArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "download"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ downloadArg_ ]
    , hreflang =
        \hreflangArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "hreflang"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ hreflangArg_ ]
    , media =
        \mediaArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "media"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ mediaArg_ ]
    , ping =
        \pingArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "ping"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ pingArg_ ]
    , rel =
        \relArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "rel"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ relArg_ ]
    , ismap =
        \ismapArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "ismap"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.bool ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ ismapArg_ ]
    , usemap =
        \usemapArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "usemap"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ usemapArg_ ]
    , shape =
        \shapeArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "shape"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ shapeArg_ ]
    , coords =
        \coordsArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "coords"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ coordsArg_ ]
    , src =
        \srcArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "src"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ srcArg_ ]
    , height =
        \heightArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "height"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.int ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ heightArg_ ]
    , width =
        \widthArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "width"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.int ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ widthArg_ ]
    , alt =
        \altArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "alt"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ altArg_ ]
    , autoplay =
        \autoplayArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "autoplay"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.bool ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ autoplayArg_ ]
    , controls =
        \controlsArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "controls"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.bool ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ controlsArg_ ]
    , loop =
        \loopArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "loop"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.bool ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ loopArg_ ]
    , preload =
        \preloadArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "preload"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ preloadArg_ ]
    , poster =
        \posterArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "poster"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ posterArg_ ]
    , default =
        \defaultArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "default"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.bool ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ defaultArg_ ]
    , kind =
        \kindArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "kind"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ kindArg_ ]
    , srclang =
        \srclangArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "srclang"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ srclangArg_ ]
    , sandbox =
        \sandboxArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "sandbox"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ sandboxArg_ ]
    , srcdoc =
        \srcdocArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "srcdoc"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ srcdocArg_ ]
    , reversed =
        \reversedArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "reversed"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.bool ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ reversedArg_ ]
    , start =
        \startArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "start"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.int ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ startArg_ ]
    , align =
        \alignArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "align"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ alignArg_ ]
    , colspan =
        \colspanArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "colspan"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.int ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ colspanArg_ ]
    , rowspan =
        \rowspanArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "rowspan"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.int ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ rowspanArg_ ]
    , headers =
        \headersArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "headers"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ headersArg_ ]
    , scope =
        \scopeArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "scope"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ scopeArg_ ]
    , accesskey =
        \accesskeyArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "accesskey"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.char ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ accesskeyArg_ ]
    , contenteditable =
        \contenteditableArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "contenteditable"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.bool ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ contenteditableArg_ ]
    , contextmenu =
        \contextmenuArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "contextmenu"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ contextmenuArg_ ]
    , dir =
        \dirArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "dir"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ dirArg_ ]
    , draggable =
        \draggableArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "draggable"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ draggableArg_ ]
    , dropzone =
        \dropzoneArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "dropzone"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ dropzoneArg_ ]
    , itemprop =
        \itempropArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "itemprop"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ itempropArg_ ]
    , lang =
        \langArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "lang"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ langArg_ ]
    , spellcheck =
        \spellcheckArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "spellcheck"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.bool ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ spellcheckArg_ ]
    , tabindex =
        \tabindexArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "tabindex"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.int ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ tabindexArg_ ]
    , cite =
        \citeArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "cite"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ citeArg_ ]
    , datetime =
        \datetimeArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "datetime"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ datetimeArg_ ]
    , pubdate =
        \pubdateArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "pubdate"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ pubdateArg_ ]
    , manifest =
        \manifestArg_ ->
            Elm.apply
                (Elm.value
                     { importFrom = [ "Html", "Attributes" ]
                     , name = "manifest"
                     , annotation =
                         Just
                             (Type.function
                                  [ Type.string ]
                                  (Type.namedWith
                                       [ "Html" ]
                                       "Attribute"
                                       [ Type.var "msg" ]
                                  )
                             )
                     }
                )
                [ manifestArg_ ]
    }


values_ :
    { style : Elm.Expression
    , property : Elm.Expression
    , attribute : Elm.Expression
    , map : Elm.Expression
    , class : Elm.Expression
    , classList : Elm.Expression
    , id : Elm.Expression
    , title : Elm.Expression
    , hidden : Elm.Expression
    , type_ : Elm.Expression
    , value : Elm.Expression
    , checked : Elm.Expression
    , placeholder : Elm.Expression
    , selected : Elm.Expression
    , accept : Elm.Expression
    , acceptCharset : Elm.Expression
    , action : Elm.Expression
    , autocomplete : Elm.Expression
    , autofocus : Elm.Expression
    , disabled : Elm.Expression
    , enctype : Elm.Expression
    , list : Elm.Expression
    , maxlength : Elm.Expression
    , minlength : Elm.Expression
    , method : Elm.Expression
    , multiple : Elm.Expression
    , name : Elm.Expression
    , novalidate : Elm.Expression
    , pattern : Elm.Expression
    , readonly : Elm.Expression
    , required : Elm.Expression
    , size : Elm.Expression
    , for : Elm.Expression
    , form : Elm.Expression
    , max : Elm.Expression
    , min : Elm.Expression
    , step : Elm.Expression
    , cols : Elm.Expression
    , rows : Elm.Expression
    , wrap : Elm.Expression
    , href : Elm.Expression
    , target : Elm.Expression
    , download : Elm.Expression
    , hreflang : Elm.Expression
    , media : Elm.Expression
    , ping : Elm.Expression
    , rel : Elm.Expression
    , ismap : Elm.Expression
    , usemap : Elm.Expression
    , shape : Elm.Expression
    , coords : Elm.Expression
    , src : Elm.Expression
    , height : Elm.Expression
    , width : Elm.Expression
    , alt : Elm.Expression
    , autoplay : Elm.Expression
    , controls : Elm.Expression
    , loop : Elm.Expression
    , preload : Elm.Expression
    , poster : Elm.Expression
    , default : Elm.Expression
    , kind : Elm.Expression
    , srclang : Elm.Expression
    , sandbox : Elm.Expression
    , srcdoc : Elm.Expression
    , reversed : Elm.Expression
    , start : Elm.Expression
    , align : Elm.Expression
    , colspan : Elm.Expression
    , rowspan : Elm.Expression
    , headers : Elm.Expression
    , scope : Elm.Expression
    , accesskey : Elm.Expression
    , contenteditable : Elm.Expression
    , contextmenu : Elm.Expression
    , dir : Elm.Expression
    , draggable : Elm.Expression
    , dropzone : Elm.Expression
    , itemprop : Elm.Expression
    , lang : Elm.Expression
    , spellcheck : Elm.Expression
    , tabindex : Elm.Expression
    , cite : Elm.Expression
    , datetime : Elm.Expression
    , pubdate : Elm.Expression
    , manifest : Elm.Expression
    }
values_ =
    { style =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "style"
            , annotation =
                Just
                    (Type.function
                         [ Type.string, Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , property =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "property"
            , annotation =
                Just
                    (Type.function
                         [ Type.string
                         , Type.namedWith [ "Json", "Encode" ] "Value" []
                         ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , attribute =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "attribute"
            , annotation =
                Just
                    (Type.function
                         [ Type.string, Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , map =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "map"
            , annotation =
                Just
                    (Type.function
                         [ Type.function [ Type.var "a" ] (Type.var "msg")
                         , Type.namedWith
                             [ "Html" ]
                             "Attribute"
                             [ Type.var "a" ]
                         ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , class =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "class"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , classList =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "classList"
            , annotation =
                Just
                    (Type.function
                         [ Type.list (Type.tuple Type.string Type.bool) ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , id =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "id"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , title =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "title"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , hidden =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "hidden"
            , annotation =
                Just
                    (Type.function
                         [ Type.bool ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , type_ =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "type_"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , value =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "value"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , checked =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "checked"
            , annotation =
                Just
                    (Type.function
                         [ Type.bool ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , placeholder =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "placeholder"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , selected =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "selected"
            , annotation =
                Just
                    (Type.function
                         [ Type.bool ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , accept =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "accept"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , acceptCharset =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "acceptCharset"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , action =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "action"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , autocomplete =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "autocomplete"
            , annotation =
                Just
                    (Type.function
                         [ Type.bool ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , autofocus =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "autofocus"
            , annotation =
                Just
                    (Type.function
                         [ Type.bool ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , disabled =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "disabled"
            , annotation =
                Just
                    (Type.function
                         [ Type.bool ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , enctype =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "enctype"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , list =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "list"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , maxlength =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "maxlength"
            , annotation =
                Just
                    (Type.function
                         [ Type.int ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , minlength =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "minlength"
            , annotation =
                Just
                    (Type.function
                         [ Type.int ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , method =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "method"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , multiple =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "multiple"
            , annotation =
                Just
                    (Type.function
                         [ Type.bool ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , name =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "name"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , novalidate =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "novalidate"
            , annotation =
                Just
                    (Type.function
                         [ Type.bool ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , pattern =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "pattern"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , readonly =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "readonly"
            , annotation =
                Just
                    (Type.function
                         [ Type.bool ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , required =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "required"
            , annotation =
                Just
                    (Type.function
                         [ Type.bool ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , size =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "size"
            , annotation =
                Just
                    (Type.function
                         [ Type.int ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , for =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "for"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , form =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "form"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , max =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "max"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , min =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "min"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , step =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "step"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , cols =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "cols"
            , annotation =
                Just
                    (Type.function
                         [ Type.int ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , rows =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "rows"
            , annotation =
                Just
                    (Type.function
                         [ Type.int ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , wrap =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "wrap"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , href =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "href"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , target =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "target"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , download =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "download"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , hreflang =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "hreflang"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , media =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "media"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , ping =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "ping"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , rel =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "rel"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , ismap =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "ismap"
            , annotation =
                Just
                    (Type.function
                         [ Type.bool ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , usemap =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "usemap"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , shape =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "shape"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , coords =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "coords"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , src =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "src"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , height =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "height"
            , annotation =
                Just
                    (Type.function
                         [ Type.int ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , width =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "width"
            , annotation =
                Just
                    (Type.function
                         [ Type.int ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , alt =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "alt"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , autoplay =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "autoplay"
            , annotation =
                Just
                    (Type.function
                         [ Type.bool ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , controls =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "controls"
            , annotation =
                Just
                    (Type.function
                         [ Type.bool ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , loop =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "loop"
            , annotation =
                Just
                    (Type.function
                         [ Type.bool ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , preload =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "preload"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , poster =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "poster"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , default =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "default"
            , annotation =
                Just
                    (Type.function
                         [ Type.bool ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , kind =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "kind"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , srclang =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "srclang"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , sandbox =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "sandbox"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , srcdoc =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "srcdoc"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , reversed =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "reversed"
            , annotation =
                Just
                    (Type.function
                         [ Type.bool ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , start =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "start"
            , annotation =
                Just
                    (Type.function
                         [ Type.int ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , align =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "align"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , colspan =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "colspan"
            , annotation =
                Just
                    (Type.function
                         [ Type.int ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , rowspan =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "rowspan"
            , annotation =
                Just
                    (Type.function
                         [ Type.int ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , headers =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "headers"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , scope =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "scope"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , accesskey =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "accesskey"
            , annotation =
                Just
                    (Type.function
                         [ Type.char ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , contenteditable =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "contenteditable"
            , annotation =
                Just
                    (Type.function
                         [ Type.bool ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , contextmenu =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "contextmenu"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , dir =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "dir"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , draggable =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "draggable"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , dropzone =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "dropzone"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , itemprop =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "itemprop"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , lang =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "lang"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , spellcheck =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "spellcheck"
            , annotation =
                Just
                    (Type.function
                         [ Type.bool ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , tabindex =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "tabindex"
            , annotation =
                Just
                    (Type.function
                         [ Type.int ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , cite =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "cite"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , datetime =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "datetime"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , pubdate =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "pubdate"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    , manifest =
        Elm.value
            { importFrom = [ "Html", "Attributes" ]
            , name = "manifest"
            , annotation =
                Just
                    (Type.function
                         [ Type.string ]
                         (Type.namedWith
                              [ "Html" ]
                              "Attribute"
                              [ Type.var "msg" ]
                         )
                    )
            }
    }