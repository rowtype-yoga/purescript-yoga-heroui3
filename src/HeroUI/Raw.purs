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
foreign import autocompleteFilter :: forall r. ReactComponent { | r }

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

-- Modal
foreign import modal :: forall r. ReactComponent { | r }
foreign import modalTrigger :: forall r. ReactComponent { | r }
foreign import modalBackdrop :: forall r. ReactComponent { | r }
foreign import modalContainer :: forall r. ReactComponent { | r }
foreign import modalDialog :: forall r. ReactComponent { | r }
foreign import modalHeader :: forall r. ReactComponent { | r }
foreign import modalIcon :: forall r. ReactComponent { | r }
foreign import modalHeading :: forall r. ReactComponent { | r }
foreign import modalBody :: forall r. ReactComponent { | r }
foreign import modalFooter :: forall r. ReactComponent { | r }
foreign import modalCloseTrigger :: forall r. ReactComponent { | r }

-- Drawer
foreign import drawer :: forall r. ReactComponent { | r }
foreign import drawerTrigger :: forall r. ReactComponent { | r }
foreign import drawerBackdrop :: forall r. ReactComponent { | r }
foreign import drawerContent :: forall r. ReactComponent { | r }
foreign import drawerDialog :: forall r. ReactComponent { | r }
foreign import drawerHeader :: forall r. ReactComponent { | r }
foreign import drawerHeading :: forall r. ReactComponent { | r }
foreign import drawerBody :: forall r. ReactComponent { | r }
foreign import drawerFooter :: forall r. ReactComponent { | r }
foreign import drawerHandle :: forall r. ReactComponent { | r }
foreign import drawerCloseTrigger :: forall r. ReactComponent { | r }

-- Popover
foreign import popover :: forall r. ReactComponent { | r }
foreign import popoverTrigger :: forall r. ReactComponent { | r }
foreign import popoverContent :: forall r. ReactComponent { | r }
foreign import popoverDialog :: forall r. ReactComponent { | r }
foreign import popoverHeading :: forall r. ReactComponent { | r }
foreign import popoverArrow :: forall r. ReactComponent { | r }

-- Tooltip
foreign import tooltip :: forall r. ReactComponent { | r }
foreign import tooltipTrigger :: forall r. ReactComponent { | r }
foreign import tooltipContent :: forall r. ReactComponent { | r }
foreign import tooltipArrow :: forall r. ReactComponent { | r }

-- Dropdown
foreign import dropdown :: forall r. ReactComponent { | r }
foreign import dropdownTrigger :: forall r. ReactComponent { | r }
foreign import dropdownPopover :: forall r. ReactComponent { | r }
foreign import dropdownMenu :: forall r. ReactComponent { | r }
foreign import dropdownSection :: forall r. ReactComponent { | r }
foreign import dropdownItem :: forall r. ReactComponent { | r }
foreign import dropdownItemIndicator :: forall r. ReactComponent { | r }
foreign import dropdownSubmenuIndicator :: forall r. ReactComponent { | r }
foreign import dropdownSubmenuTrigger :: forall r. ReactComponent { | r }

-- Menu
foreign import menu :: forall r. ReactComponent { | r }
foreign import menuItem :: forall r. ReactComponent { | r }
foreign import menuItemIndicator :: forall r. ReactComponent { | r }
foreign import menuItemSubmenuIndicator :: forall r. ReactComponent { | r }
foreign import menuSection :: forall r. ReactComponent { | r }

-- Table
foreign import table :: forall r. ReactComponent { | r }
foreign import tableScrollContainer :: forall r. ReactComponent { | r }
foreign import tableContent :: forall r. ReactComponent { | r }
foreign import tableHeader :: forall r. ReactComponent { | r }
foreign import tableColumn :: forall r. ReactComponent { | r }
foreign import tableBody :: forall r. ReactComponent { | r }
foreign import tableRow :: forall r. ReactComponent { | r }
foreign import tableCell :: forall r. ReactComponent { | r }
foreign import tableFooter :: forall r. ReactComponent { | r }

-- Pagination
foreign import pagination :: forall r. ReactComponent { | r }
foreign import paginationSummary :: forall r. ReactComponent { | r }
foreign import paginationContent :: forall r. ReactComponent { | r }
foreign import paginationItem :: forall r. ReactComponent { | r }
foreign import paginationLink :: forall r. ReactComponent { | r }
foreign import paginationPrevious :: forall r. ReactComponent { | r }
foreign import paginationPreviousIcon :: forall r. ReactComponent { | r }
foreign import paginationNext :: forall r. ReactComponent { | r }
foreign import paginationNextIcon :: forall r. ReactComponent { | r }
foreign import paginationEllipsis :: forall r. ReactComponent { | r }

-- Breadcrumbs
foreign import breadcrumbs :: forall r. ReactComponent { | r }
foreign import breadcrumbsItem :: forall r. ReactComponent { | r }

-- ProgressBar
foreign import progressBar :: forall r. ReactComponent { | r }
foreign import progressBarOutput :: forall r. ReactComponent { | r }
foreign import progressBarTrack :: forall r. ReactComponent { | r }
foreign import progressBarFill :: forall r. ReactComponent { | r }

-- ProgressCircle
foreign import progressCircle :: forall r. ReactComponent { | r }
foreign import progressCircleTrack :: forall r. ReactComponent { | r }
foreign import progressCircleTrackCircle :: forall r. ReactComponent { | r }
foreign import progressCircleFillCircle :: forall r. ReactComponent { | r }

-- Alert
foreign import alert :: forall r. ReactComponent { | r }
foreign import alertIndicator :: forall r. ReactComponent { | r }
foreign import alertContent :: forall r. ReactComponent { | r }
foreign import alertTitle :: forall r. ReactComponent { | r }
foreign import alertDescription :: forall r. ReactComponent { | r }

-- Toast
foreign import toastProvider :: forall r. ReactComponent { | r }
foreign import toastContent :: forall r. ReactComponent { | r }
foreign import toastIndicator :: forall r. ReactComponent { | r }
foreign import toastTitle :: forall r. ReactComponent { | r }
foreign import toastDescription :: forall r. ReactComponent { | r }
foreign import toastActionButton :: forall r. ReactComponent { | r }
foreign import toastCloseButton :: forall r. ReactComponent { | r }
