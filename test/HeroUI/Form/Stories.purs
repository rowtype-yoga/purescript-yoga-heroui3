module HeroUI.Form.Stories (basic) where

import Prelude hiding (div)

import React.Basic (JSX)
import HeroUI.Button as Btn
import HeroUI.Form as Form
import HeroUI.Input as Input
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import Yoga.React.DOM.Internal (text)
import YogaStories.Story (story)

mkForm :: {} -> JSX
mkForm = component "FormStory" \(_ :: {}) -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg w-72" }
    [ Form.form { validationBehavior: Form.Native, className: "flex flex-col gap-3" }
        [ Input.textField { name: "email" }
            [ Input.input { placeholder: "you@example.com", type: Input.InputTypeEmail } ([] :: Array JSX) ]
        , Btn.button { type: Btn.ButtonTypeSubmit, variant: Btn.Primary } (text "Submit")
        ]
    ]

basic :: JSX
basic = story "basic" mkForm {}
