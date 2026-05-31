module HeroUI.Tabs where

import Prelude

import Effect.Uncurried (EffectFn1)
import React.Basic (JSX)
import Yoga.React.DOM.Internal (class IsJSX)
import Data.Function.Uncurried (runFn4)
import HeroUI.Types (Orientation, orientationToString)
import HeroUI.Internal (class CoerceHeroProps, createElementTransformImpl)
import HeroUI.Raw as Raw

data Variant = Primary | Secondary

derive instance Eq Variant
derive instance Ord Variant

variantToString :: Variant -> String
variantToString = case _ of
  Primary -> "primary"
  Secondary -> "secondary"

data KeyboardActivation = Automatic | Manual

derive instance Eq KeyboardActivation
derive instance Ord KeyboardActivation

keyboardActivationToString :: KeyboardActivation -> String
keyboardActivationToString = case _ of
  Automatic -> "automatic"
  Manual -> "manual"

type TabsProps r =
  ( variant :: Variant
  , orientation :: Orientation
  , selectedKey :: String
  , defaultSelectedKey :: String
  , onSelectionChange :: EffectFn1 String Unit
  , keyboardActivation :: KeyboardActivation
  , isDisabled :: Boolean
  , className :: String
  | r
  )

tabsTransforms
  :: { variant :: Variant -> String
     , orientation :: Orientation -> String
     , keyboardActivation :: KeyboardActivation -> String
     }
tabsTransforms =
  { variant: variantToString
  , orientation: orientationToString
  , keyboardActivation: keyboardActivationToString
  }

tabs
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | TabsProps () }
  => { | givenProps }
  -> kids
  -> JSX
tabs props kids = runFn4 createElementTransformImpl tabsTransforms Raw.tabs props kids

type TabProps r =
  ( id :: String
  , isDisabled :: Boolean
  , href :: String
  , className :: String
  | r
  )

tab
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | TabProps () }
  => { | givenProps }
  -> kids
  -> JSX
tab props kids = runFn4 createElementTransformImpl {} Raw.tab props kids

type PanelProps r = (id :: String, className :: String | r)

tabPanel
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | PanelProps () }
  => { | givenProps }
  -> kids
  -> JSX
tabPanel props kids = runFn4 createElementTransformImpl {} Raw.tabPanel props kids

type SectionProps r = (className :: String | r)

tabListContainer
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
tabListContainer props kids = runFn4 createElementTransformImpl {} Raw.tabListContainer props kids

tabList
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
tabList props kids = runFn4 createElementTransformImpl {} Raw.tabList props kids

tabIndicator
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
tabIndicator props kids = runFn4 createElementTransformImpl {} Raw.tabIndicator props kids

tabSeparator
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
tabSeparator props kids = runFn4 createElementTransformImpl {} Raw.tabSeparator props kids
