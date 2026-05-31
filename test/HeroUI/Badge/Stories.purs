module HeroUI.Badge.Stories (basic) where

import Prelude hiding (div)

import React.Basic (JSX)
import HeroUI.Avatar as Avatar
import HeroUI.Badge as Badge
import HeroUI.Types as T
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import YogaStories.Story (story)

mkBadge :: { count :: String } -> JSX
mkBadge = component "BadgeStory" \props -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg flex items-center gap-4" }
    [ Badge.badge { color: T.Danger, variant: Badge.Primary, placement: Badge.TopRight, size: T.Md }
        [ Badge.badgeLabel {} props.count
        , Badge.badgeAnchor {} [ Avatar.avatar { color: T.Accent } [ Avatar.avatarFallback {} "ME" ] ]
        ]
    ]

basic :: JSX
basic = story "basic" mkBadge { count: "5" }
