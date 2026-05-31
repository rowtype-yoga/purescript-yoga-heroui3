module HeroUI.Tabs.Stories (basic) where

import Prelude hiding (div)

import Data.Generic.Rep (class Generic)
import React.Basic (JSX)
import HeroUI.Tabs as Tabs
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import Yoga.React.DOM.Internal (text)
import YogaStories.Controls (enum)
import YogaStories.Story (story)

data Variant = Primary | Secondary

derive instance Generic Variant _

toVariant :: Variant -> Tabs.Variant
toVariant = case _ of
  Primary -> Tabs.Primary
  Secondary -> Tabs.Secondary

mkTabs :: { variant :: Variant } -> JSX
mkTabs = component "TabsStory" \props -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg w-96" }
    [ Tabs.tabs { variant: toVariant props.variant, defaultSelectedKey: "photos" }
        [ Tabs.tabList {}
            [ Tabs.tab { id: "photos" } (text "Photos")
            , Tabs.tab { id: "music" } (text "Music")
            ]
        , Tabs.tabPanel { id: "photos" } (text "Photos panel")
        , Tabs.tabPanel { id: "music" } (text "Music panel")
        ]
    ]

basic :: JSX
basic = story "basic" mkTabs { variant: enum Primary }
