module HeroUI.Button.Stories (primary, variants) where

import Prelude hiding (div)

import Data.Generic.Rep (class Generic)
import React.Basic (JSX)
import HeroUI.Button as Btn
import HeroUI.Types as T
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import Yoga.React.DOM.Internal (text)
import YogaStories.Controls (enum)
import YogaStories.Story (story)

-- | v3 merges v2's `color` + `variant` into a single `variant`.
data Variant = Primary | Secondary | Tertiary | Ghost | Outline | Danger | DangerSoft

derive instance Generic Variant _

data Size = Small | Medium | Large

derive instance Generic Size _

toVariant :: Variant -> Btn.Variant
toVariant = case _ of
  Primary -> Btn.Primary
  Secondary -> Btn.Secondary
  Tertiary -> Btn.Tertiary
  Ghost -> Btn.Ghost
  Outline -> Btn.Outline
  Danger -> Btn.Danger
  DangerSoft -> Btn.DangerSoft

toSize :: Size -> T.Size
toSize = case _ of
  Small -> T.Sm
  Medium -> T.Md
  Large -> T.Lg

mkButton :: { label :: String, variant :: Variant, size :: Size, isDisabled :: Boolean } -> JSX
mkButton = component "ButtonStory" \props -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg flex items-center gap-4" }
    [ Btn.button
        { variant: toVariant props.variant
        , size: toSize props.size
        , isDisabled: props.isDisabled
        }
        (text props.label)
    ]

primary :: JSX
primary = story "primary" mkButton
  { label: "Click me"
  , variant: enum Primary
  , size: enum Medium
  , isDisabled: false
  }

variants :: JSX
variants = story "variants" mkButton
  { label: "Button"
  , variant: enum Outline
  , size: enum Large
  , isDisabled: false
  }
