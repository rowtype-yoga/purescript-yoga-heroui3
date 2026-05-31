module HeroUI.Tooltip.Stories (basic) where

import Prelude hiding (div)

import React.Basic (JSX)
import HeroUI.Button as Btn
import HeroUI.Tooltip as Tooltip
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import YogaStories.Story (story)

mkTooltip :: { tip :: String } -> JSX
mkTooltip = component "TooltipStory" \props -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg" }
    [ Tooltip.tooltip {}
        [ Tooltip.tooltipTrigger {} [ Btn.button { variant: Btn.Primary } "Hover me" ]
        , Tooltip.tooltipContent { placement: "top", showArrow: true } props.tip
        ]
    ]

basic :: JSX
basic = story "basic" mkTooltip { tip: "Helpful hint" }
