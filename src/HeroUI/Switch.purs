module HeroUI.Switch where

import Prelude

import Effect.Uncurried (EffectFn1)
import React.Basic (JSX)
import Yoga.React.DOM.Internal (class IsJSX)
import Data.Function.Uncurried (runFn4)
import HeroUI.Types (Size, sizeToString)
import HeroUI.Internal (class CoerceHeroProps, createElementTransformImpl)
import HeroUI.Raw as Raw

type SwitchProps r =
  ( value :: String
  , isSelected :: Boolean
  , defaultSelected :: Boolean
  , onChange :: EffectFn1 Boolean Unit
  , isDisabled :: Boolean
  , isReadOnly :: Boolean
  , name :: String
  , size :: Size
  , className :: String
  | r
  )

switch_
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SwitchProps () }
  => { | givenProps }
  -> kids
  -> JSX
switch_ props kids = runFn4 createElementTransformImpl { size: sizeToString } Raw.switch_ props kids

type SectionProps r = (className :: String | r)

switchControl
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
switchControl props kids = runFn4 createElementTransformImpl {} Raw.switchControl props kids

switchThumb
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
switchThumb props kids = runFn4 createElementTransformImpl {} Raw.switchThumb props kids

switchIcon
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
switchIcon props kids = runFn4 createElementTransformImpl {} Raw.switchIcon props kids

switchContent
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
switchContent props kids = runFn4 createElementTransformImpl {} Raw.switchContent props kids
