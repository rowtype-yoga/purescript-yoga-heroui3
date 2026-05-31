module HeroUI.DateField where

import Prelude

import Effect.Uncurried (EffectFn1)
import Foreign (Foreign)
import React.Basic (JSX)
import Yoga.React.DOM.Internal (class IsJSX)
import Data.Function.Uncurried (runFn4)
import HeroUI.Internal (class CoerceHeroProps, createElementTransformImpl)
import HeroUI.Raw as Raw

data Granularity = Day | Hour | Minute | Second

derive instance Eq Granularity
derive instance Ord Granularity

granularityToString :: Granularity -> String
granularityToString = case _ of
  Day -> "day"
  Hour -> "hour"
  Minute -> "minute"
  Second -> "second"

-- | Date values are `@internationalized/date` objects (`CalendarDate`, ...);
-- | they're opaque here, so construct/inspect them via FFI and pass as `Foreign`.
type DateFieldProps r =
  ( value :: Foreign
  , defaultValue :: Foreign
  , onChange :: EffectFn1 Foreign Unit
  , minValue :: Foreign
  , maxValue :: Foreign
  , granularity :: Granularity
  , isDisabled :: Boolean
  , isReadOnly :: Boolean
  , isRequired :: Boolean
  , isInvalid :: Boolean
  , fullWidth :: Boolean
  , className :: String
  | r
  )

dateField
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | DateFieldProps () }
  => { | givenProps }
  -> kids
  -> JSX
dateField props kids = runFn4 createElementTransformImpl { granularity: granularityToString } Raw.dateField props kids

type TimeFieldProps r =
  ( value :: Foreign
  , defaultValue :: Foreign
  , onChange :: EffectFn1 Foreign Unit
  , minValue :: Foreign
  , maxValue :: Foreign
  , granularity :: Granularity
  , isDisabled :: Boolean
  , isReadOnly :: Boolean
  , isRequired :: Boolean
  , isInvalid :: Boolean
  , fullWidth :: Boolean
  , className :: String
  | r
  )

timeField
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | TimeFieldProps () }
  => { | givenProps }
  -> kids
  -> JSX
timeField props kids = runFn4 createElementTransformImpl { granularity: granularityToString } Raw.timeField props kids
