module HeroUI.Accordion.Stories (basic) where

import Prelude hiding (div)

import React.Basic (JSX)
import HeroUI.Accordion as Accordion
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import YogaStories.Story (story)

item :: String -> String -> String -> JSX
item key heading body =
  Accordion.accordionItem { id: key }
    [ Accordion.accordionHeading {} [ Accordion.accordionTrigger {} heading ]
    , Accordion.accordionPanel {} [ Accordion.accordionBody {} body ]
    ]

mkAccordion :: {} -> JSX
mkAccordion = component "AccordionStory" \(_ :: {}) -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg w-80" }
    [ Accordion.accordion { variant: Accordion.Default, defaultExpandedKeys: [ "a" ] }
        [ item "a" "First" "First panel body."
        , item "b" "Second" "Second panel body."
        ]
    ]

basic :: JSX
basic = story "basic" mkAccordion {}
