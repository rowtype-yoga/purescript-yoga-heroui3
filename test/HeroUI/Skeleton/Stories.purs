module HeroUI.Skeleton.Stories (basic) where

import Prelude hiding (div)

import Data.Generic.Rep (class Generic)
import React.Basic (JSX)
import HeroUI.Skeleton as Skeleton
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import YogaStories.Controls (enum)
import YogaStories.Story (story)

data Animation = None | Pulse | Shimmer

derive instance Generic Animation _

toAnimation :: Animation -> Skeleton.AnimationType
toAnimation = case _ of
  None -> Skeleton.None
  Pulse -> Skeleton.Pulse
  Shimmer -> Skeleton.Shimmer

mkSkeleton :: { animation :: Animation } -> JSX
mkSkeleton = component "SkeletonStory" \props -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg flex flex-col gap-3 w-64" }
    [ Skeleton.skeleton { animationType: toAnimation props.animation, className: "h-4 w-full rounded" } ([] :: Array JSX)
    , Skeleton.skeleton { animationType: toAnimation props.animation, className: "h-4 w-3/4 rounded" } ([] :: Array JSX)
    ]

basic :: JSX
basic = story "basic" mkSkeleton { animation: enum Pulse }
