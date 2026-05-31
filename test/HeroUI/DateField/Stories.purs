module HeroUI.DateField.Stories (basic) where

import Prelude hiding (div)

import React.Basic (JSX)
import HeroUI.DateField as DateField
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import YogaStories.Story (story)

mkDateField :: {} -> JSX
mkDateField = component "DateFieldStory" \(_ :: {}) -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg w-72" }
    [ DateField.dateField { granularity: DateField.Day } ([] :: Array JSX) ]

basic :: JSX
basic = story "basic" mkDateField {}
