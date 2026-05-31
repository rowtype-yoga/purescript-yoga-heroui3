module HeroUI.ListBox.Stories (basic) where

import Prelude hiding (div)

import React.Basic (JSX)
import HeroUI.ListBox as ListBox
import HeroUI.Types as T
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import Yoga.React.DOM.Internal (text)
import YogaStories.Story (story)

mkListBox :: {} -> JSX
mkListBox = component "ListBoxStory" \(_ :: {}) -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg w-56" }
    [ ListBox.listBox { selectionMode: T.Multiple, defaultSelectedKeys: [ "a" ] }
        [ ListBox.listBoxItem { id: "a" } (text "Apple")
        , ListBox.listBoxItem { id: "b" } (text "Banana")
        , ListBox.listBoxItem { id: "c" } (text "Cherry")
        ]
    ]

basic :: JSX
basic = story "basic" mkListBox {}
