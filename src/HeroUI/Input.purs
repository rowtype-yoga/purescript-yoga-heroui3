module HeroUI.Input where

import Prelude

import Effect.Uncurried (EffectFn1)
import React.Basic (JSX)
import Yoga.React.DOM.Internal (class IsJSX)
import Data.Function.Uncurried (runFn4)
import HeroUI.Types (FieldVariant, fieldVariantToString)
import HeroUI.Internal (class CoerceHeroProps, createElementTransformImpl)
import HeroUI.Raw as Raw

data InputType
  = InputTypeText
  | InputTypeEmail
  | InputTypePassword
  | InputTypeNumber
  | InputTypeTel
  | InputTypeUrl
  | InputTypeSearch
  | InputTypeDate
  | InputTypeTime
  | InputTypeDateTimeLocal
  | InputTypeMonth
  | InputTypeWeek
  | InputTypeColor

derive instance Eq InputType
derive instance Ord InputType

inputTypeToString :: InputType -> String
inputTypeToString = case _ of
  InputTypeText -> "text"
  InputTypeEmail -> "email"
  InputTypePassword -> "password"
  InputTypeNumber -> "number"
  InputTypeTel -> "tel"
  InputTypeUrl -> "url"
  InputTypeSearch -> "search"
  InputTypeDate -> "date"
  InputTypeTime -> "time"
  InputTypeDateTimeLocal -> "datetime-local"
  InputTypeMonth -> "month"
  InputTypeWeek -> "week"
  InputTypeColor -> "color"

-- | `TextField` is the stateful field wrapper (holds value/onChange,
-- | validation). Compose `input` / a `Label` inside it.
type TextFieldProps r =
  ( value :: String
  , defaultValue :: String
  , onChange :: EffectFn1 String Unit
  , type :: InputType
  , name :: String
  , isDisabled :: Boolean
  , isReadOnly :: Boolean
  , isRequired :: Boolean
  , isInvalid :: Boolean
  , autoFocus :: Boolean
  , fullWidth :: Boolean
  , variant :: FieldVariant
  , className :: String
  | r
  )

textFieldTransforms :: { type :: InputType -> String, variant :: FieldVariant -> String }
textFieldTransforms = { type: inputTypeToString, variant: fieldVariantToString }

textField
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | TextFieldProps () }
  => { | givenProps }
  -> kids
  -> JSX
textField props kids = runFn4 createElementTransformImpl textFieldTransforms Raw.textField props kids

-- | The bare styled input element. Use inside `textField` for managed state.
type InputProps r =
  ( placeholder :: String
  , type :: InputType
  , name :: String
  , autoComplete :: String
  , fullWidth :: Boolean
  , variant :: FieldVariant
  , className :: String
  | r
  )

inputTransforms :: { type :: InputType -> String, variant :: FieldVariant -> String }
inputTransforms = { type: inputTypeToString, variant: fieldVariantToString }

input
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | InputProps () }
  => { | givenProps }
  -> kids
  -> JSX
input props kids = runFn4 createElementTransformImpl inputTransforms Raw.input props kids

type TextareaProps r =
  ( placeholder :: String
  , rows :: Int
  , name :: String
  , isDisabled :: Boolean
  , fullWidth :: Boolean
  , variant :: FieldVariant
  , className :: String
  | r
  )

textarea
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | TextareaProps () }
  => { | givenProps }
  -> kids
  -> JSX
textarea props kids = runFn4 createElementTransformImpl { variant: fieldVariantToString } Raw.textarea props kids
