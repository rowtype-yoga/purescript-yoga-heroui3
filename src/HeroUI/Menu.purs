module HeroUI.Menu where

import Prelude

import Effect.Uncurried (EffectFn1)
import Foreign (Foreign)
import React.Basic (JSX)
import Yoga.React.DOM.Internal (class IsJSX)
import Data.Function.Uncurried (runFn4)
import HeroUI.Types (SelectionMode, selectionModeToString)
import HeroUI.Internal (class CoerceHeroProps, createElementTransformImpl)
import HeroUI.Raw as Raw

type MenuProps r =
  ( selectionMode :: SelectionMode
  , selectedKeys :: Array String
  , defaultSelectedKeys :: Array String
  , onSelectionChange :: EffectFn1 Foreign Unit
  , onAction :: EffectFn1 String Unit
  , disabledKeys :: Array String
  , className :: String
  | r
  )

menu
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | MenuProps () }
  => { | givenProps }
  -> kids
  -> JSX
menu props kids = runFn4 createElementTransformImpl { selectionMode: selectionModeToString } Raw.menu props kids

type MenuItemProps r =
  ( id :: String
  , textValue :: String
  , isDisabled :: Boolean
  , href :: String
  , className :: String
  | r
  )

menuItem
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | MenuItemProps () }
  => { | givenProps }
  -> kids
  -> JSX
menuItem props kids = runFn4 createElementTransformImpl {} Raw.menuItem props kids

type MenuSectionProps r = (id :: String, className :: String | r)

menuSection
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | MenuSectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
menuSection props kids = runFn4 createElementTransformImpl {} Raw.menuSection props kids

type SectionProps r = (className :: String | r)

menuItemIndicator
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
menuItemIndicator props kids = runFn4 createElementTransformImpl {} Raw.menuItemIndicator props kids

menuItemSubmenuIndicator
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
menuItemSubmenuIndicator props kids = runFn4 createElementTransformImpl {} Raw.menuItemSubmenuIndicator props kids
