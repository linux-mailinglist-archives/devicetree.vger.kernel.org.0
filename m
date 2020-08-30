Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 48776257058
	for <lists+devicetree@lfdr.de>; Sun, 30 Aug 2020 22:02:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726264AbgH3UCN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Aug 2020 16:02:13 -0400
Received: from mout.kundenserver.de ([212.227.126.133]:38343 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726150AbgH3UCM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Aug 2020 16:02:12 -0400
Received: from buildfff.adridolf.com ([188.192.134.246]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MGxYh-1kQYGs18bb-00E7FA; Sun, 30 Aug 2020 22:02:05 +0200
From:   Adrian Schmutzler <freifunk@adrianschmutzler.de>
To:     Khuong Dinh <khuong@os.amperecomputing.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: apm: replace status value "ok" by "okay"
Date:   Sun, 30 Aug 2020 22:01:22 +0200
Message-Id: <20200830200122.1170-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:WuAQUkqx12aw8kN+d/7flmOpgIRH/LK20GcFwkzthFj9P/g0NbP
 UoDA+r5fBWwGxpX6/KB3LW2mSyrK9CBIDSGsAILQ12ShfoWqQwDwkDoj+kHUG7Gd7ZPEHaT
 iYqKkxJNsmYG/m43R/jfdgAa/bV+h3NW0wITnd/RHUItteHgDGRpcp3IdLFVWVqIyHzln0B
 fMhL66PRtUHfGa4mZIwaQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:IkJJGEH7RIU=:gmkqAD45YLkOUX4oNZK8qp
 C326E5YPdE5TD0OhQGbxE8YHubNwrCX8fiYtriuBadtT2ikhiE5nBMG225vEK1khf5iOvL3zJ
 LCl6lYexFHya762L//0+6pCRRUKsid2Km1MZV2kYmHAG5Y/K1M1/bztxV3ulifabFpK+dHxuc
 mONX+1ypw9A1sMV5ZGJdcTciBJ/aLGLHlCaBdgM/a6FwMrygAiP4XhVoP8inN45CmpGh+OdKz
 u6x18jmEYc0wa4g1k2pDQqoQV0CeDxSBBPndRrfloMDH2JggYgTTIdgP48Js7oDDtw6T96SFD
 0pFD1fiYV3BbmusiVVmZi1NrJJqkRN7LwHOebflBGvIB9fLWsK78EcTM5tICenGkVa5Xwebj9
 reGbN/D4PBOMQENielumT37FFlTW8otEmk5La/Z98dXkXl/Ln/L8NFIhdnY1cFUnC7EUEivkk
 vL3KpMtn6VsecXEpg6HOucfCAZb5gIVv1cojlJwlV9JD0TqoDQO4VXMCpeGPGz2EkC7Pqqz8u
 vwNNS2iMqNixUdBbTYRfNVadCT/Ni1WCrQKU7aaRThhzTVPw2NzPGvpkxY1DEnjnJs0eDQ7CF
 eQVLHRKpnKLu5U1SB6Qn82RozSZVdjYtF/zq7AN2yeFrvlffOuK/+lxhQaM0GCpbXqsmOIqCO
 e5B3f4px/w6VodWexWDAwcFDPkiCxkFadGldmC7Epq2pYWP/kzzLm+jYkByb350tsmhnpfijf
 /UVp7PDnC6zvgA47UVtXn4j3Bu8P+K1cu5X2uQ66AoeV7R0HHwnbKMwybjyNI/VgDN/+90leZ
 y3fKUqKLiLxGpcPC4oYURRIKVE91qBSbK2NwmYhhTPb47khXVh58Mtjm815tTUgCWvTrbCxd8
 lOq33usBDjlesTt94yrg==
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
 arch/arm64/boot/dts/apm/apm-merlin.dts  | 16 ++++++++--------
 arch/arm64/boot/dts/apm/apm-mustang.dts | 16 ++++++++--------
 arch/arm64/boot/dts/apm/apm-storm.dtsi  | 12 ++++++------
 3 files changed, 22 insertions(+), 22 deletions(-)

diff --git a/arch/arm64/boot/dts/apm/apm-merlin.dts b/arch/arm64/boot/dts/apm/apm-merlin.dts
index 217d7728b63a..a538dd333f1a 100644
--- a/arch/arm64/boot/dts/apm/apm-merlin.dts
+++ b/arch/arm64/boot/dts/apm/apm-merlin.dts
@@ -45,38 +45,38 @@
 };
 
 &serial0 {
-	status = "ok";
+	status = "okay";
 };
 
 &sata1 {
-	status = "ok";
+	status = "okay";
 };
 
 &sata2 {
-	status = "ok";
+	status = "okay";
 };
 
 &sata3 {
-	status = "ok";
+	status = "okay";
 };
 
 &sgenet0 {
-	status = "ok";
+	status = "okay";
 };
 
 &xgenet1 {
-	status = "ok";
+	status = "okay";
 };
 
 &mmc0 {
-	status = "ok";
+	status = "okay";
 };
 
 &i2c4 {
 	rtc68: rtc@68 {
 		compatible = "dallas,ds1337";
 		reg = <0x68>;
-		status = "ok";
+		status = "okay";
 	};
 };
 
diff --git a/arch/arm64/boot/dts/apm/apm-mustang.dts b/arch/arm64/boot/dts/apm/apm-mustang.dts
index e927811ade28..f8d0f9926a4d 100644
--- a/arch/arm64/boot/dts/apm/apm-mustang.dts
+++ b/arch/arm64/boot/dts/apm/apm-mustang.dts
@@ -45,36 +45,36 @@
 };
 
 &pcie0clk {
-	status = "ok";
+	status = "okay";
 };
 
 &pcie0 {
-	status = "ok";
+	status = "okay";
 };
 
 &serial0 {
-	status = "ok";
+	status = "okay";
 };
 
 &menet {
-	status = "ok";
+	status = "okay";
 };
 
 &sgenet0 {
-	status = "ok";
+	status = "okay";
 };
 
 &sgenet1 {
-	status = "ok";
+	status = "okay";
 };
 
 &xgenet {
-	status = "ok";
+	status = "okay";
 	rxlos-gpios = <&sbgpio 12 1>;
 };
 
 &mmc0 {
-	status = "ok";
+	status = "okay";
 };
 
 &mdio {
diff --git a/arch/arm64/boot/dts/apm/apm-storm.dtsi b/arch/arm64/boot/dts/apm/apm-storm.dtsi
index 8c802d87e751..d8572f683367 100644
--- a/arch/arm64/boot/dts/apm/apm-storm.dtsi
+++ b/arch/arm64/boot/dts/apm/apm-storm.dtsi
@@ -270,7 +270,7 @@
 				reg = <0x0 0x1f22c000 0x0 0x1000>;
 				reg-names = "csr-reg";
 				clock-output-names = "sataphy2clk";
-				status = "ok";
+				status = "okay";
 				csr-offset = <0x4>;
 				csr-mask = <0x3a>;
 				enable-offset = <0x0>;
@@ -284,7 +284,7 @@
 				reg = <0x0 0x1f23c000 0x0 0x1000>;
 				reg-names = "csr-reg";
 				clock-output-names = "sataphy3clk";
-				status = "ok";
+				status = "okay";
 				csr-offset = <0x4>;
 				csr-mask = <0x3a>;
 				enable-offset = <0x0>;
@@ -864,7 +864,7 @@
 			reg = <0x0 0x1f22a000 0x0 0x100>;
 			#phy-cells = <1>;
 			clocks = <&sataphy2clk 0>;
-			status = "ok";
+			status = "okay";
 			apm,tx-boost-gain = <30 30 30 30 30 30>;
 			apm,tx-eye-tuning = <1 10 10 2 10 10>;
 		};
@@ -874,7 +874,7 @@
 			reg = <0x0 0x1f23a000 0x0 0x100>;
 			#phy-cells = <1>;
 			clocks = <&sataphy3clk 0>;
-			status = "ok";
+			status = "okay";
 			apm,tx-boost-gain = <31 31 31 31 31 31>;
 			apm,tx-eye-tuning = <2 10 10 2 10 10>;
 		};
@@ -903,7 +903,7 @@
 			      <0x0 0x1f227000 0x0 0x1000>;
 			interrupts = <0x0 0x87 0x4>;
 			dma-coherent;
-			status = "ok";
+			status = "okay";
 			clocks = <&sata23clk 0>;
 			phys = <&phy2 0>;
 			phy-names = "sata-phy";
@@ -917,7 +917,7 @@
 			      <0x0 0x1f23e000 0x0 0x1000>;
 			interrupts = <0x0 0x88 0x4>;
 			dma-coherent;
-			status = "ok";
+			status = "okay";
 			clocks = <&sata45clk 0>;
 			phys = <&phy3 0>;
 			phy-names = "sata-phy";
-- 
2.20.1

