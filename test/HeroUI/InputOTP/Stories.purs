module HeroUI.InputOTP.Stories (basic) where

import Prelude hiding (div)

import Data.Array ((..))
import React.Basic (JSX)
import HeroUI.InputOTP as InputOTP
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import YogaStories.Story (story)

mkInputOTP :: { length :: Int } -> JSX
mkInputOTP = component "InputOTPStory" \props -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg" }
    [ InputOTP.inputOTP { maxLength: props.length }
        [ InputOTP.inputOTPGroup {}
            (map (\i -> InputOTP.inputOTPSlot { index: i } ([] :: Array JSX)) (0 .. (props.length - 1)))
        ]
    ]

basic :: JSX
basic = story "basic" mkInputOTP { length: 4 }
