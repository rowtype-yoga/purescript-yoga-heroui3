module HeroUI.Select.Stories (basic) where

import Prelude hiding (div)

import React.Basic (JSX)
import HeroUI.ListBox as ListBox
import HeroUI.Select as Select
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import Yoga.React.DOM.Internal (text)
import YogaStories.Story (story)

mkSelect :: { placeholder :: String } -> JSX
mkSelect = component "SelectStory" \props -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg w-64" }
    [ Select.select { placeholder: props.placeholder, defaultSelectedKey: "apple" }
        [ Select.selectTrigger {} [ Select.selectValue { placeholder: props.placeholder } ([] :: Array JSX) ]
        , Select.selectPopover {}
            [ ListBox.listBox {}
                [ ListBox.listBoxItem { id: "apple" } (text "Apple")
                , ListBox.listBoxItem { id: "banana" } (text "Banana")
                , ListBox.listBoxItem { id: "cherry" } (text "Cherry")
                ]
            ]
        ]
    ]

basic :: JSX
basic = story "basic" mkSelect { placeholder: "Pick a fruit" }
