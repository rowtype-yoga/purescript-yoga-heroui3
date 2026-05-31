module HeroUI.ScrollShadow where

import Prelude

import Effect.Uncurried (EffectFn1)
import React.Basic (JSX)
import Yoga.React.DOM.Internal (class IsJSX)
import Data.Function.Uncurried (runFn4)
import HeroUI.Types (Orientation, orientationToString)
import HeroUI.Internal (class CoerceHeroProps, createElementTransformImpl)
import HeroUI.Raw as Raw

data Visibility = Auto | Both | Top | Bottom | Left | Right | None

derive instance Eq Visibility
derive instance Ord Visibility

visibilityToString :: Visibility -> String
visibilityToString = case _ of
  Auto -> "auto"
  Both -> "both"
  Top -> "top"
  Bottom -> "bottom"
  Left -> "left"
  Right -> "right"
  None -> "none"

type ScrollShadowProps r =
  ( size :: Number
  , offset :: Number
  , visibility :: Visibility
  , isEnabled :: Boolean
  , hideScrollBar :: Boolean
  , orientation :: Orientation
  , onVisibilityChange :: EffectFn1 String Unit
  , className :: String
  | r
  )

scrollShadowTransforms
  :: { visibility :: Visibility -> String, orientation :: Orientation -> String }
scrollShadowTransforms = { visibility: visibilityToString, orientation: orientationToString }

scrollShadow
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | ScrollShadowProps () }
  => { | givenProps }
  -> kids
  -> JSX
scrollShadow props kids = runFn4 createElementTransformImpl scrollShadowTransforms Raw.scrollShadow props kids
