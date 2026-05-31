module HeroUI.Autocomplete.Stories (basic) where

import Prelude hiding (div)

import React.Basic (JSX)
import HeroUI.Autocomplete as Autocomplete
import HeroUI.ListBox as ListBox
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import Yoga.React.DOM.Internal (text)
import YogaStories.Story (story)

mkAutocomplete :: { placeholder :: String } -> JSX
mkAutocomplete = component "AutocompleteStory" \props -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg w-64" }
    [ Autocomplete.autocomplete { placeholder: props.placeholder }
        [ Autocomplete.autocompleteTrigger {} ([] :: Array JSX)
        , Autocomplete.autocompletePopover {}
            [ ListBox.listBox {}
                [ ListBox.listBoxItem { id: "apple" } (text "Apple")
                , ListBox.listBoxItem { id: "banana" } (text "Banana")
                ]
            ]
        ]
    ]

basic :: JSX
basic = story "basic" mkAutocomplete { placeholder: "Search fruit" }
