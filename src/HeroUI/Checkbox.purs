module HeroUI.Checkbox where

import Prelude

import Effect.Uncurried (EffectFn1)
import React.Basic (JSX)
import Yoga.React.DOM.Internal (class IsJSX)
import Data.Function.Uncurried (runFn4)
import HeroUI.Types (FieldVariant, Orientation, fieldVariantToString, orientationToString)
import HeroUI.Internal (class CoerceHeroProps, createElementTransformImpl)
import HeroUI.Raw as Raw

type CheckboxProps r =
  ( value :: String
  , isSelected :: Boolean
  , defaultSelected :: Boolean
  , onChange :: EffectFn1 Boolean Unit
  , isIndeterminate :: Boolean
  , isDisabled :: Boolean
  , isReadOnly :: Boolean
  , isRequired :: Boolean
  , isInvalid :: Boolean
  , name :: String
  , variant :: FieldVariant
  , className :: String
  | r
  )

checkbox
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | CheckboxProps () }
  => { | givenProps }
  -> kids
  -> JSX
checkbox props kids = runFn4 createElementTransformImpl { variant: fieldVariantToString } Raw.checkbox props kids

type CheckboxGroupProps r =
  ( value :: Array String
  , defaultValue :: Array String
  , onChange :: EffectFn1 (Array String) Unit
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

checkboxGroupTransforms
  :: { variant :: FieldVariant -> String, orientation :: Orientation -> String }
checkboxGroupTransforms = { variant: fieldVariantToString, orientation: orientationToString }

checkboxGroup
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | CheckboxGroupProps () }
  => { | givenProps }
  -> kids
  -> JSX
checkboxGroup props kids = runFn4 createElementTransformImpl checkboxGroupTransforms Raw.checkboxGroup props kids

type SectionProps r = (className :: String | r)

checkboxControl
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
checkboxControl props kids = runFn4 createElementTransformImpl {} Raw.checkboxControl props kids

checkboxIndicator
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
checkboxIndicator props kids = runFn4 createElementTransformImpl {} Raw.checkboxIndicator props kids

checkboxContent
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
checkboxContent props kids = runFn4 createElementTransformImpl {} Raw.checkboxContent props kids
