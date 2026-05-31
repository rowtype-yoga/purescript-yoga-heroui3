module HeroUI.NumberField where

import Prelude

import Effect.Uncurried (EffectFn1)
import React.Basic (JSX)
import Yoga.React.DOM.Internal (class IsJSX)
import Data.Function.Uncurried (runFn4)
import HeroUI.Types (FieldVariant, fieldVariantToString)
import HeroUI.Internal (class CoerceHeroProps, createElementTransformImpl)
import HeroUI.Raw as Raw

type NumberFieldProps r =
  ( value :: Number
  , defaultValue :: Number
  , onChange :: EffectFn1 Number Unit
  , minValue :: Number
  , maxValue :: Number
  , step :: Number
  , name :: String
  , isDisabled :: Boolean
  , isReadOnly :: Boolean
  , isRequired :: Boolean
  , isInvalid :: Boolean
  , fullWidth :: Boolean
  , variant :: FieldVariant
  , className :: String
  | r
  )

numberField
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | NumberFieldProps () }
  => { | givenProps }
  -> kids
  -> JSX
numberField props kids = runFn4 createElementTransformImpl { variant: fieldVariantToString } Raw.numberField props kids

type SectionProps r = (className :: String | r)

numberFieldGroup
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
numberFieldGroup props kids = runFn4 createElementTransformImpl {} Raw.numberFieldGroup props kids

numberFieldInput
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
numberFieldInput props kids = runFn4 createElementTransformImpl {} Raw.numberFieldInput props kids

numberFieldIncrementButton
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
numberFieldIncrementButton props kids = runFn4 createElementTransformImpl {} Raw.numberFieldIncrementButton props kids

numberFieldDecrementButton
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
numberFieldDecrementButton props kids = runFn4 createElementTransformImpl {} Raw.numberFieldDecrementButton props kids
