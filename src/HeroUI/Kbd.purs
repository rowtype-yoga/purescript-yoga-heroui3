module HeroUI.Kbd where

import Prelude

import React.Basic (JSX)
import Yoga.React.DOM.Internal (class IsJSX)
import Data.Function.Uncurried (runFn4)
import HeroUI.Internal (class CoerceHeroProps, createElementTransformImpl)
import HeroUI.Raw as Raw

data Variant = Default | Light

derive instance Eq Variant
derive instance Ord Variant

variantToString :: Variant -> String
variantToString = case _ of
  Default -> "default"
  Light -> "light"

data KbdKey
  = Command
  | Shift
  | Ctrl
  | Option
  | Enter
  | Delete
  | Escape
  | Tab
  | Capslock
  | Up
  | Right
  | Down
  | Left
  | PageUp
  | PageDown
  | Home
  | End
  | Help
  | Space
  | Fn
  | Win
  | Alt

derive instance Eq KbdKey
derive instance Ord KbdKey

kbdKeyToString :: KbdKey -> String
kbdKeyToString = case _ of
  Command -> "command"
  Shift -> "shift"
  Ctrl -> "ctrl"
  Option -> "option"
  Enter -> "enter"
  Delete -> "delete"
  Escape -> "escape"
  Tab -> "tab"
  Capslock -> "capslock"
  Up -> "up"
  Right -> "right"
  Down -> "down"
  Left -> "left"
  PageUp -> "pageup"
  PageDown -> "pagedown"
  Home -> "home"
  End -> "end"
  Help -> "help"
  Space -> "space"
  Fn -> "fn"
  Win -> "win"
  Alt -> "alt"

type KbdProps r = (variant :: Variant, className :: String | r)

kbd
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | KbdProps () }
  => { | givenProps }
  -> kids
  -> JSX
kbd props kids = runFn4 createElementTransformImpl { variant: variantToString } Raw.kbd props kids

type KbdAbbrProps r = (keyValue :: KbdKey, className :: String | r)

kbdAbbr
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | KbdAbbrProps () }
  => { | givenProps }
  -> kids
  -> JSX
kbdAbbr props kids = runFn4 createElementTransformImpl { keyValue: kbdKeyToString } Raw.kbdAbbr props kids

type KbdContentProps r = (className :: String | r)

kbdContent
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | KbdContentProps () }
  => { | givenProps }
  -> kids
  -> JSX
kbdContent props kids = runFn4 createElementTransformImpl {} Raw.kbdContent props kids
