copy to device.cyanogenmod/P02012101054280818083
rm -rf app fonts framework media usr



1. delete some apks in /app & directory /partner-app
2. extract all deleted apks, delete included .so in /lib
3. delete libWnnEngDic.so & libWnnJpnDic.so in /lib, guess it related with deleted libwnndict.so in TouchPal.apk

4. delete
\media\bootanimation.zip
\media\audio\alarms\Alarm_Classic.ogg
\media\audio\alarms\Alarm_Rooster_02.ogg
\media\audio\ringtones\CrazyDream.ogg
\media\audio\ringtones\Talent_life.ogg
\media\audio\ui\Bootsound.mp3
\media\audio\ui\camera_click.ogg

5. delete
\lib\modules\libra.ko
\lib\modules\librasdioif.ko
\lib\modules

6. delete pcsuite.iso in /etc

7. add apk to /app & .so to /lib
189mail.apk
audiorecorder.apk
autostarts.apk
BaiduMap.apk
CalendarProvider.apk
calengoo.apk
cmb.mbank.apk
cmbc.mbank.apk
docstogo.apk
evernote.apk
ewallet.apk
foxnews.apk
GoogleCalendarSyncAdapter.apk
GoogleContactsSyncAdapter.apk
GoogleServicesFramework.apk
gpstestplus.apk
iflytek.ttsres.apk
k9.apk
Link2SD.apk
moonreader.apk
netease.newsreader.apk
netease.pris.apk
oupeng-mini.apk
PhoneArea.apk
PicFolder.apk
quickboot.apk
RealCalcPlus.apk
RootExplorer.apk
securesettings.helper.apk
securesettings.plugin.apk
spdb.mbank.apk
Superuser_3.0.7.apk
swiftp.apk
tianqitong.apk
VoiceSearch.apk --> should not replace original libvoicesearhc.so in /lib
weibo.apk
wikipedia.apk
youdao.dict.apk
Zeam.apk

8. replace
\bin\busybox
\bin\su

9. add \bin\re4pc

10. enable agps setting in /etc/gps.conf

11. enable su in /etc/init.athwlan.sh

12. need to study more in build.prop
persist.usb.enable_cdrom= 0x5656 -> 0

13. readme.txt added

14.  reverse from 7
remove apk from app and so from lib
189mail.apk
autostarts.apk
BaiduMap.apk
cmb.mbank.apk
cmbc.mbank.apk
docstogo.apk
evernote.apk
foxnews.apk
Link2SD.apk
netease.newsreader.apk
netease.pris.apk
oupeng-mini.apk
spdb.mbank.apk
tianqitong.apk
weibo.apk
wikipedia.apk
youdao.dict.apk

15. Add Browser, Calculator, Filer to app

16. Add TitaniumBackup and .so

17. Add iflytek_tts and .so, can not work, need to install once again

18. Add Tasker

19. remove phonearea.apk and libqcareacd.so, now use LBE

20. re-add music.apk

adb shell
su
cd /system/xbin
busybox --install .
