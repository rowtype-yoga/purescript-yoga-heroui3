module HeroUI.Toast.Stories (basic) where

import Prelude hiding (div)

import React.Basic (JSX)
import React.Basic.Events (handler_)
import HeroUI.Button as Btn
import HeroUI.Toast as Toast
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import YogaStories.Story (story)

mkToast :: { message :: String } -> JSX
mkToast = component "ToastStory" \props -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg" }
    [ Toast.toastProvider { placement: "bottom-right" } ([] :: Array JSX)
    , Btn.button { variant: Btn.Primary, onPress: handler_ (void (Toast.toastSuccess props.message)) }
        "Show toast"
    ]

basic :: JSX
basic = story "basic" mkToast { message: "Saved!" }
