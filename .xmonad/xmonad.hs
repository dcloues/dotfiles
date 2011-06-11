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

layouts = modifiers . onWorkspace "2" threeCol $ layoutHook defaultConfig
     where
        modifiers = avoidStruts
        threeCol = ThreeColMid 2 (3/100) (1/2)

--layouts = Full ||| tabbed shrinkText defaultTConf ||| Accordianl
--layouts = avoidStruts . Accordian

manageHooks = composeAll
    [ isDialog --> doF W.shiftMaster <+> doFloat
    , manageDocks
    ]

main = do
    xmproc <- spawnPipe "/usr/bin/xmobar /home/dcloues/.xmobarrc"
    xmonad $ defaultConfig
        { manageHook = manageHooks
        , layoutHook = layouts
        , logHook = dynamicLogWithPP $ xmobarPP
                        { ppOutput = hPutStrLn xmproc
                        , ppTitle  = xmobarColor "green" "" . shorten 50
                        }
        , terminal   = "urxvt"
        }
