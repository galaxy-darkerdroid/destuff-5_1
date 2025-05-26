@echo off
cls
:start
cls
echo  
echo ****************************************
echo DeStuff for Samsung Devices v1
echo Includes: DeBloat, DeSamsung, DeGoogle
echo by @galaxy-darkerdroid (Github)
echo ****************************************
echo Tested One UI version: 5.1
echo Tested on Galaxy Note20 Ultra 4G + MicroG
echo ****************************************
echo Known bugs after DeGoogle:
echo - ChatGPT
echo - Galaxy Watch Pairing (WearOS)
echo - Some things can not be ticked in MicroG
echo - More things arent tested yet
echo ****************************************
echo We are not responsible for the damages 
echo you done for your devices
echo ****************************************
pause
echo ****************************************
echo First Steps
echo ****************************************
echo 0.0. Enable Dev Mode in your Samsung Device
echo 0.1. Enable USB debugging and give permission
echo 1.0. Install Magisk
echo 2.0. Enable Zygisk but DO NOT enable Enforce DenyList
echo 3.0. Install PlayIntegrityFix and LSPosed
echo 3.1. Download FakeGApps LSPosed module
echo 3.2  Enable only System Framework then reboot
pause
cls
echo ****************************************
echo DeStuff for Samsung Devices v1
echo Includes: DeBloat, DeSamsung, DeGoogle
echo by @galaxy-darkerdroid (Github)
echo ****************************************
echo What do you wanna do?
echo ****************************************
echo DESTUFF OPTIONS
echo 1. Debloat + DeSamsung
echo 2. DeGoogle
echo ----------------------------------------
echo OTHER DESTUFF OPTIONS:
echo B. Debloat Only (coming soon)
echo S. DeSamsung Only 
echo ----------------------------------------
echo APPS AND STUFF
echo 3. Install some alternative stuff and other stuff 
echo ----------------------------------------
echo REBOOT OPTIONS
echo 4. Reboot to System
echo 5. Reboot to Recovery
echo ----------------------------------------
echo OTHER OPTIONS
echo C. Command Line
echo I. Info and Updates (coming soon)
echo ----------------------------------------
set choice=
set /p choice=Select the option you want to do: 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto debloat
if '%choice%'=='B' goto notavailable
if '%choice%'=='S' goto notavailable
if '%choice%'=='2' goto degoogle
if '%choice%'=='3' goto apk
if '%choice%'=='4' goto rebootsystem
if '%choice%'=='5' goto rebootrecovery
if '%choice%'=='C' goto cmd
if '%choice%'=='I' goto notavailable
ECHO "%choice%" is not valid, try again
ECHO.
cls
:apk
cls
echo ****************************************
echo 0.0. Installing some alternative stuff
echo and other stuff
echo ****************************************
echo Installing Aurora Store
adb install aurorastore.apk
echo Installing F-Droid
adb install fdroid.apk
echo Installing MicroG Vending
adb install vending.apk
echo Installing Patched GoodLock
adb install goodluck.apk
echo Installing KnoxPatch (Needs LSPosed!)
adb install knoxpatch.apk
echo Installing Viper4Android (Install driver from Magisk)
adb install viper4android.apk
echo Installing Disable Flag Secure... (Needs LSPosed!)
adb install disableflagsecure.apk
echo .
echo .
echo Installation Successful
pause
cls
goto start
cls
:rebootsystem
cls
echo ****************************************
echo Reboot to System
echo ****************************************
adb reboot
pause
cls
goto start
:debloat
cls
echo ****************************************
echo 1. Let's start debloating! :)
echo ****************************************
adb shell pm uninstall --user 0 com.android.chrome
adb shell pm uninstall --user 0 com.sec.android.app.chromecustomizations
adb shell pm uninstall --user 0 com.netflix.mediaclient
adb shell pm uninstall --user 0 com.netflix.partner.activation
adb shell pm uninstall --user 0 com.hiya.star
adb shell pm uninstall --user 0 com.google.android.googlequicksearchbox
adb shell pm uninstall --user 0 com.google.android.feedback
adb shell pm uninstall --user 0 com.google.android.apps.tachyon
adb shell pm uninstall --user 0 com.google.android.youtube
adb shell pm uninstall --user 0 com.google.android.apps.youtube.music
adb shell pm uninstall --user 0 com.google.android.apps.docs
adb shell pm uninstall --user 0 com.google.android.apps.photos
adb shell pm uninstall --user 0 com.google.android.videos
adb shell pm uninstall --user 0 com.android.providers.partnerbookmarks
adb shell pm uninstall --user 0 com.samsung.android.bixby.wakeup
adb shell pm uninstall --user 0 com.samsung.android.app.spage
adb shell pm uninstall --user 0 com.samsung.android.bixby.service
adb shell pm uninstall --user 0 com.samsung.android.bixby.agent
adb shell pm uninstall --user 0 com.samsung.android.bixby.agent.dummy
adb shell pm uninstall --user 0 com.samsung.android.app.settings.bixby
adb shell pm uninstall --user 0 com.samsung.systemui.bixby2
adb shell pm uninstall --user 0 com.samsung.android.app.routines
adb shell pm uninstall --user 0 com.samsung.android.visionintelligence
adb shell pm uninstall --user 0 com.samsung.android.bixbyvision.framework
adb shell pm uninstall --user 0 com.samsung.knox.keychain
adb shell pm uninstall --user 0 com.samsung.knox.securefolder
adb shell pm uninstall --user 0 com.samsung.android.knox.analytics.uploader
adb shell pm uninstall --user 0 com.knox.vpn.proxyhandler
adb shell pm uninstall --user 0 com.sec.enterprise.knox.cloudmdm.smdms
adb shell pm uninstall --user 0 com.samsung.android.knox.pushmanager
adb shell pm uninstall --user 0 com.samsung.android.bbc.bbcagent
adb shell pm uninstall --user 0 com.samsung.klmsagent
adb shell pm uninstall --user 0 com.sec.android.diagmonagent
adb shell pm uninstall --user 0 com.samsung.android.dqagent
adb shell pm uninstall --user 0 com.samsung.android.sm.devicesecurity
adb shell pm uninstall --user 0 com.sec.modem.settings
adb shell pm uninstall --user 0 com.samsung.android.aremoji
adb shell pm uninstall --user 0 com.samsung.android.ardrawing
adb shell pm uninstall --user 0 com.samsung.android.livestickers
adb shell pm uninstall --user 0 com.sec.android.mimage.avatarstickers
adb shell pm uninstall --user 0 com.samsung.android.aremojieditor
adb shell pm uninstall --user 0 com.samsung.android.stickercenter
adb shell pm uninstall --user 0 com.samsung.android.service.livedrawing
adb shell pm uninstall --user 0 com.samsung.android.spayfw
adb shell pm uninstall --user 0 com.samsung.android.mateagent
adb shell pm uninstall --user 0 com.samsung.android.samsungpassautofill
adb shell pm uninstall --user 0 com.samsung.android.samsungpass
adb shell pm uninstall --user 0 com.samsung.android.authfw
adb shell pm uninstall --user 0 com.samsung.android.tapack.authfw
adb shell pm uninstall --user 0 com.samsung.android.rubin.app
adb shell pm uninstall --user 0 com.samsung.safetyinformation
adb shell pm uninstall --user 0 com.sec.android.app.apex
adb shell pm uninstall --user 0 com.sec.android.app.billing
adb shell pm uninstall --user 0 com.samsung.android.kidsinstaller
adb shell pm uninstall --user 0 com.samsung.android.app.camera.sticker.facearavatar.preload
adb shell pm uninstall --user 0 com.sec.spp.push
adb shell pm uninstall --user 0 com.samsung.android.ipsgeofence
adb shell pm uninstall --user 0 com.samsung.android.securitylogagent
adb shell pm uninstall --user 0 com.sec.location.nsflp2
adb shell pm uninstall --user 0 com.microsoft.skydrive
adb shell pm uninstall --user 0 com.microsoft.appmanager
adb shell pm uninstall --user 0 com.samsung.android.mdx
adb shell pm uninstall --user 0 com.touchtype.swiftkey
adb shell pm uninstall --user 0 com.swiftkey.swiftkeyconfigurator
adb shell pm uninstall --user 0 com.facebook.services
adb shell pm uninstall --user 0 com.facebook.system
adb shell pm uninstall --user 0 com.facebook.appmanager
adb shell pm uninstall --user 0 com.facebook.katana
adb shell pm uninstall --user 0 com.sec.android.app.samsungapps
adb shell pm uninstall --user 0 com.osp.app.signin
adb shell pm uninstall --user 0 com.samsung.android.scloud
adb shell pm uninstall --user 0 com.samsung.android.game.gamehome
adb shell pm uninstall --user 0 com.samsung.android.game.gametools
adb shell pm uninstall --user 0 com.samsung.android.game.gos
adb shell pm uninstall --user 0 com.samsung.android.game.gamehome
adb shell pm uninstall --user 0 com.samsung.android.game.gametools
adb shell pm uninstall --user 0 com.samsung.android.game.gos
adb shell pm uninstall --user 0 com.samsung.android.themestore
adb shell pm uninstall --user 0 com.samsung.android.themecenter
adb shell pm uninstall --user 0 com.google.audio.hearing.visualization.accessibility.scribe
adb shell pm uninstall --user 0 com.samsung.android.fmm
adb shell pm uninstall --user 0 com.samsung.android.accessibility.talkback
adb shell pm uninstall --user 0 com.samsung.android.icecone
adb shell pm uninstall --user 0 com.android.hotwordenrollment.okgoogle
adb shell pm uninstall --user 0 com.android.hotwordenrollment.xgoogle
adb shell pm uninstall --user 0 com.samsung.android.arzone
adb shell pm uninstall --user 0 com.samsung.android.mapsagent
adb shell pm uninstall --user 0 com.samsung.sec.android.application.csc
adb shell pm uninstall --user 0 com.sec.android.gallery3d
adb shell pm uninstall --user 0 com.samsung.storyservice
adb shell pm uninstall --user 0 com.samsung.cmh
adb shell pm uninstall --user 0 com.samsung.faceservice
echo .
echo .
echo Done!
pause
cls
goto start
:degoogle 
cls
echo ****************************************
echo 2.0. Let's DeGoogle! :)
echo ****************************************
pause
adb shell pm uninstall --user 0 com.google.android.gms
adb shell pm uninstall --user 0 com.android.vending
adb shell pm uninstall --user 0 com.google.android.gsf
adb shell pm uninstall --user 0 com.google.android.feedback
adb shell pm uninstall --user 0 com.google.android.partnersetup
adb shell pm uninstall --user 0 com.google.android.setupwizard
adb shell pm uninstall --user 0 com.google.android.onetimeinitializer
adb shell pm uninstall --user 0 com.google.android.googlequicksearchbox
cls
echo ****************************************
echo 2.1. Last Steps of DeGoogling
echo ****************************************
echo Remove google apps and permission files - if you don't remove permissions files installing MicroG magisk
echo module give you permission error: (Like with removing updates you don't need to remove everything)
pause
cls
echo Please copy these commands and use them:
echo "
echo su
echo mount -o rw,remount -t ext4 /product
echo rm -f /product/etc/permissions/privapp-permissions-google-product.xml
echo rm -f /product/etc/permissions/split-permissions-google.xml
echo rm -f /product/etc/permissions/turboapk-permissions.xml
echo rm -f /product/etc/permissions/carrerwifi.xml
echo rm -f /product/etc/default-permissions/default-permissions-google.xml
echo rm -rf /product/priv-app/GmsCore
echo rm -rf /product/priv-app/GoogleOneTimeInitializer
echo rm -rf /product/priv-app/GooglePartnerSetup
echo rm -rf /product/priv-app/GoogleRestore
echo rm -rf /product/priv-app/Phonesky
echo rm -rf /product/priv-app/Turbo
echo rm -rf /product/priv-app/Velvet
echo reboot
echo "
echo .
echo .
echo .
echo .
echo .
pause
adb shell
cls
goto start
:rebootrecovery
cls
echo ****************************************
echo Reboot to Recovery
echo ****************************************
adb reboot recovery
pause
cls
goto start
:info
cls
echo This section is not ready right now! 
echo ****************************************
echo DeStuff for Samsung Devices v1
echo Includes: DeBloat, DeSamsung, DeGoogle
echo by @galaxy-darkerdroid (Github)
echo ****************************************
echo Tested One UI version: 5.1
echo Tested on Galaxy Note20 Ultra 4G + MicroG
echo ****************************************
echo Known bugs after DeGoogle:
echo - ChatGPT
echo - Galaxy Watch Pairing (WearOS)
echo - Some things can not be ticked in MicroG
echo - More things arent tested yet
echo ****************************************
echo We are not responsible for the damages 
echo you done for your devices
echo ****************************************
echo You can get the updates from my Github!
echo ****************************************
pause
cls
goto start
:notavailable
cls
echo ****************************************
echo Sorry, this option isnt available
echo right now.
echo ****************************************
pause
cls
goto start
:cmd
cls
echo ****************************************
echo You are now in command line.
echo If you wanna restart the app;
echo type "destuff-5_1.bat" then press enter.
echo ****************************************
cmd



