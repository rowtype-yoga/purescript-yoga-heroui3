module HeroUI.Slider where

import Prelude

import Effect.Uncurried (EffectFn1)
import React.Basic (JSX)
import Yoga.React.DOM.Internal (class IsJSX)
import Data.Function.Uncurried (runFn4)
import HeroUI.Types (Orientation, orientationToString)
import HeroUI.Internal (class CoerceHeroProps, createElementTransformImpl)
import HeroUI.Raw as Raw

type SliderProps r =
  ( value :: Number
  , defaultValue :: Number
  , onChange :: EffectFn1 Number Unit
  , onChangeEnd :: EffectFn1 Number Unit
  , minValue :: Number
  , maxValue :: Number
  , step :: Number
  , orientation :: Orientation
  , isDisabled :: Boolean
  , className :: String
  | r
  )

slider
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SliderProps () }
  => { | givenProps }
  -> kids
  -> JSX
slider props kids = runFn4 createElementTransformImpl { orientation: orientationToString } Raw.slider props kids

type SectionProps r = (className :: String | r)

sliderOutput
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
sliderOutput props kids = runFn4 createElementTransformImpl {} Raw.sliderOutput props kids

sliderTrack
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
sliderTrack props kids = runFn4 createElementTransformImpl {} Raw.sliderTrack props kids

sliderFill
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
sliderFill props kids = runFn4 createElementTransformImpl {} Raw.sliderFill props kids

sliderThumb
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
sliderThumb props kids = runFn4 createElementTransformImpl {} Raw.sliderThumb props kids

sliderMarks
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
sliderMarks props kids = runFn4 createElementTransformImpl {} Raw.sliderMarks props kids
