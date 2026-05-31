module HeroUI.Card where

import Prelude

import React.Basic (JSX)
import Yoga.React.DOM.Internal (class IsJSX)
import Data.Function.Uncurried (runFn4)
import HeroUI.Internal (class CoerceHeroProps, createElementTransformImpl)
import HeroUI.Raw as Raw

data Variant = Default | Secondary | Tertiary | Transparent

derive instance Eq Variant
derive instance Ord Variant

variantToString :: Variant -> String
variantToString = case _ of
  Default -> "default"
  Secondary -> "secondary"
  Tertiary -> "tertiary"
  Transparent -> "transparent"

type CardProps r = (variant :: Variant, className :: String | r)

card
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | CardProps () }
  => { | givenProps }
  -> kids
  -> JSX
card props kids = runFn4 createElementTransformImpl { variant: variantToString } Raw.card props kids

type SectionProps r = (className :: String | r)

cardHeader
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
cardHeader props kids = runFn4 createElementTransformImpl {} Raw.cardHeader props kids

cardTitle
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
cardTitle props kids = runFn4 createElementTransformImpl {} Raw.cardTitle props kids

cardDescription
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
cardDescription props kids = runFn4 createElementTransformImpl {} Raw.cardDescription props kids

cardContent
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
cardContent props kids = runFn4 createElementTransformImpl {} Raw.cardContent props kids

cardFooter
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
cardFooter props kids = runFn4 createElementTransformImpl {} Raw.cardFooter props kids
