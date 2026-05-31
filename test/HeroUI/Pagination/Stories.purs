module HeroUI.Pagination.Stories (basic) where

import Prelude hiding (div)

import React.Basic (JSX)
import HeroUI.Pagination as Pagination
import HeroUI.Types as T
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import Yoga.React.DOM.Internal (text)
import YogaStories.Story (story)

mkPagination :: {} -> JSX
mkPagination = component "PaginationStory" \(_ :: {}) -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg" }
    [ Pagination.pagination { size: T.Md }
        [ Pagination.paginationContent {}
            [ Pagination.paginationPrevious {} (text "‹")
            , Pagination.paginationItem { isActive: true } (text "1")
            , Pagination.paginationItem { isActive: false } (text "2")
            , Pagination.paginationItem { isActive: false } (text "3")
            , Pagination.paginationNext {} (text "›")
            ]
        ]
    ]

basic :: JSX
basic = story "basic" mkPagination {}
