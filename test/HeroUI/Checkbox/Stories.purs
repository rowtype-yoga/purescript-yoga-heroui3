module HeroUI.Checkbox.Stories (basic) where

import Prelude hiding (div)

import React.Basic (JSX)
import HeroUI.Checkbox as Checkbox
import HeroUI.Types as T
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import YogaStories.Story (story)

mkCheckbox :: { label :: String, defaultSelected :: Boolean } -> JSX
mkCheckbox = component "CheckboxStory" \props -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg" }
    [ Checkbox.checkbox { defaultSelected: props.defaultSelected, variant: T.Primary } props.label ]

basic :: JSX
basic = story "basic" mkCheckbox { label: "Accept terms", defaultSelected: false }
