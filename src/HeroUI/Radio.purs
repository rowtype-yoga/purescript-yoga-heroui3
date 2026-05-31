module HeroUI.Radio where

import Prelude

import Effect.Uncurried (EffectFn1)
import React.Basic (JSX)
import Yoga.React.DOM.Internal (class IsJSX)
import Data.Function.Uncurried (runFn4)
import HeroUI.Types (FieldVariant, Orientation, fieldVariantToString, orientationToString)
import HeroUI.Internal (class CoerceHeroProps, createElementTransformImpl)
import HeroUI.Raw as Raw

type RadioProps r =
  ( value :: String
  , isDisabled :: Boolean
  , name :: String
  , className :: String
  | r
  )

radio
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | RadioProps () }
  => { | givenProps }
  -> kids
  -> JSX
radio props kids = runFn4 createElementTransformImpl {} Raw.radio props kids

type RadioGroupProps r =
  ( value :: String
  , defaultValue :: String
  , onChange :: EffectFn1 String Unit
  , isDisabled :: Boolean
  , isReadOnly :: Boolean
  , isRequired :: Boolean
  , isInvalid :: Boolean
  , name :: String
  , orientation :: Orientation
  , variant :: FieldVariant
  , className :: String
  | r
  )

radioGroupTransforms
  :: { variant :: FieldVariant -> String, orientation :: Orientation -> String }
radioGroupTransforms = { variant: fieldVariantToString, orientation: orientationToString }

radioGroup
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | RadioGroupProps () }
  => { | givenProps }
  -> kids
  -> JSX
radioGroup props kids = runFn4 createElementTransformImpl radioGroupTransforms Raw.radioGroup props kids

type SectionProps r = (className :: String | r)

radioControl
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
radioControl props kids = runFn4 createElementTransformImpl {} Raw.radioControl props kids

radioIndicator
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
radioIndicator props kids = runFn4 createElementTransformImpl {} Raw.radioIndicator props kids

radioContent
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
radioContent props kids = runFn4 createElementTransformImpl {} Raw.radioContent props kids
