module HeroUI.Chip.Stories (basic) where

import Prelude hiding (div)

import Data.Generic.Rep (class Generic)
import React.Basic (JSX)
import HeroUI.Chip as Chip
import HeroUI.Types as T
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import Yoga.React.DOM.Internal (text)
import YogaStories.Controls (enum)
import YogaStories.Story (story)

data Variant = Primary | Secondary | Tertiary | Soft

derive instance Generic Variant _

toVariant :: Variant -> Chip.Variant
toVariant = case _ of
  Primary -> Chip.Primary
  Secondary -> Chip.Secondary
  Tertiary -> Chip.Tertiary
  Soft -> Chip.Soft

mkChip :: { label :: String, variant :: Variant } -> JSX
mkChip = component "ChipStory" \props -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg flex items-center gap-4" }
    [ Chip.chip { color: T.Accent, size: T.Md, variant: toVariant props.variant } (text props.label) ]

basic :: JSX
basic = story "basic" mkChip { label: "new", variant: enum Soft }
