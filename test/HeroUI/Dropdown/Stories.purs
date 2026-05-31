module HeroUI.Dropdown.Stories (basic) where

import Prelude hiding (div)

import React.Basic (JSX)
import HeroUI.Button as Btn
import HeroUI.Dropdown as Dropdown
import HeroUI.Types as T
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import Yoga.React.DOM.Internal (text)
import YogaStories.Story (story)

mkDropdown :: {} -> JSX
mkDropdown = component "DropdownStory" \(_ :: {}) -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg" }
    [ Dropdown.dropdown {}
        [ Dropdown.dropdownTrigger {} [ Btn.button { variant: Btn.Primary } (text "Actions") ]
        , Dropdown.dropdownPopover {}
            [ Dropdown.dropdownMenu { selectionMode: T.SelectionNone }
                [ Dropdown.dropdownItem { id: "new" } (text "New file")
                , Dropdown.dropdownItem { id: "copy" } (text "Copy link")
                , Dropdown.dropdownItem { id: "delete" } (text "Delete")
                ]
            ]
        ]
    ]

basic :: JSX
basic = story "basic" mkDropdown {}
