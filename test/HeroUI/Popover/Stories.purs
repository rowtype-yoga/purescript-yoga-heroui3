module HeroUI.Popover.Stories (basic) where

import Prelude hiding (div)

import React.Basic (JSX)
import HeroUI.Button as Btn
import HeroUI.Popover as Popover
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import Yoga.React.DOM.Internal (text)
import YogaStories.Story (story)

mkPopover :: {} -> JSX
mkPopover = component "PopoverStory" \(_ :: {}) -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg" }
    [ Popover.popover {}
        [ Popover.popoverTrigger {} [ Btn.button { variant: Btn.Primary } "Open popover" ]
        , Popover.popoverContent { placement: "bottom", showArrow: true }
            [ Popover.popoverHeading {} "Heading"
            , text "Popover content."
            ]
        ]
    ]

basic :: JSX
basic = story "basic" mkPopover {}
