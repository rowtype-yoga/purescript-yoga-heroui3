module HeroUI.Spinner.Stories (basic) where

import Prelude hiding (div)

import Data.Generic.Rep (class Generic)
import React.Basic (JSX)
import HeroUI.Spinner as Spinner
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import YogaStories.Controls (enum)
import YogaStories.Story (story)

data Color = Accent | Current | Success | Warning | Danger

derive instance Generic Color _

toColor :: Color -> Spinner.Color
toColor = case _ of
  Accent -> Spinner.Accent
  Current -> Spinner.Current
  Success -> Spinner.Success
  Warning -> Spinner.Warning
  Danger -> Spinner.Danger

mkSpinner :: { color :: Color } -> JSX
mkSpinner = component "SpinnerStory" \props -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg flex items-center gap-4" }
    [ Spinner.spinner { color: toColor props.color, size: Spinner.Lg } ([] :: Array JSX) ]

basic :: JSX
basic = story "basic" mkSpinner { color: enum Accent }
