import XMonad
import XMonad.Layout.Spacing
import XMonad.Config.Desktop
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.SetWMName
import XMonad.Util.Cursor


--main = xmonad def
main = xmonad =<< xmobar desktopConfig 
    { terminal = "urxvt"
    , modMask = mod1Mask 
    , borderWidth = 0
    , focusedBorderColor = "#c9c9c9"
    , normalBorderColor = "#000000"
    , layoutHook = avoidStruts $ myLayout
    , manageHook=manageHook defaultConfig <+> manageDocks
    , startupHook = myStartupHook
    , workspaces = myWorkspaces
    }

myLayout = tiled ||| Mirror tiled ||| Full
 	 where
   		 tiled = smartSpacing 5 $ Tall nmaster delta ratio
  	 	 nmaster = 1
  	 	 ratio = 1/2
  	 	 delta = 3/100


myStartupHook = do
              	 spawn "~/.fehbg &"
		 setWMName "LG3D"
		 setDefaultCursor xC_left_ptr
		 spawn "xrandr --dpi 96"

myWorkspaces :: [WorkspaceId]
myWorkspaces = ["1:Home", "2:Web", "3:Code","4","5","6","7","8","9:Terminal"]
