module HeroUI.ScrollShadow.Stories (basic) where

import Prelude hiding (div)

import Data.Array (replicate)
import React.Basic (JSX)
import HeroUI.ScrollShadow as ScrollShadow
import HeroUI.Types as T
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import Yoga.React.DOM.Internal (text)
import YogaStories.Story (story)

mkScrollShadow :: {} -> JSX
mkScrollShadow = component "ScrollShadowStory" \(_ :: {}) -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg" }
    [ ScrollShadow.scrollShadow { orientation: T.Vertical, className: "h-40 w-64" }
        (replicate 20 (div { className: "py-1" } [ text "Scrollable line" ]))
    ]

basic :: JSX
basic = story "basic" mkScrollShadow {}
