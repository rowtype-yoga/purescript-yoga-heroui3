module HeroUI.Avatar.Stories (basic) where

import Prelude hiding (div)

import React.Basic (JSX)
import HeroUI.Avatar as Avatar
import HeroUI.Types as T
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import Yoga.React.DOM.Internal (text)
import YogaStories.Story (story)

mkAvatar :: { initials :: String } -> JSX
mkAvatar = component "AvatarStory" \props -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg flex items-center gap-4" }
    [ Avatar.avatar { color: T.Accent, size: T.Md, variant: Avatar.Soft }
        [ Avatar.avatarFallback { color: T.Accent } (text props.initials) ]
    ]

basic :: JSX
basic = story "basic" mkAvatar { initials: "ME" }
