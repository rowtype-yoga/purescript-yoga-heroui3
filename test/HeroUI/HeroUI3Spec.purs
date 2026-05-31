module Test.HeroUI.HeroUI3Spec where

import Prelude

import Effect.Class (liftEffect)
import HeroUI.Button as Btn
import HeroUI.Card as Card
import HeroUI.Checkbox as Checkbox
import HeroUI.Chip as Chip
import HeroUI.Hooks as Hooks
import HeroUI.Input as Input
import HeroUI.Separator as Separator
import HeroUI.Spinner as Spinner
import HeroUI.Switch as Switch
import HeroUI.Toast as Toast
import HeroUI.Types as T
import React.Basic (JSX)
import React.Basic.Hooks as React
import React.TestingLibrary (cleanup, render)
import Test.Spec (Spec, after_, describe, it)
import Test.Spec.Assertions (shouldEqual)
import Test.Spec.Assertions.DOM (textContentShouldEqual)
import Yoga.React (component)
import Yoga.React.DOM.Internal (text)

spec :: Spec Unit
spec = after_ cleanup $ describe "purescript-yoga-heroui3 (HeroUI v3)" do
  it "Button renders children and accepts a typed variant + type" do
    { findByText } <- render submitButton
    btn <- findByText "Submit"
    btn `textContentShouldEqual` "Submit"

  it "Aria props compile and reach the DOM (no provider needed in v3)" do
    { findByLabelText } <- render ariaButton
    el <- findByLabelText "close dialog"
    el `textContentShouldEqual` "X"

  it "Card renders as a compound component" do
    { findByText } <- render cardHost
    title <- findByText "Card title"
    title `textContentShouldEqual` "Card title"

  it "Chip accepts color/size/variant from the shared + per-component types" do
    { findByText } <- render chipHost
    el <- findByText "new"
    el `textContentShouldEqual` "new"

  it "Switch and Checkbox accept boolean state props" do
    _ <- render switchAndCheckbox
    pure unit

  it "Spinner and Separator render" do
    _ <- render spinnerAndSeparator
    pure unit

  it "useOverlayState exposes isOpen (replaces v2 useDisclosure)" do
    { findByText } <- render overlayHost
    initial <- findByText "closed"
    initial `textContentShouldEqual` "closed"

  it "Toast imperative API (success/close/clear) is callable" do
    key <- liftEffect $ Toast.toastSuccess (text "saved")
    liftEffect $ Toast.closeToast key
    liftEffect Toast.closeAllToasts

  it "InputType strings round-trip" do
    Input.inputTypeToString Input.InputTypeEmail `shouldEqual` "email"
    Input.inputTypeToString Input.InputTypeDateTimeLocal `shouldEqual` "datetime-local"

submitButton :: JSX
submitButton =
  Btn.button { variant: Btn.Primary, type: Btn.ButtonTypeSubmit } (text "Submit")

ariaButton :: JSX
ariaButton = Btn.button { "aria-label": "close dialog" } (text "X")

cardHost :: JSX
cardHost =
  Card.card { variant: Card.Default }
    [ Card.cardHeader {} [ Card.cardTitle {} (text "Card title") ]
    , Card.cardContent {} (text "body")
    ]

chipHost :: JSX
chipHost =
  Chip.chip { color: T.Accent, size: T.Sm, variant: Chip.Soft } (text "new")

switchAndCheckbox :: JSX
switchAndCheckbox =
  Card.card {}
    [ Switch.switch_ { defaultSelected: true, size: T.Md } (text "on")
    , Checkbox.checkbox { defaultSelected: false, variant: T.Primary } (text "agree")
    ]

spinnerAndSeparator :: JSX
spinnerAndSeparator =
  Card.card {}
    [ Spinner.spinner { color: Spinner.Accent, size: Spinner.Md } ([] :: Array JSX)
    , Separator.separator { orientation: T.Horizontal } ([] :: Array JSX)
    ]

overlayHost :: JSX
overlayHost = overlayComponent {}

overlayComponent :: {} -> JSX
overlayComponent = component "OverlayHost" \(_ :: {}) -> React.do
  state <- Hooks.useOverlayState {}
  pure $ text (if state.isOpen then "open" else "closed")
