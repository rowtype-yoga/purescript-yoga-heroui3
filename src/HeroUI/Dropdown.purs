module HeroUI.Dropdown where

import Prelude

import Effect.Uncurried (EffectFn1)
import Foreign (Foreign)
import React.Basic (JSX)
import Yoga.React.DOM.Internal (class IsJSX)
import Data.Function.Uncurried (runFn4)
import HeroUI.Types (SelectionMode, selectionModeToString)
import HeroUI.Internal (class CoerceHeroProps, createElementTransformImpl)
import HeroUI.Raw as Raw

type DropdownProps r =
  ( isOpen :: Boolean
  , defaultOpen :: Boolean
  , onOpenChange :: EffectFn1 Boolean Unit
  , className :: String
  | r
  )

dropdown
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | DropdownProps () }
  => { | givenProps }
  -> kids
  -> JSX
dropdown props kids = runFn4 createElementTransformImpl {} Raw.dropdown props kids

type DropdownMenuProps r =
  ( selectionMode :: SelectionMode
  , selectedKeys :: Array String
  , defaultSelectedKeys :: Array String
  , onSelectionChange :: EffectFn1 Foreign Unit
  , onAction :: EffectFn1 String Unit
  , disabledKeys :: Array String
  , className :: String
  | r
  )

dropdownMenu
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | DropdownMenuProps () }
  => { | givenProps }
  -> kids
  -> JSX
dropdownMenu props kids = runFn4 createElementTransformImpl { selectionMode: selectionModeToString } Raw.dropdownMenu props kids

type DropdownItemProps r =
  ( id :: String
  , textValue :: String
  , isDisabled :: Boolean
  , href :: String
  , className :: String
  | r
  )

dropdownItem
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | DropdownItemProps () }
  => { | givenProps }
  -> kids
  -> JSX
dropdownItem props kids = runFn4 createElementTransformImpl {} Raw.dropdownItem props kids

type DropdownSectionProps r = (id :: String, className :: String | r)

dropdownSection
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | DropdownSectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
dropdownSection props kids = runFn4 createElementTransformImpl {} Raw.dropdownSection props kids

type DropdownPopoverProps r = (placement :: String, className :: String | r)

dropdownPopover
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | DropdownPopoverProps () }
  => { | givenProps }
  -> kids
  -> JSX
dropdownPopover props kids = runFn4 createElementTransformImpl {} Raw.dropdownPopover props kids

type SectionProps r = (className :: String | r)

dropdownTrigger
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
dropdownTrigger props kids = runFn4 createElementTransformImpl {} Raw.dropdownTrigger props kids

dropdownItemIndicator
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
dropdownItemIndicator props kids = runFn4 createElementTransformImpl {} Raw.dropdownItemIndicator props kids

dropdownSubmenuIndicator
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
dropdownSubmenuIndicator props kids = runFn4 createElementTransformImpl {} Raw.dropdownSubmenuIndicator props kids

dropdownSubmenuTrigger
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
dropdownSubmenuTrigger props kids = runFn4 createElementTransformImpl {} Raw.dropdownSubmenuTrigger props kids
