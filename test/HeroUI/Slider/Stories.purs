module HeroUI.Slider.Stories (basic) where

import Prelude hiding (div)

import React.Basic (JSX)
import HeroUI.Slider as Slider
import HeroUI.Types as T
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import YogaStories.Story (story)

mkSlider :: { defaultValue :: Number } -> JSX
mkSlider = component "SliderStory" \props -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg w-72" }
    [ Slider.slider { defaultValue: props.defaultValue, minValue: 0.0, maxValue: 100.0, step: 1.0, orientation: T.Horizontal }
        [ Slider.sliderTrack {}
            [ Slider.sliderFill {} ([] :: Array JSX)
            , Slider.sliderThumb {} ([] :: Array JSX)
            ]
        ]
    ]

basic :: JSX
basic = story "basic" mkSlider { defaultValue: 40.0 }
