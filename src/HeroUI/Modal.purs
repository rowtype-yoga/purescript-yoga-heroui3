module HeroUI.Modal where

import Prelude

import Effect.Uncurried (EffectFn1)
import React.Basic (JSX)
import Yoga.React.DOM.Internal (class IsJSX)
import Data.Function.Uncurried (runFn4)
import HeroUI.Internal (class CoerceHeroProps, createElementTransformImpl)
import HeroUI.Raw as Raw

data Size = Xs | Sm | Md | Lg | Full | Cover

derive instance Eq Size
derive instance Ord Size

sizeToString :: Size -> String
sizeToString = case _ of
  Xs -> "xs"
  Sm -> "sm"
  Md -> "md"
  Lg -> "lg"
  Full -> "full"
  Cover -> "cover"

data Placement = PlacementAuto | PlacementTop | PlacementCenter | PlacementBottom

derive instance Eq Placement
derive instance Ord Placement

placementToString :: Placement -> String
placementToString = case _ of
  PlacementAuto -> "auto"
  PlacementTop -> "top"
  PlacementCenter -> "center"
  PlacementBottom -> "bottom"

data Backdrop = Blur | Opaque | Transparent

derive instance Eq Backdrop
derive instance Ord Backdrop

backdropToString :: Backdrop -> String
backdropToString = case _ of
  Blur -> "blur"
  Opaque -> "opaque"
  Transparent -> "transparent"

data Scroll = ScrollInside | ScrollOutside

derive instance Eq Scroll
derive instance Ord Scroll

scrollToString :: Scroll -> String
scrollToString = case _ of
  ScrollInside -> "inside"
  ScrollOutside -> "outside"

-- | The root wires the open state (react-aria `DialogTrigger`).
type ModalProps r =
  ( isOpen :: Boolean
  , defaultOpen :: Boolean
  , onOpenChange :: EffectFn1 Boolean Unit
  , isDismissable :: Boolean
  , className :: String
  | r
  )

modal
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | ModalProps () }
  => { | givenProps }
  -> kids
  -> JSX
modal props kids = runFn4 createElementTransformImpl {} Raw.modal props kids

type ModalBackdropProps r = (variant :: Backdrop, isDismissable :: Boolean, className :: String | r)

modalBackdrop
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | ModalBackdropProps () }
  => { | givenProps }
  -> kids
  -> JSX
modalBackdrop props kids = runFn4 createElementTransformImpl { variant: backdropToString } Raw.modalBackdrop props kids

type ModalContainerProps r =
  ( placement :: Placement
  , scroll :: Scroll
  , size :: Size
  , className :: String
  | r
  )

modalContainerTransforms
  :: { placement :: Placement -> String, scroll :: Scroll -> String, size :: Size -> String }
modalContainerTransforms = { placement: placementToString, scroll: scrollToString, size: sizeToString }

modalContainer
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | ModalContainerProps () }
  => { | givenProps }
  -> kids
  -> JSX
modalContainer props kids = runFn4 createElementTransformImpl modalContainerTransforms Raw.modalContainer props kids

type SectionProps r = (className :: String | r)

modalTrigger
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
modalTrigger props kids = runFn4 createElementTransformImpl {} Raw.modalTrigger props kids

modalDialog
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
modalDialog props kids = runFn4 createElementTransformImpl {} Raw.modalDialog props kids

modalHeader
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
modalHeader props kids = runFn4 createElementTransformImpl {} Raw.modalHeader props kids

modalIcon
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
modalIcon props kids = runFn4 createElementTransformImpl {} Raw.modalIcon props kids

modalHeading
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
modalHeading props kids = runFn4 createElementTransformImpl {} Raw.modalHeading props kids

modalBody
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
modalBody props kids = runFn4 createElementTransformImpl {} Raw.modalBody props kids

modalFooter
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
modalFooter props kids = runFn4 createElementTransformImpl {} Raw.modalFooter props kids

modalCloseTrigger
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
modalCloseTrigger props kids = runFn4 createElementTransformImpl {} Raw.modalCloseTrigger props kids
