diff --git a/package/base-files/files/bin/config_generate b/package/base-files/files/bin/config_generate
index d41d0fbf..3f3144cf 100755
--- a/package/base-files/files/bin/config_generate
+++ b/package/base-files/files/bin/config_generate
@@ -147,7 +147,7 @@ generate_network() {
 		static)
 			local ipad
 			case "$1" in
-				lan) ipad=${ipaddr:-"192.168.1.1"} ;;
+				lan) ipad=${ipaddr:-"192.168.31.1"} ;;
 				*) ipad=${ipaddr:-"192.168.$((addr_offset++)).1"} ;;
 			esac
 
diff --git a/package/kernel/mt-drivers/mt_wifi/files/mt7615.1.5G.dat b/package/kernel/mt-drivers/mt_wifi/files/mt7615.1.5G.dat
index 77765bea..7fff7bff 100644
--- a/package/kernel/mt-drivers/mt_wifi/files/mt7615.1.5G.dat
+++ b/package/kernel/mt-drivers/mt_wifi/files/mt7615.1.5G.dat
@@ -113,7 +113,7 @@ FixedTxMode=
 ForceRoamSupport=
 FragThreshold=2346
 FreqDelta=0
-FtSupport=0
+FtSupport=1
 GreenAP=1
 G_BAND_256QAM=1
 HideSSID=0
diff --git a/package/system/zram-swap/files/zram.init b/package/system/zram-swap/files/zram.init
index 1a9cefef..e1c7f4ba 100755
--- a/package/system/zram-swap/files/zram.init
+++ b/package/system/zram-swap/files/zram.init
@@ -2,8 +2,9 @@
 
 START=15
 
-extra_command "compact" "Trigger compaction for all zram swap devices"
-extra_command "status" "Print out information & statistics about zram swap devices"
+EXTRA_COMMANDS="compact status"
+EXTRA_HELP="	compact         Trigger compaction for all zram swap devices
+        status          Print out information & statistics about zram swap devices"
 
 ram_getsize()
 {
diff --git a/target/linux/ramips/dts/mt7621_xiaomi_router-ac2100.dtsi b/target/linux/ramips/dts/mt7621_xiaomi_router-ac2100.dtsi
index 04daea14..64f00649 100755
--- a/target/linux/ramips/dts/mt7621_xiaomi_router-ac2100.dtsi
+++ b/target/linux/ramips/dts/mt7621_xiaomi_router-ac2100.dtsi
@@ -44,7 +44,7 @@
         mtketh-wan = "eth1";
         mtketh-ppd = "eth0";
         mtketh-lan = "eth0";
-	ext-devices = "wlan0","wlan1","rax0","ra0", "rai0","apclii0","apclix0", "apcli0";
+	ext-devices = "wlan0","wlan1","rax0","ra0", "rai0","rai1","apclii0","apclix0", "apcli0";
         mtketh-max-gmac = <2>;
         status = "okay";
 };
