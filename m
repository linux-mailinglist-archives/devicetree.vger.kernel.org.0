Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7A5BC25702C
	for <lists+devicetree@lfdr.de>; Sun, 30 Aug 2020 21:36:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726178AbgH3Tgp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Aug 2020 15:36:45 -0400
Received: from mout.kundenserver.de ([212.227.126.187]:41153 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726150AbgH3Tgm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Aug 2020 15:36:42 -0400
Received: from buildfff.adridolf.com ([188.192.134.246]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1Mt7Ll-1kRNPb2Sgz-00tRzn; Sun, 30 Aug 2020 21:36:30 +0200
From:   Adrian Schmutzler <freifunk@adrianschmutzler.de>
To:     Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH] ARM: dts: kirkwood: replace status value "ok" by "okay"
Date:   Sun, 30 Aug 2020 21:35:43 +0200
Message-Id: <20200830193543.50530-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:ZkNFdP/6mYiGIULJPLWWsgs8EUMa/1GYF4H/+AjaKoDFEigBh7K
 zgUPQagDLXIqTD3T4ndBccvYqzr5S/0h0K1KcIjRlrOg7+0UWGuYZHPUPhvfsdNB2Rra3Qo
 u3wMcMgzmXqH6wTa98NU5zy4s/nXhAKoYFLtM/Ca19Wtx6tnj6GSJwcbuCmdJJdJpJs8BTH
 f2aZYI6GUz76LYVM3Vyog==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:UIRnrar2Vfg=:cuzCcD2ZrsKc4xpETkOa+H
 1md+NLFLo1kpIsD97HGVBfM1GDLpo0lgQz0JV1KTvAGa3hxcSAxL01HtMqbmPlgdLEF2vSaN1
 25/BYnAzVTu1qc1L++bmQI3//jIyARNgd0OCFsUMvDHsIXB4TIxt6Lj5T/vXV6iRW3Mk6TrXt
 dNWqidR5ERCbpALzh05jUijdNteCgNVCqECKMD1wdFW17dydMQ6Y+Jwq8XT9mm9+6O2E/quGV
 GtkdEu7nvROf8/ziHDELaN+RKtt4EuG8h5Eqp/LsetbZjyHesCCaGVm2t/mlCP2bP1CgITvT8
 uifGG/6AwRSDVq1c5jq4CT6GwEt+CdyljqpePdYOCb0r5lBqaZtFWEy9GiyfsScC1u9jmLyo1
 wmkzNuczttOfHPDhi4lofCoB1weaNgNZNGabvQJ7GyjmglEH4YQQXQfOzaBiwPhxiBDUgQbEc
 iE7b1Ivtz3mAehcSEjPecwJtmzyYVFdwErHpMMong9RWOrqudIAMlHoQgdmG7OgxprTh6ipou
 TcBYDOI7aFX2WC5d84+3IMBaoL/173CbGxIx8gEhrZIy2LOfNO048+UYzJmRtcRyLWoGkBEBh
 q4V1/iAUhPcu5Viszg9n0VZFPEWcPx9SRKZ0uLeRC+7TQ+rlbNjLZ8HWi0ehk1Z4MWO38Ywhs
 1qSLd6lspJwnd68owfUBYBFp6e0ejxvVv8KpbjdlbnD1L1oF+vwkKWKif27HwI9vDZBOqTuzC
 Vh8iiVLSu1+GaY9cf/5CeoIJz3HbNvbrVRy2T1XTzTBJ9klVXxzKdKe7ftCshiJqLIIWWeD61
 E0h5//XSyVVXEGnH2C/M3pdnjwc8kE/rmDRHgE7ZY4DZuXSmkgAx9PJhlc3dgPYfIPrQtIZBX
 oFP9DPnykOgmuIkqZzRA==
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
 arch/arm/boot/dts/kirkwood-dockstar.dts             | 2 +-
 arch/arm/boot/dts/kirkwood-dreamplug.dts            | 2 +-
 arch/arm/boot/dts/kirkwood-goflexnet.dts            | 2 +-
 arch/arm/boot/dts/kirkwood-guruplug-server-plus.dts | 2 +-
 arch/arm/boot/dts/kirkwood-iconnect.dts             | 2 +-
 arch/arm/boot/dts/kirkwood-iomega_ix2_200.dts       | 2 +-
 arch/arm/boot/dts/kirkwood-nsa3x0-common.dtsi       | 2 +-
 arch/arm/boot/dts/kirkwood.dtsi                     | 4 ++--
 8 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/kirkwood-dockstar.dts b/arch/arm/boot/dts/kirkwood-dockstar.dts
index 6a3f1bf6d9f1..264938dfa4d9 100644
--- a/arch/arm/boot/dts/kirkwood-dockstar.dts
+++ b/arch/arm/boot/dts/kirkwood-dockstar.dts
@@ -34,7 +34,7 @@
 			};
 		};
 		serial@12000 {
-			status = "ok";
+			status = "okay";
 		};
 	};
 	gpio-leds {
diff --git a/arch/arm/boot/dts/kirkwood-dreamplug.dts b/arch/arm/boot/dts/kirkwood-dreamplug.dts
index 7f326e267494..328516351e84 100644
--- a/arch/arm/boot/dts/kirkwood-dreamplug.dts
+++ b/arch/arm/boot/dts/kirkwood-dreamplug.dts
@@ -34,7 +34,7 @@
 			};
 		};
 		serial@12000 {
-			status = "ok";
+			status = "okay";
 		};
 
 		spi@10600 {
diff --git a/arch/arm/boot/dts/kirkwood-goflexnet.dts b/arch/arm/boot/dts/kirkwood-goflexnet.dts
index 02d87e0a1061..d4cb3cd3e2a2 100644
--- a/arch/arm/boot/dts/kirkwood-goflexnet.dts
+++ b/arch/arm/boot/dts/kirkwood-goflexnet.dts
@@ -66,7 +66,7 @@
 			};
 		};
 		serial@12000 {
-			status = "ok";
+			status = "okay";
 		};
 
 		sata@80000 {
diff --git a/arch/arm/boot/dts/kirkwood-guruplug-server-plus.dts b/arch/arm/boot/dts/kirkwood-guruplug-server-plus.dts
index ff1260ee3fe8..dfb41393941d 100644
--- a/arch/arm/boot/dts/kirkwood-guruplug-server-plus.dts
+++ b/arch/arm/boot/dts/kirkwood-guruplug-server-plus.dts
@@ -38,7 +38,7 @@
 			};
 		};
 		serial@12000 {
-			status = "ok";
+			status = "okay";
 		};
 
 		sata@80000 {
diff --git a/arch/arm/boot/dts/kirkwood-iconnect.dts b/arch/arm/boot/dts/kirkwood-iconnect.dts
index 4a512d80912c..95af7aa1fdcb 100644
--- a/arch/arm/boot/dts/kirkwood-iconnect.dts
+++ b/arch/arm/boot/dts/kirkwood-iconnect.dts
@@ -72,7 +72,7 @@
 			};
 		};
 		serial@12000 {
-			status = "ok";
+			status = "okay";
 		};
 	};
 
diff --git a/arch/arm/boot/dts/kirkwood-iomega_ix2_200.dts b/arch/arm/boot/dts/kirkwood-iomega_ix2_200.dts
index 62272d58664f..2338f495d517 100644
--- a/arch/arm/boot/dts/kirkwood-iomega_ix2_200.dts
+++ b/arch/arm/boot/dts/kirkwood-iomega_ix2_200.dts
@@ -112,7 +112,7 @@
 		};
 
 		serial@12000 {
-			status = "ok";
+			status = "okay";
 		};
 
 		sata@80000 {
diff --git a/arch/arm/boot/dts/kirkwood-nsa3x0-common.dtsi b/arch/arm/boot/dts/kirkwood-nsa3x0-common.dtsi
index 2c4037b07282..8f73197f251a 100644
--- a/arch/arm/boot/dts/kirkwood-nsa3x0-common.dtsi
+++ b/arch/arm/boot/dts/kirkwood-nsa3x0-common.dtsi
@@ -45,7 +45,7 @@
 		};
 
 		serial@12000 {
-			status = "ok";
+			status = "okay";
 		};
 
 		sata@80000 {
diff --git a/arch/arm/boot/dts/kirkwood.dtsi b/arch/arm/boot/dts/kirkwood.dtsi
index 6c8d94beae78..fca31a5d5ac7 100644
--- a/arch/arm/boot/dts/kirkwood.dtsi
+++ b/arch/arm/boot/dts/kirkwood.dtsi
@@ -369,7 +369,7 @@
 			clocks = <&gate_clk 14>;
 			clock-names = "sata";
 			#phy-cells = <0>;
-			status = "ok";
+			status = "okay";
 		};
 
 		sata_phy1: sata-phy@84000 {
@@ -378,7 +378,7 @@
 			clocks = <&gate_clk 15>;
 			clock-names = "sata";
 			#phy-cells = <0>;
-			status = "ok";
+			status = "okay";
 		};
 
 		audio0: audio-controller@a0000 {
-- 
2.20.1

