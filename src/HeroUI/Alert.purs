module HeroUI.Alert where

import Prelude

import React.Basic (JSX)
import Yoga.React.DOM.Internal (class IsJSX)
import Data.Function.Uncurried (runFn4)
import HeroUI.Types (Color, colorToString)
import HeroUI.Internal (class CoerceHeroProps, createElementTransformImpl)
import HeroUI.Raw as Raw

-- | Alert's `status` shares the semantic colour palette (`HeroUI.Types.Color`).
type AlertProps r = (status :: Color, className :: String | r)

alert
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | AlertProps () }
  => { | givenProps }
  -> kids
  -> JSX
alert props kids = runFn4 createElementTransformImpl { status: colorToString } Raw.alert props kids

type SectionProps r = (className :: String | r)

alertIndicator
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
alertIndicator props kids = runFn4 createElementTransformImpl {} Raw.alertIndicator props kids

alertContent
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
alertContent props kids = runFn4 createElementTransformImpl {} Raw.alertContent props kids

alertTitle
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
alertTitle props kids = runFn4 createElementTransformImpl {} Raw.alertTitle props kids

alertDescription
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
alertDescription props kids = runFn4 createElementTransformImpl {} Raw.alertDescription props kids
