module HeroUI.Select where

import Prelude

import Effect.Uncurried (EffectFn1)
import React.Basic (JSX)
import Yoga.React.DOM.Internal (class IsJSX)
import Data.Function.Uncurried (runFn4)
import HeroUI.Types (FieldVariant, fieldVariantToString)
import HeroUI.Internal (class CoerceHeroProps, createElementTransformImpl)
import HeroUI.Raw as Raw

type SelectProps r =
  ( selectedKey :: String
  , defaultSelectedKey :: String
  , onSelectionChange :: EffectFn1 String Unit
  , placeholder :: String
  , name :: String
  , isDisabled :: Boolean
  , isRequired :: Boolean
  , isInvalid :: Boolean
  , isOpen :: Boolean
  , fullWidth :: Boolean
  , variant :: FieldVariant
  , className :: String
  | r
  )

select
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SelectProps () }
  => { | givenProps }
  -> kids
  -> JSX
select props kids = runFn4 createElementTransformImpl { variant: fieldVariantToString } Raw.select props kids

type SectionProps r = (className :: String | r)

selectTrigger
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
selectTrigger props kids = runFn4 createElementTransformImpl {} Raw.selectTrigger props kids

type SelectValueProps r = (placeholder :: String, className :: String | r)

selectValue
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SelectValueProps () }
  => { | givenProps }
  -> kids
  -> JSX
selectValue props kids = runFn4 createElementTransformImpl {} Raw.selectValue props kids

selectIndicator
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
selectIndicator props kids = runFn4 createElementTransformImpl {} Raw.selectIndicator props kids

type SelectPopoverProps r = (placement :: String, className :: String | r)

selectPopover
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SelectPopoverProps () }
  => { | givenProps }
  -> kids
  -> JSX
selectPopover props kids = runFn4 createElementTransformImpl {} Raw.selectPopover props kids
