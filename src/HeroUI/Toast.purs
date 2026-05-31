module HeroUI.Toast where

import Prelude

import Effect (Effect)
import Effect.Uncurried (EffectFn1, runEffectFn1)
import React.Basic (JSX)
import Yoga.React.DOM.Internal (class IsJSX)
import Data.Function.Uncurried (runFn4)
import HeroUI.Internal (class CoerceHeroProps, createElementTransformImpl)
import HeroUI.Raw as Raw

-- Render the provider once near the root of the app; fire toasts imperatively.
type ToastProviderProps r =
  ( placement :: String
  , maxVisibleToasts :: Int
  , className :: String
  | r
  )

toastProvider
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | ToastProviderProps () }
  => { | givenProps }
  -> kids
  -> JSX
toastProvider props kids = runFn4 createElementTransformImpl {} Raw.toastProvider props kids

type SectionProps r = (className :: String | r)

toastContent
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
toastContent props kids = runFn4 createElementTransformImpl {} Raw.toastContent props kids

toastIndicator
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
toastIndicator props kids = runFn4 createElementTransformImpl {} Raw.toastIndicator props kids

toastTitle
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
toastTitle props kids = runFn4 createElementTransformImpl {} Raw.toastTitle props kids

toastDescription
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
toastDescription props kids = runFn4 createElementTransformImpl {} Raw.toastDescription props kids

toastActionButton
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
toastActionButton props kids = runFn4 createElementTransformImpl {} Raw.toastActionButton props kids

toastCloseButton
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
toastCloseButton props kids = runFn4 createElementTransformImpl {} Raw.toastCloseButton props kids

-- | Imperative toast API. Each `toastX` fires a toast and returns its key,
-- | which you can later pass to `closeToast`.
foreign import toastSuccessImpl :: EffectFn1 JSX String
foreign import toastDangerImpl :: EffectFn1 JSX String
foreign import toastInfoImpl :: EffectFn1 JSX String
foreign import toastWarningImpl :: EffectFn1 JSX String
foreign import closeToastImpl :: EffectFn1 String Unit
foreign import closeAllToastsImpl :: Effect Unit
foreign import pauseAllToastsImpl :: Effect Unit
foreign import resumeAllToastsImpl :: Effect Unit

toastSuccess :: JSX -> Effect String
toastSuccess = runEffectFn1 toastSuccessImpl

toastDanger :: JSX -> Effect String
toastDanger = runEffectFn1 toastDangerImpl

toastInfo :: JSX -> Effect String
toastInfo = runEffectFn1 toastInfoImpl

toastWarning :: JSX -> Effect String
toastWarning = runEffectFn1 toastWarningImpl

closeToast :: String -> Effect Unit
closeToast = runEffectFn1 closeToastImpl

closeAllToasts :: Effect Unit
closeAllToasts = closeAllToastsImpl

pauseAllToasts :: Effect Unit
pauseAllToasts = pauseAllToastsImpl

resumeAllToasts :: Effect Unit
resumeAllToasts = resumeAllToastsImpl
