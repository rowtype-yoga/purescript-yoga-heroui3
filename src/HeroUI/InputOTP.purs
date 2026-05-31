module HeroUI.InputOTP where

import Prelude

import Effect.Uncurried (EffectFn1)
import React.Basic (JSX)
import Yoga.React.DOM.Internal (class IsJSX)
import Data.Function.Uncurried (runFn4)
import HeroUI.Types (FieldVariant, fieldVariantToString)
import HeroUI.Internal (class CoerceHeroProps, createElementTransformImpl)
import HeroUI.Raw as Raw

type InputOTPProps r =
  ( value :: String
  , defaultValue :: String
  , onChange :: EffectFn1 String Unit
  , maxLength :: Int
  , isDisabled :: Boolean
  , isInvalid :: Boolean
  , variant :: FieldVariant
  , inputClassName :: String
  , className :: String
  | r
  )

inputOTP
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | InputOTPProps () }
  => { | givenProps }
  -> kids
  -> JSX
inputOTP props kids = runFn4 createElementTransformImpl { variant: fieldVariantToString } Raw.inputOTP props kids

type InputOTPGroupProps r = (className :: String | r)

inputOTPGroup
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | InputOTPGroupProps () }
  => { | givenProps }
  -> kids
  -> JSX
inputOTPGroup props kids = runFn4 createElementTransformImpl {} Raw.inputOTPGroup props kids

type InputOTPSlotProps r = (index :: Int, className :: String | r)

inputOTPSlot
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | InputOTPSlotProps () }
  => { | givenProps }
  -> kids
  -> JSX
inputOTPSlot props kids = runFn4 createElementTransformImpl {} Raw.inputOTPSlot props kids

type InputOTPSeparatorProps r = (className :: String | r)

inputOTPSeparator
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | InputOTPSeparatorProps () }
  => { | givenProps }
  -> kids
  -> JSX
inputOTPSeparator props kids = runFn4 createElementTransformImpl {} Raw.inputOTPSeparator props kids
