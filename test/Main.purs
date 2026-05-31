module Test.Main where

import Prelude

import Effect (Effect)
import Effect.Aff (launchAff_)
import Test.HeroUI.HeroUI3Spec as HeroUI3Spec
import Test.JsdomSetup (registerJsdom)
import Test.Spec.Reporter (consoleReporter)
import Test.Spec.Runner (runSpec)

main :: Effect Unit
main = do
  registerJsdom
  launchAff_ $ runSpec [ consoleReporter ] HeroUI3Spec.spec
