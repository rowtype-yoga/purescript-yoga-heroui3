module HeroUI.Alert.Stories (basic) where

import Prelude hiding (div)

import Data.Generic.Rep (class Generic)
import React.Basic (JSX)
import HeroUI.Alert as Alert
import HeroUI.Types as T
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import Yoga.React.DOM.Internal (text)
import YogaStories.Controls (enum)
import YogaStories.Story (story)

data Status = Default | Accent | Success | Warning | Danger

derive instance Generic Status _

toStatus :: Status -> T.Color
toStatus = case _ of
  Default -> T.Default
  Accent -> T.Accent
  Success -> T.Success
  Warning -> T.Warning
  Danger -> T.Danger

mkAlert :: { title :: String, body :: String, status :: Status } -> JSX
mkAlert = component "AlertStory" \props -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg w-96" }
    [ Alert.alert { status: toStatus props.status }
        [ Alert.alertIndicator {} ([] :: Array JSX)
        , Alert.alertContent {}
            [ Alert.alertTitle {} (text props.title)
            , Alert.alertDescription {} (text props.body)
            ]
        ]
    ]

basic :: JSX
basic = story "basic" mkAlert
  { title: "Heads up", body: "Your changes were saved.", status: enum Success }
