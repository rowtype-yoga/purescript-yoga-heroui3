module HeroUI.Link where

import React.Basic (JSX)
import React.Basic.Events (EventHandler)
import Yoga.React.DOM.Internal (class IsJSX)
import Data.Function.Uncurried (runFn4)
import HeroUI.Internal (class CoerceHeroProps, createElementTransformImpl)
import HeroUI.Raw as Raw

type LinkProps r =
  ( href :: String
  , target :: String
  , rel :: String
  , download :: Boolean
  , isDisabled :: Boolean
  , autoFocus :: Boolean
  , className :: String
  , onPress :: EventHandler
  , onFocus :: EventHandler
  , onBlur :: EventHandler
  | r
  )

link
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | LinkProps () }
  => { | givenProps }
  -> kids
  -> JSX
link props kids = runFn4 createElementTransformImpl {} Raw.link props kids

type LinkIconProps r = (className :: String | r)

linkIcon
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | LinkIconProps () }
  => { | givenProps }
  -> kids
  -> JSX
linkIcon props kids = runFn4 createElementTransformImpl {} Raw.linkIcon props kids
