module HeroUI.Drawer.Stories (basic) where

import Prelude hiding (div)

import React.Basic (JSX)
import HeroUI.Button as Btn
import HeroUI.Drawer as Drawer
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import YogaStories.Story (story)

mkDrawer :: { title :: String } -> JSX
mkDrawer = component "DrawerStory" \props -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg" }
    [ Drawer.drawer {}
        [ Btn.button { variant: Btn.Primary } "Open drawer"
        , Drawer.drawerBackdrop { variant: Drawer.Blur }
            [ Drawer.drawerContent { placement: Drawer.Right }
                [ Drawer.drawerDialog {}
                    [ Drawer.drawerHeader {} [ Drawer.drawerHeading {} props.title ]
                    , Drawer.drawerBody {} "Drawer body content."
                    , Drawer.drawerFooter {} [ Drawer.drawerCloseTrigger {} "Close" ]
                    ]
                ]
            ]
        ]
    ]

basic :: JSX
basic = story "basic" mkDrawer { title: "Settings" }
