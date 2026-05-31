module HeroUI.NumberField.Stories (basic) where

import Prelude hiding (div)

import React.Basic (JSX)
import HeroUI.NumberField as NumberField
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import Yoga.React.DOM.Internal (text)
import YogaStories.Story (story)

mkNumberField :: { defaultValue :: Number } -> JSX
mkNumberField = component "NumberFieldStory" \props -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg w-60" }
    [ NumberField.numberField { defaultValue: props.defaultValue, minValue: 0.0, maxValue: 100.0, step: 1.0 }
        [ NumberField.numberFieldGroup {}
            [ NumberField.numberFieldDecrementButton {} (text "−")
            , NumberField.numberFieldInput {} ([] :: Array JSX)
            , NumberField.numberFieldIncrementButton {} (text "+")
            ]
        ]
    ]

basic :: JSX
basic = story "basic" mkNumberField { defaultValue: 5.0 }
