module HeroUI.Autocomplete.Stories (basic) where

import Prelude hiding (div)

import React.Basic (JSX)
import HeroUI.Autocomplete as Autocomplete
import HeroUI.ListBox as ListBox
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import YogaStories.Story (story)

mkAutocomplete :: { placeholder :: String } -> JSX
mkAutocomplete = component "AutocompleteStory" \props -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg w-64" }
    [ Autocomplete.autocomplete { placeholder: props.placeholder, defaultSelectedKey: "apple", "aria-label": "Fruit" }
        [ Autocomplete.autocompleteTrigger {}
            [ Autocomplete.autocompleteValue {} ([] :: Array JSX)
            , Autocomplete.autocompleteIndicator {} ([] :: Array JSX)
            ]
        , Autocomplete.autocompletePopover {}
            [ ListBox.listBox {}
                [ ListBox.listBoxItem { id: "apple" } "Apple"
                , ListBox.listBoxItem { id: "banana" } "Banana"
                , ListBox.listBoxItem { id: "cherry" } "Cherry"
                ]
            ]
        ]
    ]

basic :: JSX
basic = story "basic" mkAutocomplete { placeholder: "Search fruit" }
