module HeroUI.Pagination.Stories (basic) where

import Prelude hiding (div)

import React.Basic (JSX)
import HeroUI.Pagination as Pagination
import HeroUI.Types as T
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import YogaStories.Story (story)

mkPagination :: {} -> JSX
mkPagination = component "PaginationStory" \(_ :: {}) -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg" }
    [ Pagination.pagination { size: T.Md }
        [ Pagination.paginationContent {}
            [ Pagination.paginationPrevious {} "‹"
            , Pagination.paginationItem { isActive: true } "1"
            , Pagination.paginationItem { isActive: false } "2"
            , Pagination.paginationItem { isActive: false } "3"
            , Pagination.paginationNext {} "›"
            ]
        ]
    ]

basic :: JSX
basic = story "basic" mkPagination {}
