module HeroUI.Breadcrumbs where

import Prelude

import React.Basic (JSX)
import Yoga.React.DOM.Internal (class IsJSX)
import Data.Function.Uncurried (runFn4)
import HeroUI.Internal (class CoerceHeroProps, createElementTransformImpl)
import HeroUI.Raw as Raw

type BreadcrumbsProps r = (separator :: JSX, className :: String | r)

breadcrumbs
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | BreadcrumbsProps () }
  => { | givenProps }
  -> kids
  -> JSX
breadcrumbs props kids = runFn4 createElementTransformImpl {} Raw.breadcrumbs props kids

type BreadcrumbsItemProps r = (href :: String, isDisabled :: Boolean, className :: String | r)

breadcrumbsItem
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | BreadcrumbsItemProps () }
  => { | givenProps }
  -> kids
  -> JSX
breadcrumbsItem props kids = runFn4 createElementTransformImpl {} Raw.breadcrumbsItem props kids
