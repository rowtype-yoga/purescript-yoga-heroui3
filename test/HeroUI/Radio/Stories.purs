module HeroUI.Radio.Stories (basic) where

import Prelude hiding (div)

import React.Basic (JSX)
import HeroUI.Radio as Radio
import HeroUI.Types as T
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import YogaStories.Story (story)

mkRadio :: { defaultValue :: String } -> JSX
mkRadio = component "RadioStory" \props -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg" }
    [ Radio.radioGroup { defaultValue: props.defaultValue, orientation: T.Vertical, variant: T.Primary }
        [ Radio.radio { value: "a" } "Option A"
        , Radio.radio { value: "b" } "Option B"
        , Radio.radio { value: "c" } "Option C"
        ]
    ]

basic :: JSX
basic = story "basic" mkRadio { defaultValue: "a" }
