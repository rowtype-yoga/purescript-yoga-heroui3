module HeroUI.Button where

import Prelude

import React.Basic (JSX)
import React.Basic.Events (EventHandler)
import Yoga.React.DOM.Internal (class IsJSX)
import Data.Function.Uncurried (runFn4)
import Effect.Uncurried (EffectFn1)
import HeroUI.Types (Size, sizeToString)
import HeroUI.Internal (class CoerceHeroProps, createElementTransformImpl)
import HeroUI.Raw as Raw

-- | HeroUI v3 merges v2's `color` + `variant` into a single `variant`.
data Variant
  = Primary
  | Secondary
  | Tertiary
  | Ghost
  | Outline
  | Danger
  | DangerSoft

derive instance Eq Variant
derive instance Ord Variant

variantToString :: Variant -> String
variantToString = case _ of
  Primary -> "primary"
  Secondary -> "secondary"
  Tertiary -> "tertiary"
  Ghost -> "ghost"
  Outline -> "outline"
  Danger -> "danger"
  DangerSoft -> "danger-soft"

data ButtonType = ButtonTypeButton | ButtonTypeSubmit | ButtonTypeReset

derive instance Eq ButtonType
derive instance Ord ButtonType

buttonTypeToString :: ButtonType -> String
buttonTypeToString = case _ of
  ButtonTypeButton -> "button"
  ButtonTypeSubmit -> "submit"
  ButtonTypeReset -> "reset"

type ButtonProps r =
  ( variant :: Variant
  , size :: Size
  , type :: ButtonType
  , fullWidth :: Boolean
  , isIconOnly :: Boolean
  , isDisabled :: Boolean
  , isPending :: Boolean
  , autoFocus :: Boolean
  , form :: String
  , name :: String
  , value :: String
  , className :: String
  , onPress :: EventHandler
  , onPressStart :: EventHandler
  , onPressEnd :: EventHandler
  , onPressChange :: EffectFn1 Boolean Unit
  , onPressUp :: EventHandler
  , onFocus :: EventHandler
  , onBlur :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyUp :: EventHandler
  | r
  )

buttonTransforms
  :: { variant :: Variant -> String
     , size :: Size -> String
     , type :: ButtonType -> String
     }
buttonTransforms =
  { variant: variantToString
  , size: sizeToString
  , type: buttonTypeToString
  }

button
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | ButtonProps () }
  => { | givenProps }
  -> kids
  -> JSX
button props kids = runFn4 createElementTransformImpl buttonTransforms Raw.button props kids

type ButtonGroupProps r =
  ( variant :: Variant
  , size :: Size
  , orientation :: String
  , isDisabled :: Boolean
  , fullWidth :: Boolean
  , className :: String
  | r
  )

buttonGroupTransforms
  :: { variant :: Variant -> String
     , size :: Size -> String
     }
buttonGroupTransforms =
  { variant: variantToString
  , size: sizeToString
  }

buttonGroup
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | ButtonGroupProps () }
  => { | givenProps }
  -> kids
  -> JSX
buttonGroup props kids = runFn4 createElementTransformImpl buttonGroupTransforms Raw.buttonGroup props kids
