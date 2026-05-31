module HeroUI.Form where

import Prelude

import React.Basic (JSX)
import React.Basic.Events (EventHandler)
import Yoga.React.DOM.Internal (class IsJSX)
import Data.Function.Uncurried (runFn4)
import HeroUI.Internal (class CoerceHeroProps, createElementTransformImpl)
import HeroUI.Raw as Raw

data ValidationBehavior = Native | Aria

derive instance Eq ValidationBehavior
derive instance Ord ValidationBehavior

validationBehaviorToString :: ValidationBehavior -> String
validationBehaviorToString = case _ of
  Native -> "native"
  Aria -> "aria"

type FormProps r =
  ( action :: String
  , method :: String
  , validationBehavior :: ValidationBehavior
  , onSubmit :: EventHandler
  , onReset :: EventHandler
  , className :: String
  | r
  )

form
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | FormProps () }
  => { | givenProps }
  -> kids
  -> JSX
form props kids = runFn4 createElementTransformImpl { validationBehavior: validationBehaviorToString } Raw.form props kids
