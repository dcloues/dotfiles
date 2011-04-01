import XMonad
import qualified XMonad.StackSet as W
import XMonad.Config.Gnome
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers
import XMonad.Layout.LayoutHints
import XMonad.Layout.PerWorkspace
import XMonad.Layout.ThreeColumns
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO

layouts = modifiers . onWorkspace "3" threeCol $ layoutHook defaultConfig
     where
        modifiers = avoidStruts
        threeCol = ThreeColMid 1 (3/100) (1/2)

manageHooks = composeAll
    [ isDialog --> doF W.shiftMaster <+> doFloat
    , manageDocks
    ]

main = do
    xmproc <- spawnPipe "/usr/bin/xmobar /home/dcloues/.xmobarrc"
    xmonad $ defaultConfig
        { manageHook = manageHooks
        , layoutHook = avoidStruts $ layoutHook defaultConfig
        , logHook = dynamicLogWithPP $ xmobarPP
                        { ppOutput = hPutStrLn xmproc
                        , ppTitle  = xmobarColor "green" "" . shorten 50
                        }
        , terminal   = "urxvt"
        }
