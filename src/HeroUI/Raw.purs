module HeroUI.Raw where

import React.Basic (ReactComponent)

-- Button
foreign import button :: forall r. ReactComponent { | r }
foreign import buttonGroup :: forall r. ReactComponent { | r }
foreign import buttonGroupSeparator :: forall r. ReactComponent { | r }

-- Spinner
foreign import spinner :: forall r. ReactComponent { | r }

-- Chip
foreign import chip :: forall r. ReactComponent { | r }
foreign import chipLabel :: forall r. ReactComponent { | r }

-- Kbd
foreign import kbd :: forall r. ReactComponent { | r }
foreign import kbdAbbr :: forall r. ReactComponent { | r }
foreign import kbdContent :: forall r. ReactComponent { | r }

-- Link
foreign import link :: forall r. ReactComponent { | r }
foreign import linkIcon :: forall r. ReactComponent { | r }

-- Avatar
foreign import avatar :: forall r. ReactComponent { | r }
foreign import avatarImage :: forall r. ReactComponent { | r }
foreign import avatarFallback :: forall r. ReactComponent { | r }

-- Badge
foreign import badge :: forall r. ReactComponent { | r }
foreign import badgeLabel :: forall r. ReactComponent { | r }
foreign import badgeAnchor :: forall r. ReactComponent { | r }

-- Skeleton
foreign import skeleton :: forall r. ReactComponent { | r }

-- Separator
foreign import separator :: forall r. ReactComponent { | r }

-- Card
foreign import card :: forall r. ReactComponent { | r }
foreign import cardHeader :: forall r. ReactComponent { | r }
foreign import cardTitle :: forall r. ReactComponent { | r }
foreign import cardDescription :: forall r. ReactComponent { | r }
foreign import cardContent :: forall r. ReactComponent { | r }
foreign import cardFooter :: forall r. ReactComponent { | r }

-- ScrollShadow
foreign import scrollShadow :: forall r. ReactComponent { | r }

-- Accordion
foreign import accordion :: forall r. ReactComponent { | r }
foreign import accordionItem :: forall r. ReactComponent { | r }
foreign import accordionHeading :: forall r. ReactComponent { | r }
foreign import accordionTrigger :: forall r. ReactComponent { | r }
foreign import accordionPanel :: forall r. ReactComponent { | r }
foreign import accordionIndicator :: forall r. ReactComponent { | r }
foreign import accordionBody :: forall r. ReactComponent { | r }

-- Tabs
foreign import tabs :: forall r. ReactComponent { | r }
foreign import tabListContainer :: forall r. ReactComponent { | r }
foreign import tabList :: forall r. ReactComponent { | r }
foreign import tab :: forall r. ReactComponent { | r }
foreign import tabIndicator :: forall r. ReactComponent { | r }
foreign import tabSeparator :: forall r. ReactComponent { | r }
foreign import tabPanel :: forall r. ReactComponent { | r }

-- TextField / Input / Textarea
foreign import textField :: forall r. ReactComponent { | r }
foreign import input :: forall r. ReactComponent { | r }
foreign import textarea :: forall r. ReactComponent { | r }

-- NumberField
foreign import numberField :: forall r. ReactComponent { | r }
foreign import numberFieldGroup :: forall r. ReactComponent { | r }
foreign import numberFieldInput :: forall r. ReactComponent { | r }
foreign import numberFieldIncrementButton :: forall r. ReactComponent { | r }
foreign import numberFieldDecrementButton :: forall r. ReactComponent { | r }

-- Checkbox
foreign import checkbox :: forall r. ReactComponent { | r }
foreign import checkboxControl :: forall r. ReactComponent { | r }
foreign import checkboxIndicator :: forall r. ReactComponent { | r }
foreign import checkboxContent :: forall r. ReactComponent { | r }
foreign import checkboxGroup :: forall r. ReactComponent { | r }

-- Radio
foreign import radio :: forall r. ReactComponent { | r }
foreign import radioControl :: forall r. ReactComponent { | r }
foreign import radioIndicator :: forall r. ReactComponent { | r }
foreign import radioContent :: forall r. ReactComponent { | r }
foreign import radioGroup :: forall r. ReactComponent { | r }

-- Switch
foreign import switch_ :: forall r. ReactComponent { | r }
foreign import switchControl :: forall r. ReactComponent { | r }
foreign import switchThumb :: forall r. ReactComponent { | r }
foreign import switchIcon :: forall r. ReactComponent { | r }
foreign import switchContent :: forall r. ReactComponent { | r }

-- Slider
foreign import slider :: forall r. ReactComponent { | r }
foreign import sliderOutput :: forall r. ReactComponent { | r }
foreign import sliderTrack :: forall r. ReactComponent { | r }
foreign import sliderFill :: forall r. ReactComponent { | r }
foreign import sliderThumb :: forall r. ReactComponent { | r }
foreign import sliderMarks :: forall r. ReactComponent { | r }

-- Form
foreign import form :: forall r. ReactComponent { | r }

-- InputOTP
foreign import inputOTP :: forall r. ReactComponent { | r }
foreign import inputOTPGroup :: forall r. ReactComponent { | r }
foreign import inputOTPSlot :: forall r. ReactComponent { | r }
foreign import inputOTPSeparator :: forall r. ReactComponent { | r }

-- ListBox
foreign import listBox :: forall r. ReactComponent { | r }
foreign import listBoxItem :: forall r. ReactComponent { | r }
foreign import listBoxSection :: forall r. ReactComponent { | r }

-- Select
foreign import select :: forall r. ReactComponent { | r }
foreign import selectTrigger :: forall r. ReactComponent { | r }
foreign import selectValue :: forall r. ReactComponent { | r }
foreign import selectIndicator :: forall r. ReactComponent { | r }
foreign import selectPopover :: forall r. ReactComponent { | r }

-- Autocomplete
foreign import autocomplete :: forall r. ReactComponent { | r }
foreign import autocompleteTrigger :: forall r. ReactComponent { | r }
foreign import autocompleteValue :: forall r. ReactComponent { | r }
foreign import autocompleteIndicator :: forall r. ReactComponent { | r }
foreign import autocompletePopover :: forall r. ReactComponent { | r }
foreign import autocompleteClearButton :: forall r. ReactComponent { | r }

-- DateField / TimeField
foreign import dateField :: forall r. ReactComponent { | r }
foreign import timeField :: forall r. ReactComponent { | r }

-- DatePicker
foreign import datePicker :: forall r. ReactComponent { | r }
foreign import datePickerTrigger :: forall r. ReactComponent { | r }
foreign import datePickerTriggerIndicator :: forall r. ReactComponent { | r }
foreign import datePickerPopover :: forall r. ReactComponent { | r }

-- DateRangePicker
foreign import dateRangePicker :: forall r. ReactComponent { | r }
foreign import dateRangePickerTrigger :: forall r. ReactComponent { | r }
foreign import dateRangePickerTriggerIndicator :: forall r. ReactComponent { | r }
foreign import dateRangePickerRangeSeparator :: forall r. ReactComponent { | r }
foreign import dateRangePickerPopover :: forall r. ReactComponent { | r }

-- Calendar
foreign import calendar :: forall r. ReactComponent { | r }
foreign import calendarHeader :: forall r. ReactComponent { | r }
foreign import calendarHeading :: forall r. ReactComponent { | r }
foreign import calendarNavButton :: forall r. ReactComponent { | r }
foreign import calendarGrid :: forall r. ReactComponent { | r }
foreign import calendarGridHeader :: forall r. ReactComponent { | r }
foreign import calendarGridBody :: forall r. ReactComponent { | r }
foreign import calendarHeaderCell :: forall r. ReactComponent { | r }
foreign import calendarCell :: forall r. ReactComponent { | r }
foreign import calendarCellIndicator :: forall r. ReactComponent { | r }

-- RangeCalendar
foreign import rangeCalendar :: forall r. ReactComponent { | r }
foreign import rangeCalendarHeader :: forall r. ReactComponent { | r }
foreign import rangeCalendarHeading :: forall r. ReactComponent { | r }
foreign import rangeCalendarNavButton :: forall r. ReactComponent { | r }
foreign import rangeCalendarGrid :: forall r. ReactComponent { | r }
foreign import rangeCalendarCell :: forall r. ReactComponent { | r }
