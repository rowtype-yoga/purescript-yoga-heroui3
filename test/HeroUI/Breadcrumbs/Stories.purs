module HeroUI.Breadcrumbs.Stories (basic) where

import Prelude hiding (div)

import React.Basic (JSX)
import HeroUI.Breadcrumbs as Breadcrumbs
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import YogaStories.Story (story)

mkBreadcrumbs :: {} -> JSX
mkBreadcrumbs = component "BreadcrumbsStory" \(_ :: {}) -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg" }
    [ Breadcrumbs.breadcrumbs {}
        [ Breadcrumbs.breadcrumbsItem { href: "#" } "Home"
        , Breadcrumbs.breadcrumbsItem { href: "#" } "Library"
        , Breadcrumbs.breadcrumbsItem {} "Current"
        ]
    ]

basic :: JSX
basic = story "basic" mkBreadcrumbs {}
