module HeroUI.Separator where

import Prelude

import React.Basic (JSX)
import Yoga.React.DOM.Internal (class IsJSX)
import Data.Function.Uncurried (runFn4)
import HeroUI.Types (Orientation, orientationToString)
import HeroUI.Internal (class CoerceHeroProps, createElementTransformImpl)
import HeroUI.Raw as Raw

data Variant = Default | Secondary | Tertiary

derive instance Eq Variant
derive instance Ord Variant

variantToString :: Variant -> String
variantToString = case _ of
  Default -> "default"
  Secondary -> "secondary"
  Tertiary -> "tertiary"

type SeparatorProps r =
  ( orientation :: Orientation
  , variant :: Variant
  , className :: String
  | r
  )

separatorTransforms :: { orientation :: Orientation -> String, variant :: Variant -> String }
separatorTransforms = { orientation: orientationToString, variant: variantToString }

separator
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SeparatorProps () }
  => { | givenProps }
  -> kids
  -> JSX
separator props kids = runFn4 createElementTransformImpl separatorTransforms Raw.separator props kids
