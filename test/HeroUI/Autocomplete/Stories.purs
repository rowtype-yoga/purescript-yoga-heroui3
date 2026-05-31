module HeroUI.Autocomplete.Stories (basic) where

import Prelude hiding (div)

import React.Basic (JSX)
import HeroUI.Autocomplete as Autocomplete
import HeroUI.Input as Input
import HeroUI.ListBox as ListBox
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import YogaStories.Story (story)

mkAutocomplete :: { placeholder :: String } -> JSX
mkAutocomplete = component "AutocompleteStory" \props -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg w-64" }
    [ Autocomplete.autocomplete { placeholder: props.placeholder, "aria-label": "Fruit" }
        [ Autocomplete.autocompleteTrigger {}
            [ Autocomplete.autocompleteValue { placeholder: props.placeholder } ([] :: Array JSX)
            , Autocomplete.autocompleteIndicator {} ([] :: Array JSX)
            ]
        , Autocomplete.autocompletePopover {}
            [ Autocomplete.autocompleteFilter { filter: Autocomplete.containsFilter }
                [ Input.textField { "aria-label": "Search fruit" }
                    [ Input.input { placeholder: "Type to filter…" } ([] :: Array JSX) ]
                , ListBox.listBox {}
                    [ ListBox.listBoxItem { id: "apple", textValue: "Apple" } "Apple"
                    , ListBox.listBoxItem { id: "banana", textValue: "Banana" } "Banana"
                    , ListBox.listBoxItem { id: "cherry", textValue: "Cherry" } "Cherry"
                    , ListBox.listBoxItem { id: "date", textValue: "Date" } "Date"
                    , ListBox.listBoxItem { id: "elderberry", textValue: "Elderberry" } "Elderberry"
                    ]
                ]
            ]
        ]
    ]

basic :: JSX
basic = story "basic" mkAutocomplete { placeholder: "Search fruit" }
