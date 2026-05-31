module HeroUI.Table where

import Prelude

import Effect.Uncurried (EffectFn1)
import Foreign (Foreign)
import React.Basic (JSX)
import Yoga.React.DOM.Internal (class IsJSX)
import Data.Function.Uncurried (runFn4)
import HeroUI.Types (SelectionMode, selectionModeToString)
import HeroUI.Internal (class CoerceHeroProps, createElementTransformImpl)
import HeroUI.Raw as Raw

type TableProps r = (variant :: String, className :: String | r)

table
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | TableProps () }
  => { | givenProps }
  -> kids
  -> JSX
table props kids = runFn4 createElementTransformImpl {} Raw.table props kids

-- | The react-aria table that owns selection/sort state.
type TableContentProps r =
  ( selectionMode :: SelectionMode
  , selectedKeys :: Array String
  , defaultSelectedKeys :: Array String
  , onSelectionChange :: EffectFn1 Foreign Unit
  , disabledKeys :: Array String
  , className :: String
  | r
  )

tableContent
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | TableContentProps () }
  => { | givenProps }
  -> kids
  -> JSX
tableContent props kids = runFn4 createElementTransformImpl { selectionMode: selectionModeToString } Raw.tableContent props kids

type TableColumnProps r =
  ( id :: String
  , isRowHeader :: Boolean
  , allowsSorting :: Boolean
  , className :: String
  | r
  )

tableColumn
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | TableColumnProps () }
  => { | givenProps }
  -> kids
  -> JSX
tableColumn props kids = runFn4 createElementTransformImpl {} Raw.tableColumn props kids

type TableRowProps r = (id :: String, className :: String | r)

tableRow
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | TableRowProps () }
  => { | givenProps }
  -> kids
  -> JSX
tableRow props kids = runFn4 createElementTransformImpl {} Raw.tableRow props kids

type SectionProps r = (className :: String | r)

tableScrollContainer
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
tableScrollContainer props kids = runFn4 createElementTransformImpl {} Raw.tableScrollContainer props kids

tableHeader
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
tableHeader props kids = runFn4 createElementTransformImpl {} Raw.tableHeader props kids

tableBody
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
tableBody props kids = runFn4 createElementTransformImpl {} Raw.tableBody props kids

tableCell
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
tableCell props kids = runFn4 createElementTransformImpl {} Raw.tableCell props kids

tableFooter
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
tableFooter props kids = runFn4 createElementTransformImpl {} Raw.tableFooter props kids
