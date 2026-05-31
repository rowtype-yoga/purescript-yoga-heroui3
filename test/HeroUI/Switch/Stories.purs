module HeroUI.Switch.Stories (basic) where

import Prelude hiding (div)

import React.Basic (JSX)
import HeroUI.Switch as Switch
import HeroUI.Types as T
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import Yoga.React.DOM.Internal (text)
import YogaStories.Story (story)

mkSwitch :: { label :: String, defaultSelected :: Boolean } -> JSX
mkSwitch = component "SwitchStory" \props -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg" }
    [ Switch.switch_ { defaultSelected: props.defaultSelected, size: T.Md } (text props.label) ]

basic :: JSX
basic = story "basic" mkSwitch { label: "Wi-Fi", defaultSelected: true }
