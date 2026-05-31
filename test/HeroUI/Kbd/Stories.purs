module HeroUI.Kbd.Stories (basic) where

import Prelude hiding (div)

import React.Basic (JSX)
import HeroUI.Kbd as Kbd
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import Yoga.React.DOM.Internal (text)
import YogaStories.Story (story)

mkKbd :: { label :: String } -> JSX
mkKbd = component "KbdStory" \props -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg flex items-center gap-2" }
    [ Kbd.kbd { variant: Kbd.Default }
        [ Kbd.kbdAbbr { keyValue: Kbd.Command } ([] :: Array JSX)
        , Kbd.kbdContent {} (text props.label)
        ]
    ]

basic :: JSX
basic = story "basic" mkKbd { label: "K" }
