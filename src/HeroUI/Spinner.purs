module HeroUI.Spinner where

import Prelude

import React.Basic (JSX)
import Yoga.React.DOM.Internal (class IsJSX)
import Data.Function.Uncurried (runFn4)
import HeroUI.Internal (class CoerceHeroProps, createElementTransformImpl)
import HeroUI.Raw as Raw

data Color = Accent | Current | Success | Warning | Danger

derive instance Eq Color
derive instance Ord Color

colorToString :: Color -> String
colorToString = case _ of
  Accent -> "accent"
  Current -> "current"
  Success -> "success"
  Warning -> "warning"
  Danger -> "danger"

data Size = Sm | Md | Lg | Xl

derive instance Eq Size
derive instance Ord Size

sizeToString :: Size -> String
sizeToString = case _ of
  Sm -> "sm"
  Md -> "md"
  Lg -> "lg"
  Xl -> "xl"

type SpinnerProps r =
  ( color :: Color
  , size :: Size
  , className :: String
  | r
  )

spinnerTransforms :: { color :: Color -> String, size :: Size -> String }
spinnerTransforms = { color: colorToString, size: sizeToString }

spinner
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SpinnerProps () }
  => { | givenProps }
  -> kids
  -> JSX
spinner props kids = runFn4 createElementTransformImpl spinnerTransforms Raw.spinner props kids
