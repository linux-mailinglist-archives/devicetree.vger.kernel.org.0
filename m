Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B30C1256FF8
	for <lists+devicetree@lfdr.de>; Sun, 30 Aug 2020 21:09:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726430AbgH3TJ2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Aug 2020 15:09:28 -0400
Received: from mout.kundenserver.de ([217.72.192.74]:54637 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726178AbgH3TJ0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Aug 2020 15:09:26 -0400
Received: from buildfff.adridolf.com ([188.192.134.246]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1N2m7O-1kbW2X31fI-0134bK; Sun, 30 Aug 2020 21:09:13 +0200
From:   Adrian Schmutzler <freifunk@adrianschmutzler.de>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH] ARM: dts: rockchip: replace status value "ok" by "okay"
Date:   Sun, 30 Aug 2020 21:08:20 +0200
Message-Id: <20200830190820.20583-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:VMILs0fc/lgB4bgokLKf5qhOXV1lUMnyG4d1PXDT2qD2vO+JfPX
 Pshp2VwJE/pqLFM6IMjBUfLqt5evqw5PIpnfzcs+VbwU+ew3h/UdZyF4glc3TFTu3KGOasu
 kT8mHnV4h+MIt8zMxyvCHDriJd8sc0+o+XBXgQIY7wSMzfbmFToxCqQGebRCMhRpc7BXYeZ
 JksywrS9gs8wt9Gu+TH0w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:XNncUYEP9JI=:SdTCP6QJu3AZtSp01fdciX
 aK4wQDrsrOGzJGm3uDKvJrF8/Mf1/Imo9iCXKWY/S4d6BcBdt4brpWjSGcicpy7DscrifZbpV
 c2f1goQjVcp7Z2h6CSm2ZMG785pSEHzEJpkufg3EVrQRGZ8fG3+zbxzsvUGX5qe7ZAMJxR/5q
 4mkbHk/uogmGGdka/yb6xFqfOMa0Zay8FfCeFVkH5/SoiWkDSOs49BffGIxTC52in1Cw61Q4F
 14VLFj/4lPr41tLjRlClrz3ewJho4IPJEqo1dh90E7V0d3sUeSytSIjcPm8M/9ugP6dKZqTo8
 lcPdUaG9cbeVzGpwe+Roh36uL1wG1ZAQ7aeS4Lwjhxbi5BDrj/IkScyxE6ekuPOw+0m6ziRRT
 NOg8M4NN4K5H622AReJBH86KIZqJOrVRPiqo6IRc0Ab6nYnWajdRFo75A4bH7uohlYq15jndb
 EP3Bm0G5sIYTz3ik5tyMKIjlj5CDQhN/oub+QmakmVlMFX1NHHMOSzKqKL6r/3LmrEJISUJrS
 jKne5qUQYzB9/Q+hQH9VH6lShMiHrzX0kC4mmEimzI26ZaJAATuAHwnAMk5HSv5mbMxa4Nxlc
 ekw1f9PYhJqO2nMKCQ+rTKp+YfYKGzPcYKVIcAdixxEyscFR8KUBCPbsU+g//vMIwFuOqtLzv
 7aN03AU5XFBUymTXctr/sc+OlXhQOtD6yb8Kfq5yvFUQHL+FS8lN29FXXjA3eBk/mSubA1f9y
 8e+knfnpg70ar6jaBs+JKRaPYr/ExmJFW03qmkkjLxGYGQ3kG14aO6cmGnL5uAzws+bDyAeNH
 418S9u6gB3fxp18ePqLnphebARxD6eoAxd+5NTgqhNx0MaLoXWcxBKMOty05nMXW++9tt9DFU
 j1NNFC/xTda+LtZZZwhw==
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

While the DT parser recognizes "ok" as a valid value for the
"status" property, it is actually mentioned nowhere. Use the
proper value "okay" instead, as done in the majority of files
already.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 arch/arm/boot/dts/rk3288-evb.dtsi                 | 2 +-
 arch/arm/boot/dts/rk3288-firefly-reload-core.dtsi | 2 +-
 arch/arm/boot/dts/rk3288-firefly.dtsi             | 2 +-
 arch/arm/boot/dts/rk3288-miqi.dts                 | 2 +-
 arch/arm/boot/dts/rk3288-popmetal.dts             | 2 +-
 arch/arm/boot/dts/rk3288-r89.dts                  | 2 +-
 arch/arm/boot/dts/rk3288-rock2-square.dts         | 2 +-
 arch/arm/boot/dts/rk3288-tinker.dtsi              | 2 +-
 8 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-evb.dtsi b/arch/arm/boot/dts/rk3288-evb.dtsi
index 018802df4c0e..c4ca73b40d4a 100644
--- a/arch/arm/boot/dts/rk3288-evb.dtsi
+++ b/arch/arm/boot/dts/rk3288-evb.dtsi
@@ -247,7 +247,7 @@
 	pinctrl-0 = <&rgmii_pins>;
 	tx_delay = <0x30>;
 	rx_delay = <0x10>;
-	status = "ok";
+	status = "okay";
 };
 
 &gpu {
diff --git a/arch/arm/boot/dts/rk3288-firefly-reload-core.dtsi b/arch/arm/boot/dts/rk3288-firefly-reload-core.dtsi
index 61435d8ee37b..36efa36b7190 100644
--- a/arch/arm/boot/dts/rk3288-firefly-reload-core.dtsi
+++ b/arch/arm/boot/dts/rk3288-firefly-reload-core.dtsi
@@ -61,7 +61,7 @@
 	snps,reset-gpio = <&gpio4 RK_PB0 GPIO_ACTIVE_LOW>;
 	tx_delay = <0x30>;
 	rx_delay = <0x10>;
-	status = "ok";
+	status = "okay";
 };
 
 &i2c0 {
diff --git a/arch/arm/boot/dts/rk3288-firefly.dtsi b/arch/arm/boot/dts/rk3288-firefly.dtsi
index e5c4fd4ea67e..7fb582302b32 100644
--- a/arch/arm/boot/dts/rk3288-firefly.dtsi
+++ b/arch/arm/boot/dts/rk3288-firefly.dtsi
@@ -191,7 +191,7 @@
 	snps,reset-gpio = <&gpio4 RK_PB0 GPIO_ACTIVE_LOW>;
 	tx_delay = <0x30>;
 	rx_delay = <0x10>;
-	status = "ok";
+	status = "okay";
 };
 
 &gpu {
diff --git a/arch/arm/boot/dts/rk3288-miqi.dts b/arch/arm/boot/dts/rk3288-miqi.dts
index 213c9eb84f76..e3d13d66f405 100644
--- a/arch/arm/boot/dts/rk3288-miqi.dts
+++ b/arch/arm/boot/dts/rk3288-miqi.dts
@@ -108,7 +108,7 @@
 	snps,reset-gpio = <&gpio4 RK_PB0 GPIO_ACTIVE_LOW>;
 	tx_delay = <0x30>;
 	rx_delay = <0x10>;
-	status = "ok";
+	status = "okay";
 };
 
 &hdmi {
diff --git a/arch/arm/boot/dts/rk3288-popmetal.dts b/arch/arm/boot/dts/rk3288-popmetal.dts
index 6a51940398b5..e738eb732800 100644
--- a/arch/arm/boot/dts/rk3288-popmetal.dts
+++ b/arch/arm/boot/dts/rk3288-popmetal.dts
@@ -149,7 +149,7 @@
 	pinctrl-0 = <&rgmii_pins>;
 	tx_delay = <0x30>;
 	rx_delay = <0x10>;
-	status = "ok";
+	status = "okay";
 };
 
 &hdmi {
diff --git a/arch/arm/boot/dts/rk3288-r89.dts b/arch/arm/boot/dts/rk3288-r89.dts
index a258c7ae5329..527c529c8934 100644
--- a/arch/arm/boot/dts/rk3288-r89.dts
+++ b/arch/arm/boot/dts/rk3288-r89.dts
@@ -107,7 +107,7 @@
 	pinctrl-0 = <&rgmii_pins>;
 	tx_delay = <0x30>;
 	rx_delay = <0x10>;
-	status = "ok";
+	status = "okay";
 };
 
 &hdmi {
diff --git a/arch/arm/boot/dts/rk3288-rock2-square.dts b/arch/arm/boot/dts/rk3288-rock2-square.dts
index 3cca4d0f9b09..c4d1d142d8c6 100644
--- a/arch/arm/boot/dts/rk3288-rock2-square.dts
+++ b/arch/arm/boot/dts/rk3288-rock2-square.dts
@@ -156,7 +156,7 @@
 };
 
 &gmac {
-	status = "ok";
+	status = "okay";
 };
 
 &hdmi {
diff --git a/arch/arm/boot/dts/rk3288-tinker.dtsi b/arch/arm/boot/dts/rk3288-tinker.dtsi
index 90e9be443fe6..9c1e38c54eae 100644
--- a/arch/arm/boot/dts/rk3288-tinker.dtsi
+++ b/arch/arm/boot/dts/rk3288-tinker.dtsi
@@ -137,7 +137,7 @@
 	snps,reset-delays-us = <0 10000 1000000>;
 	tx_delay = <0x30>;
 	rx_delay = <0x10>;
-	status = "ok";
+	status = "okay";
 };
 
 &gpu {
-- 
2.20.1

