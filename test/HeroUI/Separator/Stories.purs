module HeroUI.Separator.Stories (basic) where

import Prelude hiding (div)

import React.Basic (JSX)
import HeroUI.Separator as Separator
import HeroUI.Types as T
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import Yoga.React.DOM.Internal (text)
import YogaStories.Story (story)

mkSeparator :: {} -> JSX
mkSeparator = component "SeparatorStory" \(_ :: {}) -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg flex flex-col gap-3 w-64" }
    [ text "Above"
    , Separator.separator { orientation: T.Horizontal, variant: Separator.Default } ([] :: Array JSX)
    , text "Below"
    ]

basic :: JSX
basic = story "basic" mkSeparator {}
