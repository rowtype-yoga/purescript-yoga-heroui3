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
