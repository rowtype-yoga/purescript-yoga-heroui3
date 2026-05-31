module HeroUI.Menu.Stories (basic) where

import Prelude hiding (div)

import React.Basic (JSX)
import HeroUI.Menu as Menu
import HeroUI.Types as T
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import YogaStories.Story (story)

mkMenu :: {} -> JSX
mkMenu = component "MenuStory" \(_ :: {}) -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg w-56" }
    [ Menu.menu { selectionMode: T.Single, defaultSelectedKeys: [ "profile" ] }
        [ Menu.menuItem { id: "profile" } "Profile"
        , Menu.menuItem { id: "settings" } "Settings"
        , Menu.menuItem { id: "logout" } "Log out"
        ]
    ]

basic :: JSX
basic = story "basic" mkMenu {}
