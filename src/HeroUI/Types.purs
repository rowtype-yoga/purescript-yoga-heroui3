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

-- | The `primary | secondary` field variant shared by HeroUI v3 form
-- | controls (Input, Textarea, NumberField, Select, Checkbox, ...).
data FieldVariant = Primary | Secondary

derive instance Eq FieldVariant
derive instance Ord FieldVariant

fieldVariantToString :: FieldVariant -> String
fieldVariantToString = case _ of
  Primary -> "primary"
  Secondary -> "secondary"

-- | Selection mode for collection components (ListBox, Menu, Table, ...).
data SelectionMode = SelectionNone | Single | Multiple

derive instance Eq SelectionMode
derive instance Ord SelectionMode

selectionModeToString :: SelectionMode -> String
selectionModeToString = case _ of
  SelectionNone -> "none"
  Single -> "single"
  Multiple -> "multiple"

data Orientation = Horizontal | Vertical

derive instance Eq Orientation
derive instance Ord Orientation

orientationToString :: Orientation -> String
orientationToString = case _ of
  Horizontal -> "horizontal"
  Vertical -> "vertical"
