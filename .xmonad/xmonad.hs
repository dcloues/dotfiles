import XMonad
import qualified XMonad.StackSet as W
import XMonad.Config.Gnome
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers
import XMonad.Hooks.UrgencyHook
import XMonad.Layout.LayoutHints
import XMonad.Layout.PerWorkspace
import XMonad.Layout.ThreeColumns
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO

layouts = modifiers . onWorkspace "2" threeCol $ layoutHook defaultConfig
     where
        modifiers = avoidStruts
        threeCol = ThreeColMid 2 (3/100) (1/2)

myUrgentColor  = "#af0000"
myCurrentColor = "#00afff"
myTitleColor = "#ff8700"

manageHooks = composeAll
    [ isDialog --> doF W.shiftMaster <+> doFloat
    , manageDocks
    ]

main = do
    xmproc <- spawnPipe "/usr/bin/xmobar /home/dcloues/.xmobarrc"
    xmonad 
        $ withUrgencyHook NoUrgencyHook
        $ defaultConfig
        { manageHook = manageHooks
        , layoutHook = layouts
        , logHook = dynamicLogWithPP $ xmobarPP
                        { ppOutput  = hPutStrLn xmproc
                        , ppCurrent = xmobarColor myCurrentColor "" . wrap "" "@" . xmobarStrip
                        , ppTitle   = xmobarColor myTitleColor "" . shorten 70
                        , ppUrgent  = xmobarColor myUrgentColor "" . wrap "" "*" . trim . xmobarStrip
                        , ppHidden  = wrap "" " "
                        }
        , terminal   = "urxvt"
        }
