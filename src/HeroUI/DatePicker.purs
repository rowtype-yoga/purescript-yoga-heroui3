module HeroUI.DatePicker where

import Prelude

import Effect.Uncurried (EffectFn1)
import Foreign (Foreign)
import React.Basic (JSX)
import Yoga.React.DOM.Internal (class IsJSX)
import Data.Function.Uncurried (runFn4)
import HeroUI.Internal (class CoerceHeroProps, createElementTransformImpl)
import HeroUI.Raw as Raw

-- | Date values are opaque `@internationalized/date` objects; pass as `Foreign`.
type DatePickerProps r =
  ( value :: Foreign
  , defaultValue :: Foreign
  , onChange :: EffectFn1 Foreign Unit
  , minValue :: Foreign
  , maxValue :: Foreign
  , isOpen :: Boolean
  , isDisabled :: Boolean
  , isReadOnly :: Boolean
  , isRequired :: Boolean
  , isInvalid :: Boolean
  , className :: String
  | r
  )

datePicker
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | DatePickerProps () }
  => { | givenProps }
  -> kids
  -> JSX
datePicker props kids = runFn4 createElementTransformImpl {} Raw.datePicker props kids

type SectionProps r = (className :: String | r)

datePickerTrigger
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
datePickerTrigger props kids = runFn4 createElementTransformImpl {} Raw.datePickerTrigger props kids

datePickerTriggerIndicator
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
datePickerTriggerIndicator props kids = runFn4 createElementTransformImpl {} Raw.datePickerTriggerIndicator props kids

datePickerPopover
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
datePickerPopover props kids = runFn4 createElementTransformImpl {} Raw.datePickerPopover props kids

-- | Range pickers take a `{ start, end }` range object; pass as `Foreign`.
type DateRangePickerProps r =
  ( value :: Foreign
  , defaultValue :: Foreign
  , onChange :: EffectFn1 Foreign Unit
  , minValue :: Foreign
  , maxValue :: Foreign
  , isOpen :: Boolean
  , isDisabled :: Boolean
  , isReadOnly :: Boolean
  , isRequired :: Boolean
  , isInvalid :: Boolean
  , className :: String
  | r
  )

dateRangePicker
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | DateRangePickerProps () }
  => { | givenProps }
  -> kids
  -> JSX
dateRangePicker props kids = runFn4 createElementTransformImpl {} Raw.dateRangePicker props kids

dateRangePickerTrigger
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
dateRangePickerTrigger props kids = runFn4 createElementTransformImpl {} Raw.dateRangePickerTrigger props kids

dateRangePickerTriggerIndicator
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
dateRangePickerTriggerIndicator props kids = runFn4 createElementTransformImpl {} Raw.dateRangePickerTriggerIndicator props kids

dateRangePickerRangeSeparator
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
dateRangePickerRangeSeparator props kids = runFn4 createElementTransformImpl {} Raw.dateRangePickerRangeSeparator props kids

dateRangePickerPopover
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
dateRangePickerPopover props kids = runFn4 createElementTransformImpl {} Raw.dateRangePickerPopover props kids
