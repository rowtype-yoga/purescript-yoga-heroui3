module HeroUI.Skeleton where

import Prelude

import React.Basic (JSX)
import Yoga.React.DOM.Internal (class IsJSX)
import Data.Function.Uncurried (runFn4)
import HeroUI.Internal (class CoerceHeroProps, createElementTransformImpl)
import HeroUI.Raw as Raw

data AnimationType = None | Pulse | Shimmer

derive instance Eq AnimationType
derive instance Ord AnimationType

animationTypeToString :: AnimationType -> String
animationTypeToString = case _ of
  None -> "none"
  Pulse -> "pulse"
  Shimmer -> "shimmer"

type SkeletonProps r = (animationType :: AnimationType, className :: String | r)

skeleton
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SkeletonProps () }
  => { | givenProps }
  -> kids
  -> JSX
skeleton props kids = runFn4 createElementTransformImpl { animationType: animationTypeToString } Raw.skeleton props kids
