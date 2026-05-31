module HeroUI.Hooks
  ( UseOverlayState
  , UseOverlayStateProps
  , UseOverlayStateReturn
  , useOverlayState
  , UseTheme
  , UseThemeReturn
  , useTheme
  , UseMediaQuery
  , useMediaQuery
  , UseIsHydrated
  , useIsHydrated
  , UseIsMounted
  , useIsMounted
  ) where

import Prelude

import Data.Nullable (Nullable)
import Effect (Effect)
import Effect.Uncurried (EffectFn1, runEffectFn1)
import Prim.Row as Row
import React.Basic.Hooks (Hook)
import React.Basic.Hooks.Internal (unsafeHook)
import Unsafe.Coerce (unsafeCoerce)

-- | Manages overlay open state (Modal, Drawer, Popover, ...). Replaces v2's
-- | `useDisclosure`. All props optional. https://heroui.com (useOverlayState)
type UseOverlayStateProps =
  ( isOpen :: Boolean
  , defaultOpen :: Boolean
  , onOpenChange :: EffectFn1 Boolean Unit
  )

type UseOverlayStateReturn =
  ( isOpen :: Boolean
  , setOpen :: EffectFn1 Boolean Unit
  , open :: Effect Unit
  , close :: Effect Unit
  , toggle :: Effect Unit
  )

foreign import data UseOverlayState :: Type -> Type
foreign import data UseTheme :: Type -> Type
foreign import data UseMediaQuery :: Type -> Type
foreign import data UseIsHydrated :: Type -> Type
foreign import data UseIsMounted :: Type -> Type

foreign import useOverlayStateImpl :: EffectFn1 (Record UseOverlayStateProps) (Record UseOverlayStateReturn)
foreign import useThemeImpl :: Effect (Record UseThemeReturn)
foreign import useMediaQueryImpl :: EffectFn1 String Boolean
foreign import useIsHydratedImpl :: Effect Boolean
foreign import useIsMountedImpl :: Effect (Effect Boolean)

useOverlayState
  :: forall props missing
   . Row.Union props missing UseOverlayStateProps
  => Record props
  -> Hook UseOverlayState (Record UseOverlayStateReturn)
useOverlayState props = unsafeHook (runEffectFn1 useOverlayStateImpl (widen props))
  where
  widen :: Record props -> Record UseOverlayStateProps
  widen = unsafeCoerce

type UseThemeReturn =
  ( theme :: String
  , resolvedTheme :: Nullable String
  , setTheme :: EffectFn1 String Unit
  )

useTheme :: Hook UseTheme (Record UseThemeReturn)
useTheme = unsafeHook useThemeImpl

useMediaQuery :: String -> Hook UseMediaQuery Boolean
useMediaQuery query = unsafeHook (runEffectFn1 useMediaQueryImpl query)

useIsHydrated :: Hook UseIsHydrated Boolean
useIsHydrated = unsafeHook useIsHydratedImpl

-- | Returns a getter; call the inner `Effect Boolean` to read mounted state.
useIsMounted :: Hook UseIsMounted (Effect Boolean)
useIsMounted = unsafeHook useIsMountedImpl
