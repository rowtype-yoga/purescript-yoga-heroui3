module HeroUI.Input.Stories (basic) where

import Prelude hiding (div)

import Data.Generic.Rep (class Generic)
import React.Basic (JSX)
import HeroUI.Input as Input
import HeroUI.Types as T
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import YogaStories.Controls (enum)
import YogaStories.Story (story)

data Variant = Primary | Secondary

derive instance Generic Variant _

toVariant :: Variant -> T.FieldVariant
toVariant = case _ of
  Primary -> T.Primary
  Secondary -> T.Secondary

mkInput :: { placeholder :: String, variant :: Variant } -> JSX
mkInput = component "InputStory" \props -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg w-72" }
    [ Input.textField { variant: toVariant props.variant }
        [ Input.input { placeholder: props.placeholder, type: Input.InputTypeText } ([] :: Array JSX) ]
    ]

basic :: JSX
basic = story "basic" mkInput { placeholder: "Type here…", variant: enum Primary }
