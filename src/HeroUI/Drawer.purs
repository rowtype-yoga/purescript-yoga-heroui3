module HeroUI.Drawer where

import Prelude

import Effect.Uncurried (EffectFn1)
import React.Basic (JSX)
import Yoga.React.DOM.Internal (class IsJSX)
import Data.Function.Uncurried (runFn4)
import HeroUI.Internal (class CoerceHeroProps, createElementTransformImpl)
import HeroUI.Raw as Raw

data Placement = Top | Bottom | Left | Right

derive instance Eq Placement
derive instance Ord Placement

placementToString :: Placement -> String
placementToString = case _ of
  Top -> "top"
  Bottom -> "bottom"
  Left -> "left"
  Right -> "right"

data Backdrop = Blur | Opaque | Transparent

derive instance Eq Backdrop
derive instance Ord Backdrop

backdropToString :: Backdrop -> String
backdropToString = case _ of
  Blur -> "blur"
  Opaque -> "opaque"
  Transparent -> "transparent"

type DrawerProps r =
  ( isOpen :: Boolean
  , defaultOpen :: Boolean
  , onOpenChange :: EffectFn1 Boolean Unit
  , isDismissable :: Boolean
  , className :: String
  | r
  )

drawer
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | DrawerProps () }
  => { | givenProps }
  -> kids
  -> JSX
drawer props kids = runFn4 createElementTransformImpl {} Raw.drawer props kids

type DrawerBackdropProps r = (variant :: Backdrop, isDismissable :: Boolean, className :: String | r)

drawerBackdrop
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | DrawerBackdropProps () }
  => { | givenProps }
  -> kids
  -> JSX
drawerBackdrop props kids = runFn4 createElementTransformImpl { variant: backdropToString } Raw.drawerBackdrop props kids

type DrawerContentProps r = (placement :: Placement, className :: String | r)

drawerContent
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | DrawerContentProps () }
  => { | givenProps }
  -> kids
  -> JSX
drawerContent props kids = runFn4 createElementTransformImpl { placement: placementToString } Raw.drawerContent props kids

type SectionProps r = (className :: String | r)

drawerTrigger
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
drawerTrigger props kids = runFn4 createElementTransformImpl {} Raw.drawerTrigger props kids

drawerDialog
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
drawerDialog props kids = runFn4 createElementTransformImpl {} Raw.drawerDialog props kids

drawerHeader
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
drawerHeader props kids = runFn4 createElementTransformImpl {} Raw.drawerHeader props kids

drawerHeading
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
drawerHeading props kids = runFn4 createElementTransformImpl {} Raw.drawerHeading props kids

drawerBody
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
drawerBody props kids = runFn4 createElementTransformImpl {} Raw.drawerBody props kids

drawerFooter
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
drawerFooter props kids = runFn4 createElementTransformImpl {} Raw.drawerFooter props kids

drawerHandle
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
drawerHandle props kids = runFn4 createElementTransformImpl {} Raw.drawerHandle props kids

drawerCloseTrigger
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
drawerCloseTrigger props kids = runFn4 createElementTransformImpl {} Raw.drawerCloseTrigger props kids
