module HeroUI.Pagination where

import Prelude

import React.Basic (JSX)
import Yoga.React.DOM.Internal (class IsJSX)
import Data.Function.Uncurried (runFn4)
import HeroUI.Types (Size, sizeToString)
import HeroUI.Internal (class CoerceHeroProps, createElementTransformImpl)
import HeroUI.Raw as Raw

type PaginationProps r = (size :: Size, className :: String | r)

pagination
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | PaginationProps () }
  => { | givenProps }
  -> kids
  -> JSX
pagination props kids = runFn4 createElementTransformImpl { size: sizeToString } Raw.pagination props kids

type PaginationItemProps r = (isActive :: Boolean, className :: String | r)

paginationItem
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | PaginationItemProps () }
  => { | givenProps }
  -> kids
  -> JSX
paginationItem props kids = runFn4 createElementTransformImpl {} Raw.paginationItem props kids

type PaginationLinkProps r = (href :: String, isActive :: Boolean, className :: String | r)

paginationLink
  :: forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceHeroProps { | givenProps } { | nonDataProps } { | PaginationLinkProps () }
  => { | givenProps }
  -> kids
  -> JSX
paginationLink props kids = runFn4 createElementTransformImpl {} Raw.paginationLink props kids

type SectionProps r = (className :: String | r)

paginationSummary
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
paginationSummary props kids = runFn4 createElementTransformImpl {} Raw.paginationSummary props kids

paginationContent
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
paginationContent props kids = runFn4 createElementTransformImpl {} Raw.paginationContent props kids

paginationPrevious
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
paginationPrevious props kids = runFn4 createElementTransformImpl {} Raw.paginationPrevious props kids

paginationPreviousIcon
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
paginationPreviousIcon props kids = runFn4 createElementTransformImpl {} Raw.paginationPreviousIcon props kids

paginationNext
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
paginationNext props kids = runFn4 createElementTransformImpl {} Raw.paginationNext props kids

paginationNextIcon
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
paginationNextIcon props kids = runFn4 createElementTransformImpl {} Raw.paginationNextIcon props kids

paginationEllipsis
  :: forall g n k. IsJSX k => CoerceHeroProps { | g } { | n } { | SectionProps () } => { | g } -> k -> JSX
paginationEllipsis props kids = runFn4 createElementTransformImpl {} Raw.paginationEllipsis props kids
