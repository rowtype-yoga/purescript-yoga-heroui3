module HeroUI.Progress where

import Prelude

import React.Basic (JSX)
import Yoga.React.DOM.Internal (class IsJSX)
import Data.Function.Uncurried (runFn4)
import HeroUI.Types (Color, Size, colorToString, sizeToString)
import HeroUI.Internal (class CoerceHeroProps, createElementTransformImpl)
import HeroUI.Raw as Raw

type ProgressProps r =
  ( value :: Number
  , minValue :: Number
  , maxValue :: Number
  , isIndeterminate :: Boolean
  , color :: Color
  , size :: Size
  , className :: String
  | r
  )

progressTransforms :: { color :: Color -> String, size :: Size -> String }
progressTransforms = { color: colorToString, size: sizeToString }

progressBar
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | ProgressProps () }
  => { | givenProps }
  -> kids
  -> JSX
progressBar props kids = runFn4 createElementTransformImpl progressTransforms Raw.progressBar props kids

progressCircle
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | ProgressProps () }
  => { | givenProps }
  -> kids
  -> JSX
progressCircle props kids = runFn4 createElementTransformImpl progressTransforms Raw.progressCircle props kids

type SectionProps r = (className :: String | r)

progressBarOutput
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
progressBarOutput props kids = runFn4 createElementTransformImpl {} Raw.progressBarOutput props kids

progressBarTrack
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
progressBarTrack props kids = runFn4 createElementTransformImpl {} Raw.progressBarTrack props kids

progressBarFill
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
progressBarFill props kids = runFn4 createElementTransformImpl {} Raw.progressBarFill props kids

progressCircleTrack
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
progressCircleTrack props kids = runFn4 createElementTransformImpl {} Raw.progressCircleTrack props kids

progressCircleTrackCircle
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
progressCircleTrackCircle props kids = runFn4 createElementTransformImpl {} Raw.progressCircleTrackCircle props kids

progressCircleFillCircle
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
progressCircleFillCircle props kids = runFn4 createElementTransformImpl {} Raw.progressCircleFillCircle props kids
