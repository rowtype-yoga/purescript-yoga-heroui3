module HeroUI.Types where

import Prelude

-- | The semantic colour palette shared by HeroUI v3 components that expose a
-- | `color` prop (Chip, Avatar, Badge, ...). Components whose colour set
-- | differs (e.g. Spinner adds `current`) declare their own enum.
data Color = Default | Accent | Success | Warning | Danger

derive instance Eq Color
derive instance Ord Color

colorToString :: Color -> String
colorToString = case _ of
  Default -> "default"
  Accent -> "accent"
  Success -> "success"
  Warning -> "warning"
  Danger -> "danger"

-- | The `sm | md | lg` size scale shared by most components. Components with a
-- | wider scale (e.g. Spinner adds `xl`) declare their own enum.
data Size = Sm | Md | Lg

derive instance Eq Size
derive instance Ord Size

sizeToString :: Size -> String
sizeToString = case _ of
  Sm -> "sm"
  Md -> "md"
  Lg -> "lg"

data Orientation = Horizontal | Vertical

derive instance Eq Orientation
derive instance Ord Orientation

orientationToString :: Orientation -> String
orientationToString = case _ of
  Horizontal -> "horizontal"
  Vertical -> "vertical"
