module HeroUI.Tooltip where

import Prelude

import Effect.Uncurried (EffectFn1)
import React.Basic (JSX)
import Yoga.React.DOM.Internal (class IsJSX)
import Data.Function.Uncurried (runFn4)
import HeroUI.Internal (class CoerceHeroProps, createElementTransformImpl)
import HeroUI.Raw as Raw

type TooltipProps r =
  ( isOpen :: Boolean
  , defaultOpen :: Boolean
  , onOpenChange :: EffectFn1 Boolean Unit
  , isDisabled :: Boolean
  , delay :: Number
  , closeDelay :: Number
  | r
  )

tooltip
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | TooltipProps () }
  => { | givenProps }
  -> kids
  -> JSX
tooltip props kids = runFn4 createElementTransformImpl {} Raw.tooltip props kids

type TooltipContentProps r =
  ( placement :: String
  , offset :: Number
  , showArrow :: Boolean
  , className :: String
  | r
  )

tooltipContent
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | TooltipContentProps () }
  => { | givenProps }
  -> kids
  -> JSX
tooltipContent props kids = runFn4 createElementTransformImpl {} Raw.tooltipContent props kids

type SectionProps r = (className :: String | r)

tooltipTrigger
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
tooltipTrigger props kids = runFn4 createElementTransformImpl {} Raw.tooltipTrigger props kids

tooltipArrow
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
tooltipArrow props kids = runFn4 createElementTransformImpl {} Raw.tooltipArrow props kids
