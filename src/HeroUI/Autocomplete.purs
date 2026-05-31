module HeroUI.Autocomplete where

import Prelude

import Effect (Effect)
import Effect.Uncurried (EffectFn1)
import React.Basic (JSX)
import Yoga.React.DOM.Internal (class IsJSX)
import Data.Function.Uncurried (Fn2, mkFn2, runFn4)
import Data.String (Pattern(..), contains, toLower)
import HeroUI.Types (FieldVariant, fieldVariantToString)
import HeroUI.Internal (class CoerceHeroProps, createElementTransformImpl)
import HeroUI.Raw as Raw

type AutocompleteProps r =
  ( selectedKey :: String
  , defaultSelectedKey :: String
  , onSelectionChange :: EffectFn1 String Unit
  , inputValue :: String
  , defaultInputValue :: String
  , onInputChange :: EffectFn1 String Unit
  , onClear :: Effect Unit
  , allowsCustomValue :: Boolean
  , placeholder :: String
  , name :: String
  , isDisabled :: Boolean
  , isRequired :: Boolean
  , isInvalid :: Boolean
  , fullWidth :: Boolean
  , variant :: FieldVariant
  , className :: String
  | r
  )

autocomplete
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | AutocompleteProps () }
  => { | givenProps }
  -> kids
  -> JSX
autocomplete props kids = runFn4 createElementTransformImpl { variant: fieldVariantToString } Raw.autocomplete props kids

type SectionProps r = (className :: String | r)

autocompleteTrigger
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
autocompleteTrigger props kids = runFn4 createElementTransformImpl {} Raw.autocompleteTrigger props kids

autocompleteValue
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
autocompleteValue props kids = runFn4 createElementTransformImpl {} Raw.autocompleteValue props kids

autocompleteIndicator
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
autocompleteIndicator props kids = runFn4 createElementTransformImpl {} Raw.autocompleteIndicator props kids

autocompletePopover
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
autocompletePopover props kids = runFn4 createElementTransformImpl {} Raw.autocompletePopover props kids

-- | Wraps the search `input` + the options collection inside the popover;
-- | this is what makes the autocomplete typeable. Pass `filter` to narrow the
-- | options as the user types (see `containsFilter` for the common case).
type AutocompleteFilterProps r =
  ( filter :: Fn2 String String Boolean
  , className :: String
  | r
  )

autocompleteFilter
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | AutocompleteFilterProps () }
  => { | givenProps }
  -> kids
  -> JSX
autocompleteFilter props kids = runFn4 createElementTransformImpl {} Raw.autocompleteFilter props kids

-- | Case-insensitive substring match — the usual `filter` for `autocompleteFilter`.
-- | react-aria calls it as `filter optionTextValue typedInput`; keep an option
-- | when what the user typed appears anywhere in its `textValue`.
containsFilter :: Fn2 String String Boolean
containsFilter = mkFn2 \optionText typed -> contains (Pattern (toLower typed)) (toLower optionText)

autocompleteClearButton
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | SectionProps () }
  => { | givenProps }
  -> kids
  -> JSX
autocompleteClearButton props kids = runFn4 createElementTransformImpl {} Raw.autocompleteClearButton props kids
