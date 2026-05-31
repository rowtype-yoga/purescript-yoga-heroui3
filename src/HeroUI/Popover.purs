module HeroUI.Popover where

import Prelude

import Effect.Uncurried (EffectFn1)
import React.Basic (JSX)
import Yoga.React.DOM.Internal (class IsJSX)
import Data.Function.Uncurried (runFn4)
import HeroUI.Internal (class CoerceHeroProps, createElementTransformImpl)
import HeroUI.Raw as Raw

type PopoverProps r =
  ( isOpen :: Boolean
  , defaultOpen :: Boolean
  , onOpenChange :: EffectFn1 Boolean Unit
  | r
  )

popover
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | PopoverProps () }
  => { | givenProps }
  -> kids
  -> JSX
popover props kids = runFn4 createElementTransformImpl {} Raw.popover props kids

-- | `placement` follows react-aria's placement strings (e.g. "bottom",
-- | "top start"); kept as `String` since the union is large.
type PopoverContentProps r =
  ( placement :: String
  , offset :: Number
  , showArrow :: Boolean
  , className :: String
  | r
  )

popoverContent
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | PopoverContentProps () }
  => { | givenProps }
  -> kids
  -> JSX
popoverContent props kids = runFn4 createElementTransformImpl {} Raw.popoverContent props kids

type SectionProps r = (className :: String | r)

popoverTrigger
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
popoverTrigger props kids = runFn4 createElementTransformImpl {} Raw.popoverTrigger props kids

popoverDialog
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
popoverDialog props kids = runFn4 createElementTransformImpl {} Raw.popoverDialog props kids

popoverHeading
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
popoverHeading props kids = runFn4 createElementTransformImpl {} Raw.popoverHeading props kids

popoverArrow
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
popoverArrow props kids = runFn4 createElementTransformImpl {} Raw.popoverArrow props kids
