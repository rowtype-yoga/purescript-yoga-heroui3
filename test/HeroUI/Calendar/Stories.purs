module HeroUI.Calendar.Stories (basic) where

import Prelude hiding (div)

import React.Basic (JSX)
import HeroUI.Calendar as Calendar
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import YogaStories.Story (story)

mkCalendar :: {} -> JSX
mkCalendar = component "CalendarStory" \(_ :: {}) -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg" }
    [ Calendar.calendar {} ([] :: Array JSX) ]

basic :: JSX
basic = story "basic" mkCalendar {}
