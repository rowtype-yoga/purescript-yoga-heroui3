module HeroUI.DatePicker.Stories (basic) where

import Prelude hiding (div)

import React.Basic (JSX)
import HeroUI.DatePicker as DatePicker
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import YogaStories.Story (story)

mkDatePicker :: {} -> JSX
mkDatePicker = component "DatePickerStory" \(_ :: {}) -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg w-72" }
    [ DatePicker.datePicker {}
        [ DatePicker.datePickerTrigger {} "Pick a date"
        , DatePicker.datePickerPopover {} ([] :: Array JSX)
        ]
    ]

basic :: JSX
basic = story "basic" mkDatePicker {}
