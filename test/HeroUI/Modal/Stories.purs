module HeroUI.Modal.Stories (basic) where

import Prelude hiding (div)

import React.Basic (JSX)
import HeroUI.Button as Btn
import HeroUI.Modal as Modal
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import YogaStories.Story (story)

mkModal :: { title :: String } -> JSX
mkModal = component "ModalStory" \props -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg" }
    [ Modal.modal {}
        [ Btn.button { variant: Btn.Primary } "Open modal"
        , Modal.modalBackdrop { variant: Modal.Blur }
            [ Modal.modalContainer { placement: Modal.PlacementCenter, size: Modal.Md }
                [ Modal.modalDialog {}
                    [ Modal.modalHeader {} [ Modal.modalHeading {} props.title ]
                    , Modal.modalBody {} "Modal body content."
                    , Modal.modalFooter {} [ Modal.modalCloseTrigger {} "Close" ]
                    ]
                ]
            ]
        ]
    ]

basic :: JSX
basic = story "basic" mkModal { title: "Dialog" }
