module HeroUI.Progress.Stories (basic) where

import Prelude hiding (div)

import React.Basic (JSX)
import HeroUI.Progress as Progress
import HeroUI.Types as T
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import YogaStories.Story (story)

mkProgress :: { value :: Number } -> JSX
mkProgress = component "ProgressStory" \props -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg flex flex-col gap-4 w-72" }
    [ Progress.progressBar { value: props.value, minValue: 0.0, maxValue: 100.0, color: T.Accent, size: T.Md } ([] :: Array JSX)
    , Progress.progressCircle { value: props.value, minValue: 0.0, maxValue: 100.0, color: T.Success, size: T.Lg } ([] :: Array JSX)
    ]

basic :: JSX
basic = story "basic" mkProgress { value: 60.0 }
