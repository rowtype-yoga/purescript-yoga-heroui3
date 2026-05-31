module HeroUI.Avatar where

import Prelude

import React.Basic (JSX)
import Yoga.React.DOM.Internal (class IsJSX)
import Data.Function.Uncurried (runFn4)
import HeroUI.Types (Color, Size, colorToString, sizeToString)
import HeroUI.Internal (class CoerceHeroProps, createElementTransformImpl)
import HeroUI.Raw as Raw

data Variant = Default | Soft

derive instance Eq Variant
derive instance Ord Variant

variantToString :: Variant -> String
variantToString = case _ of
  Default -> "default"
  Soft -> "soft"

type AvatarProps r =
  ( color :: Color
  , size :: Size
  , variant :: Variant
  , className :: String
  | r
  )

avatarTransforms
  :: { color :: Color -> String, size :: Size -> String, variant :: Variant -> String }
avatarTransforms = { color: colorToString, size: sizeToString, variant: variantToString }

avatar
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | AvatarProps () }
  => { | givenProps }
  -> kids
  -> JSX
avatar props kids = runFn4 createElementTransformImpl avatarTransforms Raw.avatar props kids

type AvatarImageProps r = (src :: String, alt :: String, className :: String | r)

avatarImage
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | AvatarImageProps () }
  => { | givenProps }
  -> kids
  -> JSX
avatarImage props kids = runFn4 createElementTransformImpl {} Raw.avatarImage props kids

type AvatarFallbackProps r = (color :: Color, className :: String | r)

avatarFallback
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | AvatarFallbackProps () }
  => { | givenProps }
  -> kids
  -> JSX
avatarFallback props kids = runFn4 createElementTransformImpl { color: colorToString } Raw.avatarFallback props kids
