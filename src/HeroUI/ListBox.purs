module HeroUI.ListBox where

import Prelude

import Effect.Uncurried (EffectFn1)
import Foreign (Foreign)
import React.Basic (JSX)
import Yoga.React.DOM.Internal (class IsJSX)
import Data.Function.Uncurried (runFn4)
import HeroUI.Types (SelectionMode, selectionModeToString)
import HeroUI.Internal (class CoerceHeroProps, createElementTransformImpl)
import HeroUI.Raw as Raw

type ListBoxProps r =
  ( selectionMode :: SelectionMode
  , selectedKeys :: Array String
  , defaultSelectedKeys :: Array String
  , onSelectionChange :: EffectFn1 Foreign Unit
  , disabledKeys :: Array String
  , isDisabled :: Boolean
  , className :: String
  | r
  )

listBox
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | ListBoxProps () }
  => { | givenProps }
  -> kids
  -> JSX
listBox props kids = runFn4 createElementTransformImpl { selectionMode: selectionModeToString } Raw.listBox props kids

-- | Collection item. `id` identifies the item for selection state; supply
-- | `textValue` when the children aren't plain text (used for typeahead).
type ListBoxItemProps r =
  ( id :: String
  , textValue :: String
  , isDisabled :: Boolean
  , href :: String
  , className :: String
  | r
  )

listBoxItem
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | ListBoxItemProps () }
  => { | givenProps }
  -> kids
  -> JSX
listBoxItem props kids = runFn4 createElementTransformImpl {} Raw.listBoxItem props kids

type ListBoxSectionProps r = (id :: String, className :: String | r)

listBoxSection
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | ListBoxSectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
listBoxSection props kids = runFn4 createElementTransformImpl {} Raw.listBoxSection props kids
