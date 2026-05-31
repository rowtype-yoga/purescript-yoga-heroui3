module HeroUI.Card.Stories (basic) where

import Prelude hiding (div)

import Data.Generic.Rep (class Generic)
import React.Basic (JSX)
import HeroUI.Card as Card
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import YogaStories.Controls (enum)
import YogaStories.Story (story)

data Variant = Default | Secondary | Tertiary | Transparent

derive instance Generic Variant _

toVariant :: Variant -> Card.Variant
toVariant = case _ of
  Default -> Card.Default
  Secondary -> Card.Secondary
  Tertiary -> Card.Tertiary
  Transparent -> Card.Transparent

mkCard :: { title :: String, body :: String, variant :: Variant } -> JSX
mkCard = component "CardStory" \props -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg" }
    [ Card.card { variant: toVariant props.variant, className: "max-w-sm" }
        [ Card.cardHeader {} [ Card.cardTitle {} props.title ]
        , Card.cardContent {} props.body
        , Card.cardFooter {} "Footer"
        ]
    ]

basic :: JSX
basic = story "basic" mkCard
  { title: "Card title", body: "Some descriptive body text.", variant: enum Default }
