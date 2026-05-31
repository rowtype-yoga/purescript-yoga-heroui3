module HeroUI.Drawer.Stories (basic) where

import Prelude hiding (div)

import React.Basic (JSX)
import HeroUI.Button as Btn
import HeroUI.Drawer as Drawer
import Yoga.React (component)
import Yoga.React.DOM.HTML (div)
import Yoga.React.DOM.Internal (text)
import YogaStories.Story (story)

mkDrawer :: { title :: String } -> JSX
mkDrawer = component "DrawerStory" \props -> React.do
  pure $ div { className: "dark bg-background text-foreground p-6 rounded-lg" }
    [ Drawer.drawer {}
        [ Btn.button { variant: Btn.Primary } (text "Open drawer")
        , Drawer.drawerBackdrop { variant: Drawer.Blur }
            [ Drawer.drawerContent { placement: Drawer.Right }
                [ Drawer.drawerDialog {}
                    [ Drawer.drawerHeader {} [ Drawer.drawerHeading {} (text props.title) ]
                    , Drawer.drawerBody {} (text "Drawer body content.")
                    , Drawer.drawerFooter {} [ Drawer.drawerCloseTrigger {} (text "Close") ]
                    ]
                ]
            ]
        ]
    ]

basic :: JSX
basic = story "basic" mkDrawer { title: "Settings" }
