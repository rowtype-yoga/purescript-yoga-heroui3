module HeroUI.Calendar where

import Prelude

import Effect.Uncurried (EffectFn1)
import Foreign (Foreign)
import React.Basic (JSX)
import Yoga.React.DOM.Internal (class IsJSX)
import Data.Function.Uncurried (runFn4)
import HeroUI.Internal (class CoerceHeroProps, createElementTransformImpl)
import HeroUI.Raw as Raw

-- | Date values are opaque `@internationalized/date` objects; pass as `Foreign`.
type CalendarProps r =
  ( value :: Foreign
  , defaultValue :: Foreign
  , onChange :: EffectFn1 Foreign Unit
  , minValue :: Foreign
  , maxValue :: Foreign
  , isDisabled :: Boolean
  , isReadOnly :: Boolean
  , className :: String
  | r
  )

calendar
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | CalendarProps () }
  => { | givenProps }
  -> kids
  -> JSX
calendar props kids = runFn4 createElementTransformImpl {} Raw.calendar props kids

type SectionProps r = (className :: String | r)

calendarHeader
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
calendarHeader props kids = runFn4 createElementTransformImpl {} Raw.calendarHeader props kids

calendarHeading
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
calendarHeading props kids = runFn4 createElementTransformImpl {} Raw.calendarHeading props kids

calendarNavButton
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
calendarNavButton props kids = runFn4 createElementTransformImpl {} Raw.calendarNavButton props kids

calendarGrid
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
calendarGrid props kids = runFn4 createElementTransformImpl {} Raw.calendarGrid props kids

calendarGridHeader
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
calendarGridHeader props kids = runFn4 createElementTransformImpl {} Raw.calendarGridHeader props kids

calendarGridBody
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
calendarGridBody props kids = runFn4 createElementTransformImpl {} Raw.calendarGridBody props kids

calendarHeaderCell
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
calendarHeaderCell props kids = runFn4 createElementTransformImpl {} Raw.calendarHeaderCell props kids

type CalendarCellProps r = (date :: Foreign, className :: String | r)

calendarCell
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | CalendarCellProps () } => { | g } -> k -> JSX
calendarCell props kids = runFn4 createElementTransformImpl {} Raw.calendarCell props kids

calendarCellIndicator
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
calendarCellIndicator props kids = runFn4 createElementTransformImpl {} Raw.calendarCellIndicator props kids

-- RangeCalendar
type RangeCalendarProps r =
  ( value :: Foreign
  , defaultValue :: Foreign
  , onChange :: EffectFn1 Foreign Unit
  , minValue :: Foreign
  , maxValue :: Foreign
  , isDisabled :: Boolean
  , isReadOnly :: Boolean
  , className :: String
  | r
  )

rangeCalendar
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | RangeCalendarProps () }
  => { | givenProps }
  -> kids
  -> JSX
rangeCalendar props kids = runFn4 createElementTransformImpl {} Raw.rangeCalendar props kids

rangeCalendarHeader
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
rangeCalendarHeader props kids = runFn4 createElementTransformImpl {} Raw.rangeCalendarHeader props kids

rangeCalendarHeading
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
rangeCalendarHeading props kids = runFn4 createElementTransformImpl {} Raw.rangeCalendarHeading props kids

rangeCalendarNavButton
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
rangeCalendarNavButton props kids = runFn4 createElementTransformImpl {} Raw.rangeCalendarNavButton props kids

rangeCalendarGrid
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
rangeCalendarGrid props kids = runFn4 createElementTransformImpl {} Raw.rangeCalendarGrid props kids

rangeCalendarCell
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | CalendarCellProps () } => { | g } -> k -> JSX
rangeCalendarCell props kids = runFn4 createElementTransformImpl {} Raw.rangeCalendarCell props kids
