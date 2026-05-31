module HeroUI.Link.Stories (basic) where

import Prelude hiding (div)

import React.Basic (JSX)
import HeroUI.Link as Link
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import YogaStories.Story (story)

mkLink :: { label :: String, href :: String } -> JSX
mkLink = component "LinkStory" \props -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg flex items-center gap-4" }
    [ Link.link { href: props.href, target: "_blank" } props.label ]

basic :: JSX
basic = story "basic" mkLink { label: "Visit HeroUI", href: "https://heroui.com" }
