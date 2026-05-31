module HeroUI.Accordion where

import Prelude

import Effect.Uncurried (EffectFn1)
import Foreign (Foreign)
import React.Basic (JSX)
import Yoga.React.DOM.Internal (class IsJSX)
import Data.Function.Uncurried (runFn4)
import HeroUI.Internal (class CoerceHeroProps, createElementTransformImpl)
import HeroUI.Raw as Raw

data Variant = Default | Surface

derive instance Eq Variant
derive instance Ord Variant

variantToString :: Variant -> String
variantToString = case _ of
  Default -> "default"
  Surface -> "surface"

type AccordionProps r =
  ( variant :: Variant
  , hideSeparator :: Boolean
  , allowsMultipleExpanded :: Boolean
  , isDisabled :: Boolean
  , expandedKeys :: Array String
  , defaultExpandedKeys :: Array String
  , onExpandedChange :: EffectFn1 Foreign Unit
  , className :: String
  | r
  )

accordion
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | AccordionProps () }
  => { | givenProps }
  -> kids
  -> JSX
accordion props kids = runFn4 createElementTransformImpl { variant: variantToString } Raw.accordion props kids

type AccordionItemProps r =
  ( id :: String
  , isDisabled :: Boolean
  , isExpanded :: Boolean
  , defaultExpanded :: Boolean
  , className :: String
  | r
  )

accordionItem
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | AccordionItemProps () }
  => { | givenProps }
  -> kids
  -> JSX
accordionItem props kids = runFn4 createElementTransformImpl {} Raw.accordionItem props kids

type SectionProps r = (className :: String | r)

accordionHeading
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
accordionHeading props kids = runFn4 createElementTransformImpl {} Raw.accordionHeading props kids

accordionTrigger
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
accordionTrigger props kids = runFn4 createElementTransformImpl {} Raw.accordionTrigger props kids

accordionPanel
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
accordionPanel props kids = runFn4 createElementTransformImpl {} Raw.accordionPanel props kids

accordionIndicator
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
accordionIndicator props kids = runFn4 createElementTransformImpl {} Raw.accordionIndicator props kids

accordionBody
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
accordionBody props kids = runFn4 createElementTransformImpl {} Raw.accordionBody props kids
