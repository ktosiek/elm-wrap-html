module HelloWorld exposing (..)

import Html
import Wrapper


hello : String
hello =
    "World!"


text : String -> ( Html.Html msg, Sub msg )
text raw =
    ( Html.text raw, Sub.none )


h1 :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
h1 attrs elems =
    Wrapper.wrap Html.h1 attrs elems


h2 :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
h2 attrs elems =
    Wrapper.wrap Html.h2 attrs elems


h3 :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
h3 attrs elems =
    Wrapper.wrap Html.h3 attrs elems


h4 :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
h4 attrs elems =
    Wrapper.wrap Html.h4 attrs elems


h5 :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
h5 attrs elems =
    Wrapper.wrap Html.h5 attrs elems


h6 :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
h6 attrs elems =
    Wrapper.wrap Html.h6 attrs elems


div :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
div attrs elems =
    Wrapper.wrap Html.div attrs elems


p :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
p attrs elems =
    Wrapper.wrap Html.p attrs elems


hr :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
hr attrs elems =
    Wrapper.wrap Html.hr attrs elems


pre :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
pre attrs elems =
    Wrapper.wrap Html.pre attrs elems


blockquote :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
blockquote attrs elems =
    Wrapper.wrap Html.blockquote attrs elems


span :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
span attrs elems =
    Wrapper.wrap Html.span attrs elems


a :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
a attrs elems =
    Wrapper.wrap Html.a attrs elems


code :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
code attrs elems =
    Wrapper.wrap Html.code attrs elems


em :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
em attrs elems =
    Wrapper.wrap Html.em attrs elems


strong :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
strong attrs elems =
    Wrapper.wrap Html.strong attrs elems


i :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
i attrs elems =
    Wrapper.wrap Html.i attrs elems


b :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
b attrs elems =
    Wrapper.wrap Html.b attrs elems


u :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
u attrs elems =
    Wrapper.wrap Html.u attrs elems


sub :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
sub attrs elems =
    Wrapper.wrap Html.sub attrs elems


sup :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
sup attrs elems =
    Wrapper.wrap Html.sup attrs elems


br :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
br attrs elems =
    Wrapper.wrap Html.br attrs elems


ol :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
ol attrs elems =
    Wrapper.wrap Html.ol attrs elems


ul :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
ul attrs elems =
    Wrapper.wrap Html.ul attrs elems


li :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
li attrs elems =
    Wrapper.wrap Html.li attrs elems


dl :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
dl attrs elems =
    Wrapper.wrap Html.dl attrs elems


dt :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
dt attrs elems =
    Wrapper.wrap Html.dt attrs elems


dd :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
dd attrs elems =
    Wrapper.wrap Html.dd attrs elems


img :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
img attrs elems =
    Wrapper.wrap Html.img attrs elems


iframe :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
iframe attrs elems =
    Wrapper.wrap Html.iframe attrs elems


canvas :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
canvas attrs elems =
    Wrapper.wrap Html.canvas attrs elems


math :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
math attrs elems =
    Wrapper.wrap Html.math attrs elems


form :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
form attrs elems =
    Wrapper.wrap Html.form attrs elems


input :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
input attrs elems =
    Wrapper.wrap Html.input attrs elems


textarea :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
textarea attrs elems =
    Wrapper.wrap Html.textarea attrs elems


button :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
button attrs elems =
    Wrapper.wrap Html.button attrs elems


select :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
select attrs elems =
    Wrapper.wrap Html.select attrs elems


option :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
option attrs elems =
    Wrapper.wrap Html.option attrs elems


section :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
section attrs elems =
    Wrapper.wrap Html.section attrs elems


nav :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
nav attrs elems =
    Wrapper.wrap Html.nav attrs elems


article :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
article attrs elems =
    Wrapper.wrap Html.article attrs elems


aside :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
aside attrs elems =
    Wrapper.wrap Html.aside attrs elems


header :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
header attrs elems =
    Wrapper.wrap Html.header attrs elems


footer :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
footer attrs elems =
    Wrapper.wrap Html.footer attrs elems


address :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
address attrs elems =
    Wrapper.wrap Html.address attrs elems


main_ :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
main_ attrs elems =
    Wrapper.wrap Html.main_ attrs elems


figure :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
figure attrs elems =
    Wrapper.wrap Html.figure attrs elems


figcaption :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
figcaption attrs elems =
    Wrapper.wrap Html.figcaption attrs elems


table :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
table attrs elems =
    Wrapper.wrap Html.table attrs elems


caption :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
caption attrs elems =
    Wrapper.wrap Html.caption attrs elems


colgroup :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
colgroup attrs elems =
    Wrapper.wrap Html.colgroup attrs elems


col :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
col attrs elems =
    Wrapper.wrap Html.col attrs elems


tbody :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
tbody attrs elems =
    Wrapper.wrap Html.tbody attrs elems


thead :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
thead attrs elems =
    Wrapper.wrap Html.thead attrs elems


tfoot :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
tfoot attrs elems =
    Wrapper.wrap Html.tfoot attrs elems


tr :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
tr attrs elems =
    Wrapper.wrap Html.tr attrs elems


td :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
td attrs elems =
    Wrapper.wrap Html.td attrs elems


th :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
th attrs elems =
    Wrapper.wrap Html.th attrs elems


fieldset :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
fieldset attrs elems =
    Wrapper.wrap Html.fieldset attrs elems


legend :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
legend attrs elems =
    Wrapper.wrap Html.legend attrs elems


label :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
label attrs elems =
    Wrapper.wrap Html.label attrs elems


datalist :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
datalist attrs elems =
    Wrapper.wrap Html.datalist attrs elems


optgroup :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
optgroup attrs elems =
    Wrapper.wrap Html.optgroup attrs elems


output :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
output attrs elems =
    Wrapper.wrap Html.output attrs elems


progress :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
progress attrs elems =
    Wrapper.wrap Html.progress attrs elems


meter :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
meter attrs elems =
    Wrapper.wrap Html.meter attrs elems


audio :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
audio attrs elems =
    Wrapper.wrap Html.audio attrs elems


video :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
video attrs elems =
    Wrapper.wrap Html.video attrs elems


source :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
source attrs elems =
    Wrapper.wrap Html.source attrs elems


track :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
track attrs elems =
    Wrapper.wrap Html.track attrs elems


embed :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
embed attrs elems =
    Wrapper.wrap Html.embed attrs elems


object :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
object attrs elems =
    Wrapper.wrap Html.object attrs elems


param :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
param attrs elems =
    Wrapper.wrap Html.param attrs elems


ins :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
ins attrs elems =
    Wrapper.wrap Html.ins attrs elems


del :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
del attrs elems =
    Wrapper.wrap Html.del attrs elems


small :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
small attrs elems =
    Wrapper.wrap Html.small attrs elems


cite :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
cite attrs elems =
    Wrapper.wrap Html.cite attrs elems


dfn :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
dfn attrs elems =
    Wrapper.wrap Html.dfn attrs elems


abbr :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
abbr attrs elems =
    Wrapper.wrap Html.abbr attrs elems


time :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
time attrs elems =
    Wrapper.wrap Html.time attrs elems


var :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
var attrs elems =
    Wrapper.wrap Html.var attrs elems


samp :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
samp attrs elems =
    Wrapper.wrap Html.samp attrs elems


kbd :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
kbd attrs elems =
    Wrapper.wrap Html.kbd attrs elems


s :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
s attrs elems =
    Wrapper.wrap Html.s attrs elems


q :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
q attrs elems =
    Wrapper.wrap Html.q attrs elems


mark :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
mark attrs elems =
    Wrapper.wrap Html.mark attrs elems


ruby :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
ruby attrs elems =
    Wrapper.wrap Html.ruby attrs elems


rt :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
rt attrs elems =
    Wrapper.wrap Html.rt attrs elems


rp :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
rp attrs elems =
    Wrapper.wrap Html.rp attrs elems


bdi :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
bdi attrs elems =
    Wrapper.wrap Html.bdi attrs elems


bdo :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
bdo attrs elems =
    Wrapper.wrap Html.bdo attrs elems


wbr :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
wbr attrs elems =
    Wrapper.wrap Html.wbr attrs elems


details :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
details attrs elems =
    Wrapper.wrap Html.details attrs elems


summary :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
summary attrs elems =
    Wrapper.wrap Html.summary attrs elems


menuitem :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
menuitem attrs elems =
    Wrapper.wrap Html.menuitem attrs elems


menu :
    List (Html.Attribute msg)
    -> List (Wrapper.WithSubs (Html.Html msg) msg)
    -> Wrapper.WithSubs (Html.Html msg) msg
menu attrs elems =
    Wrapper.wrap Html.menu attrs elems