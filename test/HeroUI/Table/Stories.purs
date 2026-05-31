module HeroUI.Table.Stories (basic) where

import Prelude hiding (div)

import React.Basic (JSX)
import HeroUI.Table as Table
import HeroUI.Types as T
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import Yoga.React.DOM.Internal (text)
import YogaStories.Story (story)

row :: String -> String -> String -> JSX
row key name role =
  Table.tableRow { id: key }
    [ Table.tableCell {} (text name)
    , Table.tableCell {} (text role)
    ]

mkTable :: {} -> JSX
mkTable = component "TableStory" \(_ :: {}) -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg" }
    [ Table.table {}
        [ Table.tableContent { selectionMode: T.Multiple, "aria-label": "People" }
            [ Table.tableHeader {}
                [ Table.tableColumn { id: "name", isRowHeader: true } (text "Name")
                , Table.tableColumn { id: "role" } (text "Role")
                ]
            , Table.tableBody {}
                [ row "1" "Alice" "Admin"
                , row "2" "Bob" "User"
                ]
            ]
        ]
    ]

basic :: JSX
basic = story "basic" mkTable {}
