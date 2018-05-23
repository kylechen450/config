import XMonad
import XMonad.Layout.Spacing
import XMonad.Config.Desktop
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.DynamicLog

--main = xmonad def
main = xmonad =<< xmobar desktopConfig 
    { terminal    = "xfce4-terminal"
    , modMask     = mod1Mask 
    , borderWidth = 0
    , focusedBorderColor = "#c9c9c9"
    , normalBorderColor = "#000000"
    , layoutHook = avoidStruts $ myLayout
    , manageHook=manageHook defaultConfig <+> manageDocks
    }

myLayout = tiled ||| Mirror tiled ||| Full
 	 where
   		 tiled = smartSpacing 5 $ Tall nmaster delta ratio
  	 	 nmaster = 1
  	 	 ratio = 1/2
  	 	 delta = 3/100
