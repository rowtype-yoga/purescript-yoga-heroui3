module HeroUI.Chip where

import Prelude

import React.Basic (JSX)
import Yoga.React.DOM.Internal (class IsJSX)
import Data.Function.Uncurried (runFn4)
import HeroUI.Types (Color, Size, colorToString, sizeToString)
import HeroUI.Internal (class CoerceHeroProps, createElementTransformImpl)
import HeroUI.Raw as Raw

data Variant = Primary | Secondary | Tertiary | Soft

derive instance Eq Variant
derive instance Ord Variant

variantToString :: Variant -> String
variantToString = case _ of
  Primary -> "primary"
  Secondary -> "secondary"
  Tertiary -> "tertiary"
  Soft -> "soft"

type ChipProps r =
  ( color :: Color
  , size :: Size
  , variant :: Variant
  , className :: String
  | r
  )

chipTransforms
  :: { color :: Color -> String, size :: Size -> String, variant :: Variant -> String }
chipTransforms = { color: colorToString, size: sizeToString, variant: variantToString }

chip
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | ChipProps () }
  => { | givenProps }
  -> kids
  -> JSX
chip props kids = runFn4 createElementTransformImpl chipTransforms Raw.chip props kids

type ChipLabelProps r = (className :: String | r)

chipLabel
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | ChipLabelProps () }
  => { | givenProps }
  -> kids
  -> JSX
chipLabel props kids = runFn4 createElementTransformImpl {} Raw.chipLabel props kids
