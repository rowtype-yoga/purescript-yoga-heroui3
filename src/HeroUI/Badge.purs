module HeroUI.Badge where

import Prelude

import React.Basic (JSX)
import Yoga.React.DOM.Internal (class IsJSX)
import Data.Function.Uncurried (runFn4)
import HeroUI.Types (Color, Size, colorToString, sizeToString)
import HeroUI.Internal (class CoerceHeroProps, createElementTransformImpl)
import HeroUI.Raw as Raw

data Variant = Primary | Secondary | Soft

derive instance Eq Variant
derive instance Ord Variant

variantToString :: Variant -> String
variantToString = case _ of
  Primary -> "primary"
  Secondary -> "secondary"
  Soft -> "soft"

data Placement = TopRight | TopLeft | BottomRight | BottomLeft

derive instance Eq Placement
derive instance Ord Placement

placementToString :: Placement -> String
placementToString = case _ of
  TopRight -> "top-right"
  TopLeft -> "top-left"
  BottomRight -> "bottom-right"
  BottomLeft -> "bottom-left"

type BadgeProps r =
  ( color :: Color
  , size :: Size
  , variant :: Variant
  , placement :: Placement
  , className :: String
  | r
  )

badgeTransforms
  :: { color :: Color -> String
     , size :: Size -> String
     , variant :: Variant -> String
     , placement :: Placement -> String
     }
badgeTransforms =
  { color: colorToString
  , size: sizeToString
  , variant: variantToString
  , placement: placementToString
  }

badge
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | BadgeProps () }
  => { | givenProps }
  -> kids
  -> JSX
badge props kids = runFn4 createElementTransformImpl badgeTransforms Raw.badge props kids

type BadgeLabelProps r = (className :: String | r)

badgeLabel
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | BadgeLabelProps () }
  => { | givenProps }
  -> kids
  -> JSX
badgeLabel props kids = runFn4 createElementTransformImpl {} Raw.badgeLabel props kids

type BadgeAnchorProps r = (className :: String | r)

badgeAnchor
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | BadgeAnchorProps () }
  => { | givenProps }
  -> kids
  -> JSX
badgeAnchor props kids = runFn4 createElementTransformImpl {} Raw.badgeAnchor props kids
