Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 63250BFA93
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2019 22:22:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727883AbfIZUWc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Sep 2019 16:22:32 -0400
Received: from mail-oi1-f196.google.com ([209.85.167.196]:43158 "EHLO
        mail-oi1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727868AbfIZUWc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Sep 2019 16:22:32 -0400
Received: by mail-oi1-f196.google.com with SMTP id t84so3257133oih.10
        for <devicetree@vger.kernel.org>; Thu, 26 Sep 2019 13:22:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Ld8E+vR0WV5+8A62EppXKj5/wXOvvSvbLnuLlue4V8I=;
        b=na2Vd39v/D+6R5aA1GAtRNWwF78OSBl4kN+LSFw9cjv84f6oQruDsvBFMCyUTkodAO
         3JVliTTdhsSDfMbHy/VzIDfiOTMQNBqwecaqJnw8icxvxeNsplZxGkSm9B9ChXYxLtJv
         bVQlbMAygLES3kerN031/FVaBC6OszHTIvxIZKOQvPCLa1b0xnpUtAQUgqafI4FYtWUN
         oDsaFOebJDTN2P/3sp/MxcDUUwDOzaC9PG6P4jNCT2gmH1xJ8Jx8W8J/dyqyVYaSvhEb
         X1KCjpY1dlDUWnRulVIkqWadYZkYIZx6zmuviG0++2G9tRSa0wqeRtQzoshOVdLhvOg/
         RUEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Ld8E+vR0WV5+8A62EppXKj5/wXOvvSvbLnuLlue4V8I=;
        b=k2/AY15Bg1HPyfo7NIhElCfh3bbPiNe9vgPph241YfNZGEy7+uHCb0WY4Fkd24NwdS
         QgiyQspEbOlTsW6DemyVz/xE7XS8tmgyaKwhOiQ1+duS0opETq/IUhfS+glshosdAshn
         EGBlZpW171vJkpJpBXz8Zzw2d8fbZZ+LDXliYVya12kfoOk/tBBDBYF2+lVtwHmH0zdt
         AFHajqTn8gWUoJL1WvSgXiMEo/YVCIS7q+dlbj4EHwu/QTAZo5p45rK76hJPLzMZMs+o
         ydfAxVCPqK/XHb+AQNYs8uhjgR+olQjTsaZYHfdT43w4IGbMSDFfIYFG6ljVZSq3IUUT
         k0eg==
X-Gm-Message-State: APjAAAUSKOgC3NKYGQwws2MIwMwuSvesYa5CLG6wKGr10JqzAzA1K1ut
        PE6AFmHg6lwcUsvm3C0cLc6LNA==
X-Google-Smtp-Source: APXvYqyn+5TnrITYzitoPM3hp1YLDq6tKdTfFxpf7WVPwMVtnF1p92FamNp74c0AsYLHqjdXSCWgbA==
X-Received: by 2002:aca:3e05:: with SMTP id l5mr4043567oia.10.1569529347166;
        Thu, 26 Sep 2019 13:22:27 -0700 (PDT)
Received: from localhost.localdomain (108-248-84-146.lightspeed.austtx.sbcglobal.net. [108.248.84.146])
        by smtp.gmail.com with ESMTPSA id k2sm977260oih.38.2019.09.26.13.22.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Sep 2019 13:22:26 -0700 (PDT)
From:   Kumar Gala <kumar.gala@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     Kumar Gala <kumar.gala@linaro.org>, devicetree@vger.kernel.org
Subject: [PATCH] dts: Change status = "ok" -> status = "okay"
Date:   Thu, 26 Sep 2019 15:22:17 -0500
Message-Id: <20190926202217.9965-1-kumar.gala@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Cleanup status to use "okay" as the spec says.  While Linux has
supported "ok", would be nice to have in tree dts files to conform to
the spec.

Signed-off-by: Kumar Gala <kumar.gala@linaro.org>
---
 .../devicetree/bindings/csky/cpus.txt         |  4 +--
 .../bindings/display/hisilicon/dw-dsi.txt     |  2 +-
 .../bindings/display/ti/ti,omap-dss.txt       |  4 +--
 .../bindings/net/apm-xgene-enet.txt           |  4 +--
 .../devicetree/bindings/net/dsa/sja1105.txt   |  2 +-
 arch/arm/boot/dts/am3517-evm-ui.dtsi          |  4 +--
 arch/arm/boot/dts/am3517-evm.dts              |  2 +-
 arch/arm/boot/dts/am437x-gp-evm.dts           |  2 +-
 arch/arm/boot/dts/am437x-sbc-t43.dts          |  2 +-
 arch/arm/boot/dts/am43x-epos-evm.dts          |  2 +-
 .../boot/dts/am57xx-beagle-x15-common.dtsi    |  6 ++--
 arch/arm/boot/dts/am57xx-sbc-am57x.dts        |  4 +--
 arch/arm/boot/dts/armada-388-db.dts           |  2 +-
 arch/arm/boot/dts/bcm958525xmc.dts            |  2 +-
 arch/arm/boot/dts/bcm958625k.dts              |  2 +-
 arch/arm/boot/dts/da850-evm.dts               |  2 +-
 arch/arm/boot/dts/dove.dtsi                   |  2 +-
 arch/arm/boot/dts/dra7-evm.dts                |  2 +-
 arch/arm/boot/dts/dra72-evm-common.dtsi       |  6 ++--
 arch/arm/boot/dts/efm32gg-dk3750.dts          | 12 ++++----
 arch/arm/boot/dts/efm32gg.dtsi                |  2 +-
 arch/arm/boot/dts/hi3620-hi4511.dts           | 12 ++++----
 arch/arm/boot/dts/hip04-d01.dts               |  2 +-
 arch/arm/boot/dts/keystone-k2e-evm.dts        |  2 +-
 arch/arm/boot/dts/keystone-k2hk-evm.dts       |  2 +-
 arch/arm/boot/dts/keystone-k2l-evm.dts        |  2 +-
 arch/arm/boot/dts/kirkwood-dockstar.dts       |  2 +-
 arch/arm/boot/dts/kirkwood-dreamplug.dts      |  2 +-
 arch/arm/boot/dts/kirkwood-goflexnet.dts      |  2 +-
 .../dts/kirkwood-guruplug-server-plus.dts     |  2 +-
 arch/arm/boot/dts/kirkwood-iconnect.dts       |  2 +-
 arch/arm/boot/dts/kirkwood-iomega_ix2_200.dts |  2 +-
 arch/arm/boot/dts/kirkwood-nsa3x0-common.dtsi |  2 +-
 arch/arm/boot/dts/kirkwood.dtsi               |  4 +--
 .../boot/dts/logicpd-som-lv-baseboard.dtsi    |  2 +-
 .../boot/dts/logicpd-torpedo-baseboard.dtsi   |  2 +-
 arch/arm/boot/dts/omap3-beagle-xm.dts         |  4 +--
 arch/arm/boot/dts/omap3-beagle.dts            |  6 ++--
 arch/arm/boot/dts/omap3-cm-t3517.dts          |  2 +-
 arch/arm/boot/dts/omap3-cm-t3530.dts          |  2 +-
 arch/arm/boot/dts/omap3-cm-t3730.dts          |  2 +-
 arch/arm/boot/dts/omap3-cm-t3x.dtsi           |  4 +--
 .../arm/boot/dts/omap3-devkit8000-common.dtsi |  4 +--
 arch/arm/boot/dts/omap3-gta04.dtsi            |  8 ++---
 arch/arm/boot/dts/omap3-ha-lcd.dts            |  2 +-
 arch/arm/boot/dts/omap3-igep0020-common.dtsi  |  2 +-
 arch/arm/boot/dts/omap3-n900.dts              |  6 ++--
 arch/arm/boot/dts/omap3-n950.dts              |  4 +--
 arch/arm/boot/dts/omap3-overo-common-dvi.dtsi |  2 +-
 .../boot/dts/omap3-overo-common-lcd35.dtsi    |  2 +-
 .../boot/dts/omap3-overo-common-lcd43.dtsi    |  2 +-
 arch/arm/boot/dts/omap3-pandora-common.dtsi   |  4 +--
 .../dts/omap3-panel-sharp-ls037v7dw01.dtsi    |  2 +-
 arch/arm/boot/dts/omap3-thunder.dts           |  2 +-
 arch/arm/boot/dts/omap34xx.dtsi               |  2 +-
 arch/arm/boot/dts/omap36xx.dtsi               |  2 +-
 arch/arm/boot/dts/omap4-duovero-parlor.dts    |  4 +--
 arch/arm/boot/dts/omap4-panda-common.dtsi     |  6 ++--
 arch/arm/boot/dts/omap4-sdp.dts               |  8 ++---
 arch/arm/boot/dts/omap5-board-common.dtsi     |  4 +--
 arch/arm/boot/dts/omap5-cm-t54.dts            |  6 ++--
 .../arm/boot/dts/qcom-apq8060-dragonboard.dts | 12 ++++----
 .../boot/dts/qcom-apq8064-asus-nexus7-flo.dts |  8 ++---
 arch/arm/boot/dts/qcom-apq8064-cm-qs600.dts   |  8 ++---
 arch/arm/boot/dts/qcom-apq8064-ifc6410.dts    | 10 +++----
 .../dts/qcom-apq8064-sony-xperia-yuga.dts     |  4 +--
 .../arm/boot/dts/qcom-apq8074-dragonboard.dts | 10 +++----
 arch/arm/boot/dts/qcom-ipq4019-ap.dk01.1.dtsi | 18 +++++------
 .../boot/dts/qcom-ipq4019-ap.dk04.1-c1.dts    |  4 +--
 arch/arm/boot/dts/qcom-ipq4019-ap.dk04.1.dtsi | 10 +++----
 .../boot/dts/qcom-ipq4019-ap.dk07.1-c1.dts    |  8 ++---
 .../boot/dts/qcom-ipq4019-ap.dk07.1-c2.dts    |  2 +-
 arch/arm/boot/dts/qcom-ipq4019-ap.dk07.1.dtsi | 10 +++----
 arch/arm/boot/dts/qcom-ipq8064-ap148.dts      |  2 +-
 arch/arm/boot/dts/qcom-ipq8064-v1.0.dtsi      | 12 ++++----
 arch/arm/boot/dts/qcom-mdm9615-wp8548.dtsi    | 16 +++++-----
 arch/arm/boot/dts/qcom-msm8660-surf.dts       |  4 +--
 arch/arm/boot/dts/qcom-msm8960-cdp.dts        |  8 ++---
 .../boot/dts/qcom-msm8974-fairphone-fp2.dts   | 10 +++----
 .../qcom-msm8974-lge-nexus5-hammerhead.dts    | 30 +++++++++----------
 .../boot/dts/qcom-msm8974-samsung-klte.dts    |  2 +-
 .../dts/qcom-msm8974-sony-xperia-amami.dts    | 14 ++++-----
 .../dts/qcom-msm8974-sony-xperia-castor.dts   | 18 +++++------
 .../dts/qcom-msm8974-sony-xperia-honami.dts   | 12 ++++----
 arch/arm/boot/dts/rk3288-evb.dtsi             |  2 +-
 .../boot/dts/rk3288-firefly-reload-core.dtsi  |  2 +-
 arch/arm/boot/dts/rk3288-firefly.dtsi         |  2 +-
 arch/arm/boot/dts/rk3288-miqi.dts             |  2 +-
 arch/arm/boot/dts/rk3288-popmetal.dts         |  2 +-
 arch/arm/boot/dts/rk3288-r89.dts              |  2 +-
 arch/arm/boot/dts/rk3288-rock2-square.dts     |  2 +-
 arch/arm/boot/dts/rk3288-tinker.dtsi          |  2 +-
 .../boot/dts/amd/amd-overdrive-rev-b0.dts     | 22 +++++++-------
 .../boot/dts/amd/amd-overdrive-rev-b1.dts     | 24 +++++++--------
 arch/arm64/boot/dts/amd/amd-overdrive.dts     | 14 ++++-----
 arch/arm64/boot/dts/amd/husky.dts             | 20 ++++++-------
 arch/arm64/boot/dts/apm/apm-merlin.dts        | 16 +++++-----
 arch/arm64/boot/dts/apm/apm-mustang.dts       | 16 +++++-----
 arch/arm64/boot/dts/apm/apm-storm.dtsi        | 12 ++++----
 .../dts/broadcom/stingray/bcm958742-base.dtsi |  2 +-
 .../boot/dts/hisilicon/hi3660-hikey960.dts    |  4 +--
 .../boot/dts/hisilicon/hi3670-hikey970.dts    |  2 +-
 .../arm64/boot/dts/hisilicon/hi6220-hikey.dts | 18 +++++------
 arch/arm64/boot/dts/hisilicon/hi6220.dtsi     |  2 +-
 arch/arm64/boot/dts/hisilicon/hip05-d02.dts   |  6 ++--
 arch/arm64/boot/dts/hisilicon/hip06-d03.dts   | 18 +++++------
 arch/arm64/boot/dts/hisilicon/hip07-d05.dts   | 20 ++++++-------
 arch/arm64/boot/dts/qcom/ipq8074-hk01.dts     | 20 ++++++-------
 arch/arm64/boot/dts/qcom/qcs404-evb-4000.dts  |  2 +-
 arch/arm64/boot/dts/qcom/qcs404-evb.dtsi      | 12 ++++----
 arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi  |  2 +-
 .../dts/rockchip/rk3368-orion-r68-meta.dts    |  2 +-
 arch/arm64/boot/dts/rockchip/rk3368-r88.dts   |  4 +--
 drivers/staging/mt7621-dts/gbpc1.dts          |  4 +--
 drivers/staging/mt7621-dts/gbpc2.dts          |  4 +--
 115 files changed, 349 insertions(+), 349 deletions(-)

diff --git a/Documentation/devicetree/bindings/csky/cpus.txt b/Documentation/devicetree/bindings/csky/cpus.txt
index ae79412f2680..7dc37bb89750 100644
--- a/Documentation/devicetree/bindings/csky/cpus.txt
+++ b/Documentation/devicetree/bindings/csky/cpus.txt
@@ -62,12 +62,12 @@ Example:
 		cpu@0 {
 			device_type = "cpu";
 			reg = <0>;
-			status = "ok";
+			status = "okay";
 		};
 
 		cpu@1 {
 			device_type = "cpu";
 			reg = <1>;
-			status = "ok";
+			status = "okay";
 		};
 	};
diff --git a/Documentation/devicetree/bindings/display/hisilicon/dw-dsi.txt b/Documentation/devicetree/bindings/display/hisilicon/dw-dsi.txt
index d270bfe4e4e0..34f3dde40db6 100644
--- a/Documentation/devicetree/bindings/display/hisilicon/dw-dsi.txt
+++ b/Documentation/devicetree/bindings/display/hisilicon/dw-dsi.txt
@@ -42,7 +42,7 @@ SoC specific:
 
 Board specific:
 	&dsi {
-		status = "ok";
+		status = "okay";
 
 		ports {
 			/* 1 for output port */
diff --git a/Documentation/devicetree/bindings/display/ti/ti,omap-dss.txt b/Documentation/devicetree/bindings/display/ti/ti,omap-dss.txt
index e1ef29569338..b6c5eb3a0f6a 100644
--- a/Documentation/devicetree/bindings/display/ti/ti,omap-dss.txt
+++ b/Documentation/devicetree/bindings/display/ti/ti,omap-dss.txt
@@ -183,7 +183,7 @@ OMAP HDMI --(HDMI)--> TPD12S015 --(HDMI)--> HDMI Connector
 };
 
 &dss {
-	status = "ok";
+	status = "okay";
 
 	pinctrl-names = "default";
 	pinctrl-0 = <&dss_dpi_pins>;
@@ -197,7 +197,7 @@ OMAP HDMI --(HDMI)--> TPD12S015 --(HDMI)--> HDMI Connector
 };
 
 &hdmi {
-	status = "ok";
+	status = "okay";
 	vdda-supply = <&vdac>;
 
 	pinctrl-names = "default";
diff --git a/Documentation/devicetree/bindings/net/apm-xgene-enet.txt b/Documentation/devicetree/bindings/net/apm-xgene-enet.txt
index f591ab782dbc..f74a2920f750 100644
--- a/Documentation/devicetree/bindings/net/apm-xgene-enet.txt
+++ b/Documentation/devicetree/bindings/net/apm-xgene-enet.txt
@@ -55,7 +55,7 @@ Example:
 	menetclk: menetclk {
 		compatible = "apm,xgene-device-clock";
 		clock-output-names = "menetclk";
-		status = "ok";
+		status = "okay";
 	};
 
 	menet: ethernet@17020000 {
@@ -87,5 +87,5 @@ Example:
 &menet {
 	tx-delay = <4>;
 	rx-delay = <2>;
-        status = "ok";
+        status = "okay";
 };
diff --git a/Documentation/devicetree/bindings/net/dsa/sja1105.txt b/Documentation/devicetree/bindings/net/dsa/sja1105.txt
index 13fd21074d48..ba8ffddd0ab1 100644
--- a/Documentation/devicetree/bindings/net/dsa/sja1105.txt
+++ b/Documentation/devicetree/bindings/net/dsa/sja1105.txt
@@ -148,7 +148,7 @@ arch/arm/boot/dts/ls1021a-tsn.dts:
 /* Ethernet master port of the LS1021 */
 &enet2 {
 	phy-connection-type = "rgmii";
-	status = "ok";
+	status = "okay";
 	fixed-link {
 		speed = <1000>;
 		full-duplex;
diff --git a/arch/arm/boot/dts/am3517-evm-ui.dtsi b/arch/arm/boot/dts/am3517-evm-ui.dtsi
index 48631a45da51..7009e1bf7718 100644
--- a/arch/arm/boot/dts/am3517-evm-ui.dtsi
+++ b/arch/arm/boot/dts/am3517-evm-ui.dtsi
@@ -183,14 +183,14 @@
 };
 
 &mcbsp1 {
-	status = "ok";
+	status = "okay";
 	#sound-dai-cells = <0>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&mcbsp1_pins>;
 };
 
 &mcbsp2 {
-	status = "ok";
+	status = "okay";
 	#sound-dai-cells = <0>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&mcbsp2_pins>;
diff --git a/arch/arm/boot/dts/am3517-evm.dts b/arch/arm/boot/dts/am3517-evm.dts
index ebfe28c2f544..5d163da5a85b 100644
--- a/arch/arm/boot/dts/am3517-evm.dts
+++ b/arch/arm/boot/dts/am3517-evm.dts
@@ -190,7 +190,7 @@
 };
 
 &dss {
-	status = "ok";
+	status = "okay";
 
 	pinctrl-names = "default";
 	pinctrl-0 = <&dss_dpi_pins>;
diff --git a/arch/arm/boot/dts/am437x-gp-evm.dts b/arch/arm/boot/dts/am437x-gp-evm.dts
index cae4500194fe..840744e73e9f 100644
--- a/arch/arm/boot/dts/am437x-gp-evm.dts
+++ b/arch/arm/boot/dts/am437x-gp-evm.dts
@@ -1040,7 +1040,7 @@
 };
 
 &dss {
-	status = "ok";
+	status = "okay";
 
 	pinctrl-names = "default";
 	pinctrl-0 = <&dss_pins>;
diff --git a/arch/arm/boot/dts/am437x-sbc-t43.dts b/arch/arm/boot/dts/am437x-sbc-t43.dts
index 94cf07ea27f7..8ea3780f939d 100644
--- a/arch/arm/boot/dts/am437x-sbc-t43.dts
+++ b/arch/arm/boot/dts/am437x-sbc-t43.dts
@@ -136,7 +136,7 @@
 };
 
 &dss {
-	status = "ok";
+	status = "okay";
 
 	pinctrl-names = "default";
 	pinctrl-0 = <&dss_pinctrl_default>;
diff --git a/arch/arm/boot/dts/am43x-epos-evm.dts b/arch/arm/boot/dts/am43x-epos-evm.dts
index 95314121d111..d95447bea078 100644
--- a/arch/arm/boot/dts/am43x-epos-evm.dts
+++ b/arch/arm/boot/dts/am43x-epos-evm.dts
@@ -941,7 +941,7 @@
 };
 
 &dss {
-	status = "ok";
+	status = "okay";
 
 	pinctrl-names = "default";
 	pinctrl-0 = <&dss_pins>;
diff --git a/arch/arm/boot/dts/am57xx-beagle-x15-common.dtsi b/arch/arm/boot/dts/am57xx-beagle-x15-common.dtsi
index bc76f1705c0f..79af0854490d 100644
--- a/arch/arm/boot/dts/am57xx-beagle-x15-common.dtsi
+++ b/arch/arm/boot/dts/am57xx-beagle-x15-common.dtsi
@@ -526,13 +526,13 @@
 };
 
 &dss {
-	status = "ok";
+	status = "okay";
 
 	vdda_video-supply = <&ldoln_reg>;
 };
 
 &hdmi {
-	status = "ok";
+	status = "okay";
 	vdda-supply = <&ldo4_reg>;
 
 	port {
@@ -543,7 +543,7 @@
 };
 
 &pcie1_rc {
-	status = "ok";
+	status = "okay";
 	gpios = <&gpio2 8 GPIO_ACTIVE_LOW>;
 };
 
diff --git a/arch/arm/boot/dts/am57xx-sbc-am57x.dts b/arch/arm/boot/dts/am57xx-sbc-am57x.dts
index ce5bf1d92eab..beef63e8a005 100644
--- a/arch/arm/boot/dts/am57xx-sbc-am57x.dts
+++ b/arch/arm/boot/dts/am57xx-sbc-am57x.dts
@@ -120,7 +120,7 @@
 };
 
 &dss {
-	status = "ok";
+	status = "okay";
 
 	vdda_video-supply = <&ldoln_reg>;
 
@@ -148,7 +148,7 @@
 };
 
 &hdmi {
-	status = "ok";
+	status = "okay";
 	vdda-supply = <&ldo4_reg>;
 
 	pinctrl-names = "default";
diff --git a/arch/arm/boot/dts/armada-388-db.dts b/arch/arm/boot/dts/armada-388-db.dts
index a2bec07bf4c5..f7b48926371b 100644
--- a/arch/arm/boot/dts/armada-388-db.dts
+++ b/arch/arm/boot/dts/armada-388-db.dts
@@ -57,7 +57,7 @@
 			};
 
 			usb@58000 {
-				status = "ok";
+				status = "okay";
 			};
 
 			ethernet@70000 {
diff --git a/arch/arm/boot/dts/bcm958525xmc.dts b/arch/arm/boot/dts/bcm958525xmc.dts
index 1c72ec8288de..38574aefcf86 100644
--- a/arch/arm/boot/dts/bcm958525xmc.dts
+++ b/arch/arm/boot/dts/bcm958525xmc.dts
@@ -192,7 +192,7 @@
 };
 
 &sdio {
-	status = "ok";
+	status = "okay";
 };
 
 &uart0 {
diff --git a/arch/arm/boot/dts/bcm958625k.dts b/arch/arm/boot/dts/bcm958625k.dts
index 3fcca12d83c2..683b85feb4ce 100644
--- a/arch/arm/boot/dts/bcm958625k.dts
+++ b/arch/arm/boot/dts/bcm958625k.dts
@@ -204,7 +204,7 @@
 &sdio {
 	bus-width = <4>;
 	no-1-8-v;
-	status = "ok";
+	status = "okay";
 };
 
 &srab {
diff --git a/arch/arm/boot/dts/da850-evm.dts b/arch/arm/boot/dts/da850-evm.dts
index f2e7609e5346..77507cc62d03 100644
--- a/arch/arm/boot/dts/da850-evm.dts
+++ b/arch/arm/boot/dts/da850-evm.dts
@@ -415,7 +415,7 @@
 &aemif {
 	pinctrl-names = "default";
 	pinctrl-0 = <&nand_pins>;
-	status = "ok";
+	status = "okay";
 	cs3 {
 		#address-cells = <2>;
 		#size-cells = <1>;
diff --git a/arch/arm/boot/dts/dove.dtsi b/arch/arm/boot/dts/dove.dtsi
index 2e8a3977219f..67872ff1d917 100644
--- a/arch/arm/boot/dts/dove.dtsi
+++ b/arch/arm/boot/dts/dove.dtsi
@@ -408,7 +408,7 @@
 				clocks = <&gate_clk 3>;
 				clock-names = "sata";
 				#phy-cells = <0>;
-				status = "ok";
+				status = "okay";
 			};
 
 			audio0: audio-controller@b0000 {
diff --git a/arch/arm/boot/dts/dra7-evm.dts b/arch/arm/boot/dts/dra7-evm.dts
index de7f85efaa51..0de93a8d9ad0 100644
--- a/arch/arm/boot/dts/dra7-evm.dts
+++ b/arch/arm/boot/dts/dra7-evm.dts
@@ -531,7 +531,7 @@
 };
 
 &dcan1 {
-	status = "ok";
+	status = "okay";
 	pinctrl-names = "default", "sleep", "active";
 	pinctrl-0 = <&dcan1_pins_sleep>;
 	pinctrl-1 = <&dcan1_pins_sleep>;
diff --git a/arch/arm/boot/dts/dra72-evm-common.dtsi b/arch/arm/boot/dts/dra72-evm-common.dtsi
index 8641a3d7d8ad..f820401adeaf 100644
--- a/arch/arm/boot/dts/dra72-evm-common.dtsi
+++ b/arch/arm/boot/dts/dra72-evm-common.dtsi
@@ -443,7 +443,7 @@
 };
 
 &dcan1 {
-	status = "ok";
+	status = "okay";
 	pinctrl-names = "default", "sleep", "active";
 	pinctrl-0 = <&dcan1_pins_sleep>;
 	pinctrl-1 = <&dcan1_pins_sleep>;
@@ -512,11 +512,11 @@
 };
 
 &dss {
-	status = "ok";
+	status = "okay";
 };
 
 &hdmi {
-	status = "ok";
+	status = "okay";
 
 	port {
 		hdmi_out: endpoint {
diff --git a/arch/arm/boot/dts/efm32gg-dk3750.dts b/arch/arm/boot/dts/efm32gg-dk3750.dts
index adfa559a488b..7133cb5f502b 100644
--- a/arch/arm/boot/dts/efm32gg-dk3750.dts
+++ b/arch/arm/boot/dts/efm32gg-dk3750.dts
@@ -24,12 +24,12 @@
 
 	soc {
 		adc@40002000 {
-			status = "ok";
+			status = "okay";
 		};
 
 		i2c@4000a000 {
 			energymicro,location = <3>;
-			status = "ok";
+			status = "okay";
 
 			temp@48 {
 				compatible = "st,stds75";
@@ -46,7 +46,7 @@
 		spi0: spi@4000c000 { /* USART0 */
 			cs-gpios = <&gpio 68 1>; // E4
 			energymicro,location = <1>;
-			status = "ok";
+			status = "okay";
 
 			microsd@0 {
 				compatible = "mmc-spi-slot";
@@ -60,7 +60,7 @@
 		spi1: spi@4000c400 { /* USART1 */
 			cs-gpios = <&gpio 51 1>; // D3
 			energymicro,location = <1>;
-			status = "ok";
+			status = "okay";
 
 			ks8851@0 {
 				compatible = "ks8851";
@@ -73,7 +73,7 @@
 
 		uart4: uart@4000e400 { /* UART1 */
 			energymicro,location = <2>;
-			status = "ok";
+			status = "okay";
 		};
 
 		boardfpga: boardfpga@80000000 {
@@ -82,7 +82,7 @@
 			irq-gpios = <&gpio 64 1>;
 			interrupt-controller;
 			#interrupt-cells = <1>;
-			status = "ok";
+			status = "okay";
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/efm32gg.dtsi b/arch/arm/boot/dts/efm32gg.dtsi
index 8a58e49144cc..20db696a0fbf 100644
--- a/arch/arm/boot/dts/efm32gg.dtsi
+++ b/arch/arm/boot/dts/efm32gg.dtsi
@@ -44,7 +44,7 @@
 			interrupt-controller;
 			#interrupt-cells = <1>;
 			clocks = <&cmu clk_HFPERCLKGPIO>;
-			status = "ok";
+			status = "okay";
 		};
 
 		i2c0: i2c@4000a000 {
diff --git a/arch/arm/boot/dts/hi3620-hi4511.dts b/arch/arm/boot/dts/hi3620-hi4511.dts
index 8c703c3f2fe0..f6b0ddeaea84 100644
--- a/arch/arm/boot/dts/hi3620-hi4511.dts
+++ b/arch/arm/boot/dts/hi3620-hi4511.dts
@@ -24,42 +24,42 @@
 
 	amba {
 		dual_timer0: dual_timer@800000 {
-			status = "ok";
+			status = "okay";
 		};
 
 		uart0: uart@b00000 {	/* console */
 			pinctrl-names = "default", "idle";
 			pinctrl-0 = <&uart0_pmx_func &uart0_cfg_func>;
 			pinctrl-1 = <&uart0_pmx_idle &uart0_cfg_idle>;
-			status = "ok";
+			status = "okay";
 		};
 
 		uart1: uart@b01000 { /* modem */
 			pinctrl-names = "default", "idle";
 			pinctrl-0 = <&uart1_pmx_func &uart1_cfg_func>;
 			pinctrl-1 = <&uart1_pmx_idle &uart1_cfg_idle>;
-			status = "ok";
+			status = "okay";
 		};
 
 		uart2: uart@b02000 { /* audience */
 			pinctrl-names = "default", "idle";
 			pinctrl-0 = <&uart2_pmx_func &uart2_cfg_func>;
 			pinctrl-1 = <&uart2_pmx_idle &uart2_cfg_idle>;
-			status = "ok";
+			status = "okay";
 		};
 
 		uart3: uart@b03000 {
 			pinctrl-names = "default", "idle";
 			pinctrl-0 = <&uart3_pmx_func &uart3_cfg_func>;
 			pinctrl-1 = <&uart3_pmx_idle &uart3_cfg_idle>;
-			status = "ok";
+			status = "okay";
 		};
 
 		uart4: uart@b04000 {
 			pinctrl-names = "default", "idle";
 			pinctrl-0 = <&uart4_pmx_func &uart4_cfg_func>;
 			pinctrl-1 = <&uart4_pmx_idle &uart4_cfg_func>;
-			status = "ok";
+			status = "okay";
 		};
 
 		pmx0: pinmux@803000 {
diff --git a/arch/arm/boot/dts/hip04-d01.dts b/arch/arm/boot/dts/hip04-d01.dts
index 9019e0d2ef60..05d25f5a3b85 100644
--- a/arch/arm/boot/dts/hip04-d01.dts
+++ b/arch/arm/boot/dts/hip04-d01.dts
@@ -23,7 +23,7 @@
 
 	soc {
 		uart0: uart@4007000 {
-			status = "ok";
+			status = "okay";
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/keystone-k2e-evm.dts b/arch/arm/boot/dts/keystone-k2e-evm.dts
index 66fec5f5d081..acac242ebdf7 100644
--- a/arch/arm/boot/dts/keystone-k2e-evm.dts
+++ b/arch/arm/boot/dts/keystone-k2e-evm.dts
@@ -159,7 +159,7 @@
 };
 
 &mdio {
-	status = "ok";
+	status = "okay";
 	ethphy0: ethernet-phy@0 {
 		compatible = "marvell,88E1514", "marvell,88E1510", "ethernet-phy-ieee802.3-c22";
 		reg = <0>;
diff --git a/arch/arm/boot/dts/keystone-k2hk-evm.dts b/arch/arm/boot/dts/keystone-k2hk-evm.dts
index ad4e22afe133..5e85f000acc3 100644
--- a/arch/arm/boot/dts/keystone-k2hk-evm.dts
+++ b/arch/arm/boot/dts/keystone-k2hk-evm.dts
@@ -183,7 +183,7 @@
 };
 
 &mdio {
-	status = "ok";
+	status = "okay";
 	ethphy0: ethernet-phy@0 {
 		compatible = "marvell,88E1111", "ethernet-phy-ieee802.3-c22";
 		reg = <0>;
diff --git a/arch/arm/boot/dts/keystone-k2l-evm.dts b/arch/arm/boot/dts/keystone-k2l-evm.dts
index e200533d26a4..a6cbff4cfe20 100644
--- a/arch/arm/boot/dts/keystone-k2l-evm.dts
+++ b/arch/arm/boot/dts/keystone-k2l-evm.dts
@@ -132,7 +132,7 @@
 };
 
 &mdio {
-	status = "ok";
+	status = "okay";
 	ethphy0: ethernet-phy@0 {
 		compatible = "marvell,88E1514", "marvell,88E1510", "ethernet-phy-ieee802.3-c22";
 		reg = <0>;
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
index 2161e23bd98e..54db0b8c0885 100644
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
diff --git a/arch/arm/boot/dts/logicpd-som-lv-baseboard.dtsi b/arch/arm/boot/dts/logicpd-som-lv-baseboard.dtsi
index 100396f6c2fe..133e2ab5cda5 100644
--- a/arch/arm/boot/dts/logicpd-som-lv-baseboard.dtsi
+++ b/arch/arm/boot/dts/logicpd-som-lv-baseboard.dtsi
@@ -77,7 +77,7 @@
 };
 
 &dss {
-	status = "ok";
+	status = "okay";
 	vdds_dsi-supply = <&vpll2>;
 	vdda_video-supply = <&video_reg>;
 	pinctrl-names = "default";
diff --git a/arch/arm/boot/dts/logicpd-torpedo-baseboard.dtsi b/arch/arm/boot/dts/logicpd-torpedo-baseboard.dtsi
index 642e809e757a..901e1067b9dd 100644
--- a/arch/arm/boot/dts/logicpd-torpedo-baseboard.dtsi
+++ b/arch/arm/boot/dts/logicpd-torpedo-baseboard.dtsi
@@ -106,7 +106,7 @@
 };
 
 &dss {
-	status = "ok";
+	status = "okay";
 	vdds_dsi-supply = <&vpll2>;
 	vdda_video-supply = <&video_reg>;
 	pinctrl-names = "default";
diff --git a/arch/arm/boot/dts/omap3-beagle-xm.dts b/arch/arm/boot/dts/omap3-beagle-xm.dts
index 1aa99fc1487a..bfc08a008ce4 100644
--- a/arch/arm/boot/dts/omap3-beagle-xm.dts
+++ b/arch/arm/boot/dts/omap3-beagle-xm.dts
@@ -389,7 +389,7 @@
 };
 
 &dss {
-	status = "ok";
+	status = "okay";
 
 	pinctrl-names = "default";
 	pinctrl-0 = <
@@ -406,7 +406,7 @@
 };
 
 &venc {
-	status = "ok";
+	status = "okay";
 
 	vdda-supply = <&vdac>;
 
diff --git a/arch/arm/boot/dts/omap3-beagle.dts b/arch/arm/boot/dts/omap3-beagle.dts
index e3df3c166902..4620019bff34 100644
--- a/arch/arm/boot/dts/omap3-beagle.dts
+++ b/arch/arm/boot/dts/omap3-beagle.dts
@@ -353,7 +353,7 @@
 };
 
 &dss {
-	status = "ok";
+	status = "okay";
 
 	pinctrl-names = "default";
 	pinctrl-0 = <&dss_dpi_pins>;
@@ -367,7 +367,7 @@
 };
 
 &venc {
-	status = "ok";
+	status = "okay";
 
 	vdda-supply = <&vdac>;
 
@@ -380,7 +380,7 @@
 };
 
 &gpmc {
-	status = "ok";
+	status = "okay";
 	ranges = <0 0 0x30000000 0x1000000>;	/* CS0 space, 16MB */
 
 	/* Chip select 0 */
diff --git a/arch/arm/boot/dts/omap3-cm-t3517.dts b/arch/arm/boot/dts/omap3-cm-t3517.dts
index 632f52efdf98..3b8349094baa 100644
--- a/arch/arm/boot/dts/omap3-cm-t3517.dts
+++ b/arch/arm/boot/dts/omap3-cm-t3517.dts
@@ -147,7 +147,7 @@
 };
 
 &dss {
-	status = "ok";
+	status = "okay";
 
 	pinctrl-names = "default";
 	pinctrl-0 = <
diff --git a/arch/arm/boot/dts/omap3-cm-t3530.dts b/arch/arm/boot/dts/omap3-cm-t3530.dts
index 76e52c78cbb4..ff2a7e07ac40 100644
--- a/arch/arm/boot/dts/omap3-cm-t3530.dts
+++ b/arch/arm/boot/dts/omap3-cm-t3530.dts
@@ -49,7 +49,7 @@
 };
 
 &dss {
-	status = "ok";
+	status = "okay";
 
 	pinctrl-names = "default";
 	pinctrl-0 = <
diff --git a/arch/arm/boot/dts/omap3-cm-t3730.dts b/arch/arm/boot/dts/omap3-cm-t3730.dts
index 6e944dfa0f3d..24abd1c7fc3a 100644
--- a/arch/arm/boot/dts/omap3-cm-t3730.dts
+++ b/arch/arm/boot/dts/omap3-cm-t3730.dts
@@ -87,7 +87,7 @@
 };
 
 &dss {
-	status = "ok";
+	status = "okay";
 
 	pinctrl-names = "default";
 	pinctrl-0 = <
diff --git a/arch/arm/boot/dts/omap3-cm-t3x.dtsi b/arch/arm/boot/dts/omap3-cm-t3x.dtsi
index cdb632df152a..e61b8a2bfb7d 100644
--- a/arch/arm/boot/dts/omap3-cm-t3x.dtsi
+++ b/arch/arm/boot/dts/omap3-cm-t3x.dtsi
@@ -246,7 +246,7 @@
 };
 
 &venc {
-	status = "ok";
+	status = "okay";
 
 	port {
 		venc_out: endpoint {
@@ -257,7 +257,7 @@
 };
 
 &mcbsp2 {
-	status = "ok";
+	status = "okay";
 
 	pinctrl-names = "default";
 	pinctrl-0 = <&mcbsp2_pins>;
diff --git a/arch/arm/boot/dts/omap3-devkit8000-common.dtsi b/arch/arm/boot/dts/omap3-devkit8000-common.dtsi
index ac3d996cec5c..2c19d6e255bd 100644
--- a/arch/arm/boot/dts/omap3-devkit8000-common.dtsi
+++ b/arch/arm/boot/dts/omap3-devkit8000-common.dtsi
@@ -337,7 +337,7 @@
 };
 
 &dss {
-	status = "ok";
+	status = "okay";
 
 	pinctrl-names = "default";
 	pinctrl-0 = <&dss_dpi_pins>;
@@ -361,7 +361,7 @@
 };
 
 &venc {
-	status = "ok";
+	status = "okay";
 
 	vdda-supply = <&vdac>;
 
diff --git a/arch/arm/boot/dts/omap3-gta04.dtsi b/arch/arm/boot/dts/omap3-gta04.dtsi
index d01fc8744fd7..4d2aadf877b1 100644
--- a/arch/arm/boot/dts/omap3-gta04.dtsi
+++ b/arch/arm/boot/dts/omap3-gta04.dtsi
@@ -820,27 +820,27 @@
 };
 
 &mcbsp1 { /* FM Transceiver PCM */
-	status = "ok";
+	status = "okay";
 	#sound-dai-cells = <0>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&mcbsp1_pins>;
 };
 
 &mcbsp2 { /* TPS65950 I2S */
-	status = "ok";
+	status = "okay";
 	pinctrl-names = "default";
 	pinctrl-0 = <&mcbsp2_pins>;
 };
 
 &mcbsp3 { /* Bluetooth PCM */
-	status = "ok";
+	status = "okay";
 	#sound-dai-cells = <0>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&mcbsp3_pins>;
 };
 
 &mcbsp4 { /* GSM voice PCM */
-	status = "ok";
+	status = "okay";
 	#sound-dai-cells = <0>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&mcbsp4_pins>;
diff --git a/arch/arm/boot/dts/omap3-ha-lcd.dts b/arch/arm/boot/dts/omap3-ha-lcd.dts
index badb9b3c8897..b9899b91cae4 100644
--- a/arch/arm/boot/dts/omap3-ha-lcd.dts
+++ b/arch/arm/boot/dts/omap3-ha-lcd.dts
@@ -100,7 +100,7 @@
 };
 
 &dss {
-	status = "ok";
+	status = "okay";
 
 	pinctrl-names = "default";
 	pinctrl-0 = <&dss_dpi_pins>;
diff --git a/arch/arm/boot/dts/omap3-igep0020-common.dtsi b/arch/arm/boot/dts/omap3-igep0020-common.dtsi
index 91caa50b74c4..af8aa5f0feb7 100644
--- a/arch/arm/boot/dts/omap3-igep0020-common.dtsi
+++ b/arch/arm/boot/dts/omap3-igep0020-common.dtsi
@@ -245,7 +245,7 @@
 };
 
 &dss {
-	status = "ok";
+	status = "okay";
 
 	port {
 		dpi_out: endpoint {
diff --git a/arch/arm/boot/dts/omap3-n900.dts b/arch/arm/boot/dts/omap3-n900.dts
index 84a5ade1e865..8a50e19913b9 100644
--- a/arch/arm/boot/dts/omap3-n900.dts
+++ b/arch/arm/boot/dts/omap3-n900.dts
@@ -1047,7 +1047,7 @@
 };
 
 &dss {
-	status = "ok";
+	status = "okay";
 
 	pinctrl-names = "default";
 	pinctrl-0 = <&dss_sdi_pins>;
@@ -1070,7 +1070,7 @@
 };
 
 &venc {
-	status = "ok";
+	status = "okay";
 
 	vdda-supply = <&vdac>;
 
@@ -1083,7 +1083,7 @@
 };
 
 &mcbsp2 {
-	status = "ok";
+	status = "okay";
 };
 
 &ssi_port1 {
diff --git a/arch/arm/boot/dts/omap3-n950.dts b/arch/arm/boot/dts/omap3-n950.dts
index 9886bf8b90ab..48c2a3ce5f1d 100644
--- a/arch/arm/boot/dts/omap3-n950.dts
+++ b/arch/arm/boot/dts/omap3-n950.dts
@@ -205,13 +205,13 @@
 };
 
 &dss {
-	status = "ok";
+	status = "okay";
 
 	vdda_video-supply = <&vdac>;
 };
 
 &dsi {
-	status = "ok";
+	status = "okay";
 
 	pinctrl-names = "default";
 	pinctrl-0 = <&dsi_pins>;
diff --git a/arch/arm/boot/dts/omap3-overo-common-dvi.dtsi b/arch/arm/boot/dts/omap3-overo-common-dvi.dtsi
index c9e62e414abb..339a51fa4119 100644
--- a/arch/arm/boot/dts/omap3-overo-common-dvi.dtsi
+++ b/arch/arm/boot/dts/omap3-overo-common-dvi.dtsi
@@ -48,7 +48,7 @@
 };
 
 &dss {
-	status = "ok";
+	status = "okay";
 
 	pinctrl-names = "default";
 	pinctrl-0 = <&dss_dpi_pins>;
diff --git a/arch/arm/boot/dts/omap3-overo-common-lcd35.dtsi b/arch/arm/boot/dts/omap3-overo-common-lcd35.dtsi
index 185ce53de0ec..1d6e88f99eb3 100644
--- a/arch/arm/boot/dts/omap3-overo-common-lcd35.dtsi
+++ b/arch/arm/boot/dts/omap3-overo-common-lcd35.dtsi
@@ -76,7 +76,7 @@
 };
 
 &dss {
-	status = "ok";
+	status = "okay";
 
 	pinctrl-names = "default";
 	pinctrl-0 = <&dss_dpi_pins>;
diff --git a/arch/arm/boot/dts/omap3-overo-common-lcd43.dtsi b/arch/arm/boot/dts/omap3-overo-common-lcd43.dtsi
index 7fe0f9148232..7e30f9d45790 100644
--- a/arch/arm/boot/dts/omap3-overo-common-lcd43.dtsi
+++ b/arch/arm/boot/dts/omap3-overo-common-lcd43.dtsi
@@ -75,7 +75,7 @@
 };
 
 &dss {
-	status = "ok";
+	status = "okay";
 
 	pinctrl-names = "default";
 	pinctrl-0 = <&dss_dpi_pins>;
diff --git a/arch/arm/boot/dts/omap3-pandora-common.dtsi b/arch/arm/boot/dts/omap3-pandora-common.dtsi
index ec5891718ae6..e19beb895f88 100644
--- a/arch/arm/boot/dts/omap3-pandora-common.dtsi
+++ b/arch/arm/boot/dts/omap3-pandora-common.dtsi
@@ -670,7 +670,7 @@
 };
 
 &venc {
-	status = "ok";
+	status = "okay";
 
 	vdda-supply = <&vdac>;
 
@@ -686,7 +686,7 @@
 	pinctrl-names = "default";
 	pinctrl-0 = < &dss_dpi_pins >;
 
-	status = "ok";
+	status = "okay";
 	vdds_dsi-supply = <&vpll2>;
 
 	port {
diff --git a/arch/arm/boot/dts/omap3-panel-sharp-ls037v7dw01.dtsi b/arch/arm/boot/dts/omap3-panel-sharp-ls037v7dw01.dtsi
index b8b9fcc41ef1..2dbb687d4df2 100644
--- a/arch/arm/boot/dts/omap3-panel-sharp-ls037v7dw01.dtsi
+++ b/arch/arm/boot/dts/omap3-panel-sharp-ls037v7dw01.dtsi
@@ -46,7 +46,7 @@
 };
 
 &dss {
-	status = "ok";
+	status = "okay";
 	port {
 		dpi_out: endpoint {
 			remote-endpoint = <&lcd_in>;
diff --git a/arch/arm/boot/dts/omap3-thunder.dts b/arch/arm/boot/dts/omap3-thunder.dts
index 6276e7079b36..ad2164e3b0f2 100644
--- a/arch/arm/boot/dts/omap3-thunder.dts
+++ b/arch/arm/boot/dts/omap3-thunder.dts
@@ -64,7 +64,7 @@
 };
 
 &dss {
-	status = "ok";
+	status = "okay";
 
 	pinctrl-names = "default";
 	pinctrl-0 = <&dss_dpi_pins>;
diff --git a/arch/arm/boot/dts/omap34xx.dtsi b/arch/arm/boot/dts/omap34xx.dtsi
index 7b09cbee8bb8..0ec08012d36d 100644
--- a/arch/arm/boot/dts/omap34xx.dtsi
+++ b/arch/arm/boot/dts/omap34xx.dtsi
@@ -134,7 +134,7 @@
 };
 
 &ssi {
-	status = "ok";
+	status = "okay";
 
 	clocks = <&ssi_ssr_fck>,
 		 <&ssi_sst_fck>,
diff --git a/arch/arm/boot/dts/omap36xx.dtsi b/arch/arm/boot/dts/omap36xx.dtsi
index 1e552f08f120..65588005e679 100644
--- a/arch/arm/boot/dts/omap36xx.dtsi
+++ b/arch/arm/boot/dts/omap36xx.dtsi
@@ -181,7 +181,7 @@
 };
 
 &ssi {
-	status = "ok";
+	status = "okay";
 
 	clocks = <&ssi_ssr_fck>,
 		 <&ssi_sst_fck>,
diff --git a/arch/arm/boot/dts/omap4-duovero-parlor.dts b/arch/arm/boot/dts/omap4-duovero-parlor.dts
index 8047e8cdb3af..07d12afe74d4 100644
--- a/arch/arm/boot/dts/omap4-duovero-parlor.dts
+++ b/arch/arm/boot/dts/omap4-duovero-parlor.dts
@@ -171,11 +171,11 @@
 };
 
 &dss {
-	status = "ok";
+	status = "okay";
 };
 
 &hdmi {
-	status = "ok";
+	status = "okay";
 	vdda-supply = <&vdac>;
 
 	pinctrl-names = "default";
diff --git a/arch/arm/boot/dts/omap4-panda-common.dtsi b/arch/arm/boot/dts/omap4-panda-common.dtsi
index 14be2ecb62b1..5a4f50a7c188 100644
--- a/arch/arm/boot/dts/omap4-panda-common.dtsi
+++ b/arch/arm/boot/dts/omap4-panda-common.dtsi
@@ -546,7 +546,7 @@
 };
 
 &dss {
-	status = "ok";
+	status = "okay";
 
 	port {
 		dpi_out: endpoint {
@@ -557,12 +557,12 @@
 };
 
 &dsi2 {
-	status = "ok";
+	status = "okay";
 	vdd-supply = <&vcxio>;
 };
 
 &hdmi {
-	status = "ok";
+	status = "okay";
 	vdda-supply = <&vdac>;
 
 	port {
diff --git a/arch/arm/boot/dts/omap4-sdp.dts b/arch/arm/boot/dts/omap4-sdp.dts
index 3c274965ff40..af55a7b5dc67 100644
--- a/arch/arm/boot/dts/omap4-sdp.dts
+++ b/arch/arm/boot/dts/omap4-sdp.dts
@@ -648,11 +648,11 @@
 };
 
 &dss {
-	status = "ok";
+	status = "okay";
 };
 
 &dsi1 {
-	status = "ok";
+	status = "okay";
 	vdd-supply = <&vcxio>;
 
 	port {
@@ -677,7 +677,7 @@
 };
 
 &dsi2 {
-	status = "ok";
+	status = "okay";
 	vdd-supply = <&vcxio>;
 
 	port {
@@ -702,7 +702,7 @@
 };
 
 &hdmi {
-	status = "ok";
+	status = "okay";
 	vdda-supply = <&vdac>;
 
 	port {
diff --git a/arch/arm/boot/dts/omap5-board-common.dtsi b/arch/arm/boot/dts/omap5-board-common.dtsi
index 7fff555ee394..9a7b3575a344 100644
--- a/arch/arm/boot/dts/omap5-board-common.dtsi
+++ b/arch/arm/boot/dts/omap5-board-common.dtsi
@@ -743,11 +743,11 @@
 };
 
 &dss {
-	status = "ok";
+	status = "okay";
 };
 
 &hdmi {
-	status = "ok";
+	status = "okay";
 
 	/* vdda-supply populated in board specific dts file */
 
diff --git a/arch/arm/boot/dts/omap5-cm-t54.dts b/arch/arm/boot/dts/omap5-cm-t54.dts
index e78d3718f145..ca759b7b8a58 100644
--- a/arch/arm/boot/dts/omap5-cm-t54.dts
+++ b/arch/arm/boot/dts/omap5-cm-t54.dts
@@ -653,7 +653,7 @@
 };
 
 &dss {
-	status = "ok";
+	status = "okay";
 
 	pinctrl-names = "default";
 	pinctrl-0 = <&dss_dpi_pins>;
@@ -677,12 +677,12 @@
 };
 
 &dsi2 {
-	status = "ok";
+	status = "okay";
 	vdd-supply = <&ldo4_reg>;
 };
 
 &hdmi {
-	status = "ok";
+	status = "okay";
 	vdda-supply = <&ldo4_reg>;
 
 	pinctrl-names = "default";
diff --git a/arch/arm/boot/dts/qcom-apq8060-dragonboard.dts b/arch/arm/boot/dts/qcom-apq8060-dragonboard.dts
index 4e6c50d45cb2..dace8ffeb991 100644
--- a/arch/arm/boot/dts/qcom-apq8060-dragonboard.dts
+++ b/arch/arm/boot/dts/qcom-apq8060-dragonboard.dts
@@ -461,11 +461,11 @@
 		};
 
 		gsbi@19800000 {
-			status = "ok";
+			status = "okay";
 			qcom,mode = <GSBI_PROT_I2C>;
 
 			i2c@19880000 {
-				status = "ok";
+				status = "okay";
 				pinctrl-names = "default";
 				pinctrl-0 = <&dragon_gsbi8_i2c_pins>;
 
@@ -497,17 +497,17 @@
 		};
 
 		gsbi@19c00000 {
-			status = "ok";
+			status = "okay";
 			qcom,mode = <GSBI_PROT_I2C_UART>;
 
 			serial@19c40000 {
-				status = "ok";
+				status = "okay";
 				pinctrl-names = "default";
 				pinctrl-0 = <&dragon_gsbi12_serial_pins>;
 			};
 
 			i2c@19c80000 {
-				status = "ok";
+				status = "okay";
 				pinctrl-names = "default";
 				pinctrl-0 = <&dragon_gsbi12_i2c_pins>;
 
@@ -571,7 +571,7 @@
 
 		external-bus@1a100000 {
 			/* The EBI2 will instantiate first, then populate its children */
-			status = "ok";
+			status = "okay";
 			pinctrl-names = "default";
 			pinctrl-0 = <&dragon_ebi2_pins>;
 
diff --git a/arch/arm/boot/dts/qcom-apq8064-asus-nexus7-flo.dts b/arch/arm/boot/dts/qcom-apq8064-asus-nexus7-flo.dts
index a701d4bac320..3bce47d16ab3 100644
--- a/arch/arm/boot/dts/qcom-apq8064-asus-nexus7-flo.dts
+++ b/arch/arm/boot/dts/qcom-apq8064-asus-nexus7-flo.dts
@@ -302,11 +302,11 @@
 		};
 
 		gsbi@16500000 {
-			status = "ok";
+			status = "okay";
 			qcom,mode = <GSBI_PROT_I2C_UART>;
 
 			serial@16540000 {
-				status = "ok";
+				status = "okay";
 
 				pinctrl-names = "default";
 				pinctrl-0 = <&gsbi6_uart_4pins>;
@@ -314,10 +314,10 @@
 		};
 
 		gsbi@16600000 {
-			status = "ok";
+			status = "okay";
 			qcom,mode = <GSBI_PROT_I2C_UART>;
 			serial@16640000 {
-				status = "ok";
+				status = "okay";
 			};
 		};
 
diff --git a/arch/arm/boot/dts/qcom-apq8064-cm-qs600.dts b/arch/arm/boot/dts/qcom-apq8064-cm-qs600.dts
index 209eb21cea00..0148148a8e0a 100644
--- a/arch/arm/boot/dts/qcom-apq8064-cm-qs600.dts
+++ b/arch/arm/boot/dts/qcom-apq8064-cm-qs600.dts
@@ -141,10 +141,10 @@
 		};
 
 		gsbi@16600000 {
-			status = "ok";
+			status = "okay";
 			qcom,mode = <GSBI_PROT_I2C_UART>;
 			serial@16640000 {
-				status = "ok";
+				status = "okay";
 				pinctrl-names = "default";
 				pinctrl-0 = <&gsbi7_uart_2pins>;
 			};
@@ -152,7 +152,7 @@
 
 		/* OTG */
 		usb@12500000 {
-			status = "ok";
+			status = "okay";
 			dr_mode = "otg";
 			ulpi {
 				phy {
@@ -209,7 +209,7 @@
 		};
 
 		pci@1b500000 {
-			status = "ok";
+			status = "okay";
 			vdda-supply = <&pm8921_s3>;
 			vdda_phy-supply = <&pm8921_lvs6>;
 			vdda_refclk-supply = <&v3p3_fixed>;
diff --git a/arch/arm/boot/dts/qcom-apq8064-ifc6410.dts b/arch/arm/boot/dts/qcom-apq8064-ifc6410.dts
index 83aaf4a74398..d0a17b5a5fa3 100644
--- a/arch/arm/boot/dts/qcom-apq8064-ifc6410.dts
+++ b/arch/arm/boot/dts/qcom-apq8064-ifc6410.dts
@@ -215,21 +215,21 @@
 		};
 
 		gsbi@16500000 {
-			status = "ok";
+			status = "okay";
 			qcom,mode = <GSBI_PROT_UART_W_FC>;
 
 			serial@16540000 {
-				status = "ok";
+				status = "okay";
 				pinctrl-names = "default";
 				pinctrl-0 = <&gsbi6_uart_4pins>;
 			};
 		};
 
 		gsbi@16600000 {
-			status = "ok";
+			status = "okay";
 			qcom,mode = <GSBI_PROT_I2C_UART>;
 			serial@16640000 {
-				status = "ok";
+				status = "okay";
 				pinctrl-names = "default";
 				pinctrl-0 = <&gsbi7_uart_2pins>;
 			};
@@ -279,7 +279,7 @@
 		};
 
 		pci@1b500000 {
-			status = "ok";
+			status = "okay";
 			vdda-supply = <&pm8921_s3>;
 			vdda_phy-supply = <&pm8921_lvs6>;
 			vdda_refclk-supply = <&ext_3p3v>;
diff --git a/arch/arm/boot/dts/qcom-apq8064-sony-xperia-yuga.dts b/arch/arm/boot/dts/qcom-apq8064-sony-xperia-yuga.dts
index 8bf488fb86ad..72e47bdc5c12 100644
--- a/arch/arm/boot/dts/qcom-apq8064-sony-xperia-yuga.dts
+++ b/arch/arm/boot/dts/qcom-apq8064-sony-xperia-yuga.dts
@@ -362,11 +362,11 @@
 		};
 
 		gsbi@1a200000 {
-			status = "ok";
+			status = "okay";
 			qcom,mode = <GSBI_PROT_I2C_UART>;
 
 			serial@1a240000 {
-				status = "ok";
+				status = "okay";
 
 				pinctrl-names = "default";
 				pinctrl-0 = <&gsbi5_uart_pin_a>;
diff --git a/arch/arm/boot/dts/qcom-apq8074-dragonboard.dts b/arch/arm/boot/dts/qcom-apq8074-dragonboard.dts
index 244f04e19c9d..83793b835d40 100644
--- a/arch/arm/boot/dts/qcom-apq8074-dragonboard.dts
+++ b/arch/arm/boot/dts/qcom-apq8074-dragonboard.dts
@@ -19,13 +19,13 @@
 
 	soc {
 		serial@f991e000 {
-			status = "ok";
+			status = "okay";
 		};
 
 		sdhci@f9824900 {
 			bus-width = <8>;
 			non-removable;
-			status = "ok";
+			status = "okay";
 
 			vmmc-supply = <&pm8941_l20>;
 			vqmmc-supply = <&pm8941_s3>;
@@ -39,14 +39,14 @@
 			pinctrl-names = "default";
 			pinctrl-0 = <&sdhc2_pin_a>, <&sdhc2_cd_pin_a>;
 			bus-width = <4>;
-			status = "ok";
+			status = "okay";
 
 			vmmc-supply = <&pm8941_l21>;
 			vqmmc-supply = <&pm8941_l13>;
 		};
 
 		usb@f9a55000 {
-			status = "ok";
+			status = "okay";
 			phys = <&usb_hs2_phy>;
 			phy-select = <&tcsr 0xb000 1>;
 			extcon = <&smbb>, <&usb_id>;
@@ -56,7 +56,7 @@
 			adp-disable;
 			ulpi {
 				phy@b {
-					status = "ok";
+					status = "okay";
 					v3p3-supply = <&pm8941_l24>;
 					v1p8-supply = <&pm8941_l6>;
 					extcon = <&smbb>;
diff --git a/arch/arm/boot/dts/qcom-ipq4019-ap.dk01.1.dtsi b/arch/arm/boot/dts/qcom-ipq4019-ap.dk01.1.dtsi
index 418f9a022336..c93b2164db44 100644
--- a/arch/arm/boot/dts/qcom-ipq4019-ap.dk01.1.dtsi
+++ b/arch/arm/boot/dts/qcom-ipq4019-ap.dk01.1.dtsi
@@ -30,7 +30,7 @@
 
 	soc {
 		rng@22000 {
-			status = "ok";
+			status = "okay";
 		};
 
 		pinctrl@1000000 {
@@ -66,13 +66,13 @@
 		};
 
 		blsp_dma: dma@7884000 {
-			status = "ok";
+			status = "okay";
 		};
 
 		spi@78b5000 {
 			pinctrl-0 = <&spi_0_pins>;
 			pinctrl-names = "default";
-			status = "ok";
+			status = "okay";
 			cs-gpios = <&tlmm 54 0>;
 
 			mx25l25635e@0 {
@@ -87,27 +87,27 @@
 		serial@78af000 {
 			pinctrl-0 = <&serial_pins>;
 			pinctrl-names = "default";
-			status = "ok";
+			status = "okay";
 		};
 
 		cryptobam: dma@8e04000 {
-			status = "ok";
+			status = "okay";
 		};
 
 		crypto@8e3a000 {
-			status = "ok";
+			status = "okay";
 		};
 
 		watchdog@b017000 {
-			status = "ok";
+			status = "okay";
 		};
 
 		wifi@a000000 {
-			status = "ok";
+			status = "okay";
 		};
 
 		wifi@a800000 {
-			status = "ok";
+			status = "okay";
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/qcom-ipq4019-ap.dk04.1-c1.dts b/arch/arm/boot/dts/qcom-ipq4019-ap.dk04.1-c1.dts
index 7a96f300bc8d..b0f476ff017f 100644
--- a/arch/arm/boot/dts/qcom-ipq4019-ap.dk04.1-c1.dts
+++ b/arch/arm/boot/dts/qcom-ipq4019-ap.dk04.1-c1.dts
@@ -9,11 +9,11 @@
 
 	soc {
 		dma@7984000 {
-			status = "ok";
+			status = "okay";
 		};
 
 		qpic-nand@79b0000 {
-			status = "ok";
+			status = "okay";
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/qcom-ipq4019-ap.dk04.1.dtsi b/arch/arm/boot/dts/qcom-ipq4019-ap.dk04.1.dtsi
index 7c1eb1963c67..7a337dc08741 100644
--- a/arch/arm/boot/dts/qcom-ipq4019-ap.dk04.1.dtsi
+++ b/arch/arm/boot/dts/qcom-ipq4019-ap.dk04.1.dtsi
@@ -70,23 +70,23 @@
 		serial@78af000 {
 			pinctrl-0 = <&serial_0_pins>;
 			pinctrl-names = "default";
-			status = "ok";
+			status = "okay";
 		};
 
 		serial@78b0000 {
 			pinctrl-0 = <&serial_1_pins>;
 			pinctrl-names = "default";
-			status = "ok";
+			status = "okay";
 		};
 
 		dma@7884000 {
-			status = "ok";
+			status = "okay";
 		};
 
 		spi@78b5000 { /* BLSP1 QUP1 */
 			pinctrl-0 = <&spi_0_pins>;
 			pinctrl-names = "default";
-			status = "ok";
+			status = "okay";
 			cs-gpios = <&tlmm 12 0>;
 
 			m25p80@0 {
@@ -99,7 +99,7 @@
 		};
 
 		pci@40000000 {
-			status = "ok";
+			status = "okay";
 			perst-gpio = <&tlmm 38 0x1>;
 		};
 
diff --git a/arch/arm/boot/dts/qcom-ipq4019-ap.dk07.1-c1.dts b/arch/arm/boot/dts/qcom-ipq4019-ap.dk07.1-c1.dts
index 8c7ef6537ae6..f343a2244386 100644
--- a/arch/arm/boot/dts/qcom-ipq4019-ap.dk07.1-c1.dts
+++ b/arch/arm/boot/dts/qcom-ipq4019-ap.dk07.1-c1.dts
@@ -9,12 +9,12 @@
 
 	soc {
 		pci@40000000 {
-			status = "ok";
+			status = "okay";
 			perst-gpio = <&tlmm 38 0x1>;
 		};
 
 		spi@78b6000 {
-			status = "ok";
+			status = "okay";
 		};
 
 		pinctrl@1000000 {
@@ -43,13 +43,13 @@
 		serial@78b0000 {
 			pinctrl-0 = <&serial_1_pins>;
 			pinctrl-names = "default";
-			status = "ok";
+			status = "okay";
 		};
 
 		spi@78b5000 {
 			pinctrl-0 = <&spi_0_pins>;
 			pinctrl-names = "default";
-			status = "ok";
+			status = "okay";
 			cs-gpios = <&tlmm 12 0>;
 
 			m25p80@0 {
diff --git a/arch/arm/boot/dts/qcom-ipq4019-ap.dk07.1-c2.dts b/arch/arm/boot/dts/qcom-ipq4019-ap.dk07.1-c2.dts
index af7a9028d492..582acb681a98 100644
--- a/arch/arm/boot/dts/qcom-ipq4019-ap.dk07.1-c2.dts
+++ b/arch/arm/boot/dts/qcom-ipq4019-ap.dk07.1-c2.dts
@@ -19,7 +19,7 @@
 		serial@78b0000 {
 			pinctrl-0 = <&serial_1_pins>;
 			pinctrl-names = "default";
-			status = "ok";
+			status = "okay";
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/qcom-ipq4019-ap.dk07.1.dtsi b/arch/arm/boot/dts/qcom-ipq4019-ap.dk07.1.dtsi
index 9f1a5a668772..94872518b5a2 100644
--- a/arch/arm/boot/dts/qcom-ipq4019-ap.dk07.1.dtsi
+++ b/arch/arm/boot/dts/qcom-ipq4019-ap.dk07.1.dtsi
@@ -49,27 +49,27 @@
 		serial@78af000 {
 			pinctrl-0 = <&serial_0_pins>;
 			pinctrl-names = "default";
-			status = "ok";
+			status = "okay";
 		};
 
 		dma@7884000 {
-			status = "ok";
+			status = "okay";
 		};
 
 		i2c@78b7000 { /* BLSP1 QUP2 */
 			pinctrl-0 = <&i2c_0_pins>;
 			pinctrl-names = "default";
-			status = "ok";
+			status = "okay";
 		};
 
 		dma@7984000 {
-			status = "ok";
+			status = "okay";
 		};
 
 		qpic-nand@79b0000 {
 			pinctrl-0 = <&nand_pins>;
 			pinctrl-names = "default";
-			status = "ok";
+			status = "okay";
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/qcom-ipq8064-ap148.dts b/arch/arm/boot/dts/qcom-ipq8064-ap148.dts
index 554c65e7aa0e..e5b9b9cf6097 100644
--- a/arch/arm/boot/dts/qcom-ipq8064-ap148.dts
+++ b/arch/arm/boot/dts/qcom-ipq8064-ap148.dts
@@ -24,7 +24,7 @@
 
 		gsbi@16300000 {
 			i2c@16380000 {
-				status = "ok";
+				status = "okay";
 				clock-frequency = <200000>;
 				pinctrl-0 = <&i2c4_pins>;
 				pinctrl-names = "default";
diff --git a/arch/arm/boot/dts/qcom-ipq8064-v1.0.dtsi b/arch/arm/boot/dts/qcom-ipq8064-v1.0.dtsi
index e239a0486936..65330065390a 100644
--- a/arch/arm/boot/dts/qcom-ipq8064-v1.0.dtsi
+++ b/arch/arm/boot/dts/qcom-ipq8064-v1.0.dtsi
@@ -16,19 +16,19 @@
 	soc {
 		gsbi@16300000 {
 			qcom,mode = <GSBI_PROT_I2C_UART>;
-			status = "ok";
+			status = "okay";
 
 			serial@16340000 {
-				status = "ok";
+				status = "okay";
 			};
 		};
 
 		gsbi5: gsbi@1a200000 {
 			qcom,mode = <GSBI_PROT_SPI>;
-			status = "ok";
+			status = "okay";
 
 			spi4: spi@1a280000 {
-				status = "ok";
+				status = "okay";
 				spi-max-frequency = <50000000>;
 
 				pinctrl-0 = <&spi_pins>;
@@ -57,12 +57,12 @@
 		};
 
 		sata-phy@1b400000 {
-			status = "ok";
+			status = "okay";
 		};
 
 		sata@29000000 {
 			ports-implemented = <0x1>;
-			status = "ok";
+			status = "okay";
 		};
 
 		gpio_keys {
diff --git a/arch/arm/boot/dts/qcom-mdm9615-wp8548.dtsi b/arch/arm/boot/dts/qcom-mdm9615-wp8548.dtsi
index 26b034bd19d2..a725b73b5a2e 100644
--- a/arch/arm/boot/dts/qcom-mdm9615-wp8548.dtsi
+++ b/arch/arm/boot/dts/qcom-mdm9615-wp8548.dtsi
@@ -125,12 +125,12 @@
 };
 
 &gsbi3 {
-	status = "ok";
+	status = "okay";
 	qcom,mode = <GSBI_PROT_SPI>;
 };
 
 &gsbi3_spi {
-	status = "ok";
+	status = "okay";
 	pinctrl-0 = <&gsbi3_pins>;
 	pinctrl-names = "default";
 	assigned-clocks = <&gcc GSBI3_QUP_CLK>;
@@ -138,34 +138,34 @@
 };
 
 &gsbi4 {
-	status = "ok";
+	status = "okay";
 	qcom,mode = <GSBI_PROT_UART_W_FC>;
 };
 
 &gsbi4_serial {
-	status = "ok";
+	status = "okay";
 	pinctrl-0 = <&gsbi4_pins>;
 	pinctrl-names = "default";
 };
 
 &gsbi5 {
-	status = "ok";
+	status = "okay";
 	qcom,mode = <GSBI_PROT_I2C_UART>;
 };
 
 &gsbi5_i2c {
-	status = "ok";
+	status = "okay";
 	clock-frequency = <200000>;
 	pinctrl-0 = <&gsbi5_i2c_pins>;
 	pinctrl-names = "default";
 };
 
 &gsbi5_serial {
-	status = "ok";
+	status = "okay";
 	pinctrl-0 = <&gsbi5_uart_pins>;
 	pinctrl-names = "default";
 };
 
 &sdcc1 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/arch/arm/boot/dts/qcom-msm8660-surf.dts b/arch/arm/boot/dts/qcom-msm8660-surf.dts
index f01a11b18d6a..6a321ccb0bd0 100644
--- a/arch/arm/boot/dts/qcom-msm8660-surf.dts
+++ b/arch/arm/boot/dts/qcom-msm8660-surf.dts
@@ -17,10 +17,10 @@
 
 	soc {
 		gsbi@19c00000 {
-			status = "ok";
+			status = "okay";
 			qcom,mode = <GSBI_PROT_I2C_UART>;
 			serial@19c40000 {
-				status = "ok";
+				status = "okay";
 			};
 		};
 
diff --git a/arch/arm/boot/dts/qcom-msm8960-cdp.dts b/arch/arm/boot/dts/qcom-msm8960-cdp.dts
index 82d5d8267adf..e7d2e937ea4c 100644
--- a/arch/arm/boot/dts/qcom-msm8960-cdp.dts
+++ b/arch/arm/boot/dts/qcom-msm8960-cdp.dts
@@ -17,10 +17,10 @@
 
 	soc {
 		gsbi@16400000 {
-			status = "ok";
+			status = "okay";
 			qcom,mode = <GSBI_PROT_I2C_UART>;
 			serial@16440000 {
-				status = "ok";
+				status = "okay";
 			};
 		};
 
@@ -273,12 +273,12 @@
 		};
 
 		gsbi@16000000 {
-			status = "ok";
+			status = "okay";
 			qcom,mode = <GSBI_PROT_SPI>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&spi1_default>;
 			spi@16080000 {
-				status = "ok";
+				status = "okay";
 				eth@0 {
 					compatible = "micrel,ks8851";
 					reg = <0>;
diff --git a/arch/arm/boot/dts/qcom-msm8974-fairphone-fp2.dts b/arch/arm/boot/dts/qcom-msm8974-fairphone-fp2.dts
index bf402ae39226..3353988046e8 100644
--- a/arch/arm/boot/dts/qcom-msm8974-fairphone-fp2.dts
+++ b/arch/arm/boot/dts/qcom-msm8974-fairphone-fp2.dts
@@ -254,7 +254,7 @@
 
 &soc {
 	serial@f991e000 {
-		status = "ok";
+		status = "okay";
 	};
 
 	pinctrl@fd510000 {
@@ -296,7 +296,7 @@
 	};
 
 	sdhci@f9824900 {
-		status = "ok";
+		status = "okay";
 
 		vmmc-supply = <&pm8941_l20>;
 		vqmmc-supply = <&pm8941_s3>;
@@ -309,7 +309,7 @@
 	};
 
 	sdhci@f98a4900 {
-		status = "ok";
+		status = "okay";
 
 		vmmc-supply = <&pm8941_l21>;
 		vqmmc-supply = <&pm8941_l13>;
@@ -321,7 +321,7 @@
 	};
 
 	usb@f9a55000 {
-		status = "ok";
+		status = "okay";
 
 		phys = <&usb_hs1_phy>;
 		phy-select = <&tcsr 0xb000 0>;
@@ -334,7 +334,7 @@
 
 		ulpi {
 			phy@a {
-				status = "ok";
+				status = "okay";
 
 				v1p8-supply = <&pm8941_l6>;
 				v3p3-supply = <&pm8941_l24>;
diff --git a/arch/arm/boot/dts/qcom-msm8974-lge-nexus5-hammerhead.dts b/arch/arm/boot/dts/qcom-msm8974-lge-nexus5-hammerhead.dts
index 3487daf98e81..df8e726ad0c5 100644
--- a/arch/arm/boot/dts/qcom-msm8974-lge-nexus5-hammerhead.dts
+++ b/arch/arm/boot/dts/qcom-msm8974-lge-nexus5-hammerhead.dts
@@ -238,7 +238,7 @@
 
 &soc {
 	serial@f991d000 {
-		status = "ok";
+		status = "okay";
 	};
 
 	pinctrl@fd510000 {
@@ -358,7 +358,7 @@
 	};
 
 	sdhci@f9824900 {
-		status = "ok";
+		status = "okay";
 
 		vmmc-supply = <&pm8941_l20>;
 		vqmmc-supply = <&pm8941_s3>;
@@ -371,7 +371,7 @@
 	};
 
 	sdhci@f98a4900 {
-		status = "ok";
+		status = "okay";
 
 		max-frequency = <100000000>;
 		bus-width = <4>;
@@ -419,7 +419,7 @@
 	};
 
 	i2c@f9967000 {
-		status = "ok";
+		status = "okay";
 		pinctrl-names = "default";
 		pinctrl-0 = <&i2c11_pins>;
 		clock-frequency = <355000>;
@@ -427,7 +427,7 @@
 
 		led-controller@38 {
 			compatible = "ti,lm3630a";
-			status = "ok";
+			status = "okay";
 			reg = <0x38>;
 
 			#address-cells = <1>;
@@ -443,7 +443,7 @@
 	};
 
 	i2c@f9968000 {
-		status = "ok";
+		status = "okay";
 		pinctrl-names = "default";
 		pinctrl-0 = <&i2c12_pins>;
 		clock-frequency = <100000>;
@@ -480,7 +480,7 @@
 	};
 
 	i2c@f9923000 {
-		status = "ok";
+		status = "okay";
 		pinctrl-names = "default";
 		pinctrl-0 = <&i2c1_pins>;
 		clock-frequency = <100000>;
@@ -498,7 +498,7 @@
 	};
 
 	i2c@f9924000 {
-		status = "ok";
+		status = "okay";
 
 		clock-frequency = <355000>;
 		qcom,src-freq = <50000000>;
@@ -533,7 +533,7 @@
 	};
 
 	i2c@f9925000 {
-		status = "ok";
+		status = "okay";
 		pinctrl-names = "default";
 		pinctrl-0 = <&i2c3_pins>;
 		clock-frequency = <100000>;
@@ -551,7 +551,7 @@
 	};
 
 	usb@f9a55000 {
-		status = "ok";
+		status = "okay";
 
 		phys = <&usb_hs1_phy>;
 		phy-select = <&tcsr 0xb000 0>;
@@ -565,7 +565,7 @@
 
 		ulpi {
 			phy@a {
-				status = "ok";
+				status = "okay";
 
 				v1p8-supply = <&pm8941_l6>;
 				v3p3-supply = <&pm8941_l24>;
@@ -576,14 +576,14 @@
 	};
 
 	mdss@fd900000 {
-		status = "ok";
+		status = "okay";
 
 		mdp@fd900000 {
-			status = "ok";
+			status = "okay";
 		};
 
 		dsi@fd922800 {
-			status = "ok";
+			status = "okay";
 
 			vdda-supply = <&pm8941_l2>;
 			vdd-supply = <&pm8941_lvs3>;
@@ -617,7 +617,7 @@
 		};
 
 		dsi-phy@fd922a00 {
-			status = "ok";
+			status = "okay";
 
 			vddio-supply = <&pm8941_l12>;
 		};
diff --git a/arch/arm/boot/dts/qcom-msm8974-samsung-klte.dts b/arch/arm/boot/dts/qcom-msm8974-samsung-klte.dts
index eaa1001d0a46..af3b47beb4d4 100644
--- a/arch/arm/boot/dts/qcom-msm8974-samsung-klte.dts
+++ b/arch/arm/boot/dts/qcom-msm8974-samsung-klte.dts
@@ -18,7 +18,7 @@
 
 &soc {
 	serial@f991e000 {
-		status = "ok";
+		status = "okay";
 	};
 
 };
diff --git a/arch/arm/boot/dts/qcom-msm8974-sony-xperia-amami.dts b/arch/arm/boot/dts/qcom-msm8974-sony-xperia-amami.dts
index 5669f5f58a86..398a3eaf306b 100644
--- a/arch/arm/boot/dts/qcom-msm8974-sony-xperia-amami.dts
+++ b/arch/arm/boot/dts/qcom-msm8974-sony-xperia-amami.dts
@@ -261,7 +261,7 @@
 
 &soc {
 	sdhci@f9824900 {
-		status = "ok";
+		status = "okay";
 
 		vmmc-supply = <&pm8941_l20>;
 		vqmmc-supply = <&pm8941_s3>;
@@ -274,7 +274,7 @@
 	};
 
 	sdhci@f98a4900 {
-		status = "ok";
+		status = "okay";
 
 		bus-width = <4>;
 
@@ -288,7 +288,7 @@
 	};
 
 	serial@f991e000 {
-		status = "ok";
+		status = "okay";
 
 		pinctrl-names = "default";
 		pinctrl-0 = <&blsp1_uart2_pin_a>;
@@ -366,7 +366,7 @@
 	};
 
 	usb@f9a55000 {
-		status = "ok";
+		status = "okay";
 
 		phys = <&usb_hs1_phy>;
 		phy-select = <&tcsr 0xb000 0>;
@@ -379,7 +379,7 @@
 
 		ulpi {
 			phy@a {
-				status = "ok";
+				status = "okay";
 
 				v1p8-supply = <&pm8941_l6>;
 				v3p3-supply = <&pm8941_l24>;
@@ -415,7 +415,7 @@
 		};
 
 		coincell@2800 {
-			status = "ok";
+			status = "okay";
 			qcom,rset-ohms = <2100>;
 			qcom,vset-millivolts = <3000>;
 		};
@@ -423,7 +423,7 @@
 
 	pm8941@1 {
 		wled@d800 {
-			status = "ok";
+			status = "okay";
 
 			qcom,cs-out;
 			qcom,current-limit = <20>;
diff --git a/arch/arm/boot/dts/qcom-msm8974-sony-xperia-castor.dts b/arch/arm/boot/dts/qcom-msm8974-sony-xperia-castor.dts
index 701b396719c7..f4ec08f13003 100644
--- a/arch/arm/boot/dts/qcom-msm8974-sony-xperia-castor.dts
+++ b/arch/arm/boot/dts/qcom-msm8974-sony-xperia-castor.dts
@@ -279,7 +279,7 @@
 
 &soc {
 	sdhci@f9824900 {
-		status = "ok";
+		status = "okay";
 
 		vmmc-supply = <&pm8941_l20>;
 		vqmmc-supply = <&pm8941_s3>;
@@ -292,7 +292,7 @@
 	};
 
 	sdhci@f9864900 {
-		status = "ok";
+		status = "okay";
 
 		max-frequency = <100000000>;
 		non-removable;
@@ -316,7 +316,7 @@
 	};
 
 	sdhci@f98a4900 {
-		status = "ok";
+		status = "okay";
 
 		bus-width = <4>;
 
@@ -330,14 +330,14 @@
 	};
 
 	serial@f991e000 {
-		status = "ok";
+		status = "okay";
 
 		pinctrl-names = "default";
 		pinctrl-0 = <&blsp1_uart2_pin_a>;
 	};
 
 	usb@f9a55000 {
-		status = "ok";
+		status = "okay";
 
 		phys = <&usb_hs1_phy>;
 		phy-select = <&tcsr 0xb000 0>;
@@ -350,7 +350,7 @@
 
 		ulpi {
 			phy@a {
-				status = "ok";
+				status = "okay";
 
 				v1p8-supply = <&pm8941_l6>;
 				v3p3-supply = <&pm8941_l24>;
@@ -482,7 +482,7 @@
 	};
 
 	i2c@f9964000 {
-		status = "ok";
+		status = "okay";
 
 		clock-frequency = <355000>;
 		qcom,src-freq = <50000000>;
@@ -522,7 +522,7 @@
 	};
 
 	i2c@f9967000 {
-		status = "ok";
+		status = "okay";
 		pinctrl-names = "default";
 		pinctrl-0 = <&i2c11_pins>;
 		clock-frequency = <355000>;
@@ -635,7 +635,7 @@
 		};
 
 		coincell@2800 {
-			status = "ok";
+			status = "okay";
 			qcom,rset-ohms = <2100>;
 			qcom,vset-millivolts = <3000>;
 		};
diff --git a/arch/arm/boot/dts/qcom-msm8974-sony-xperia-honami.dts b/arch/arm/boot/dts/qcom-msm8974-sony-xperia-honami.dts
index 450b8321e0a6..622b9156a6e1 100644
--- a/arch/arm/boot/dts/qcom-msm8974-sony-xperia-honami.dts
+++ b/arch/arm/boot/dts/qcom-msm8974-sony-xperia-honami.dts
@@ -261,7 +261,7 @@
 
 &soc {
 	sdhci@f9824900 {
-		status = "ok";
+		status = "okay";
 
 		vmmc-supply = <&pm8941_l20>;
 		vqmmc-supply = <&pm8941_s3>;
@@ -274,7 +274,7 @@
 	};
 
 	sdhci@f98a4900 {
-		status = "ok";
+		status = "okay";
 
 		bus-width = <4>;
 
@@ -288,14 +288,14 @@
 	};
 
 	serial@f991e000 {
-		status = "ok";
+		status = "okay";
 
 		pinctrl-names = "default";
 		pinctrl-0 = <&blsp1_uart2_pin_a>;
 	};
 
 	i2c@f9924000 {
-		status = "ok";
+		status = "okay";
 
 		clock-frequency = <355000>;
 		qcom,src-freq = <50000000>;
@@ -439,7 +439,7 @@
 		};
 
 		coincell@2800 {
-			status = "ok";
+			status = "okay";
 			qcom,rset-ohms = <2100>;
 			qcom,vset-millivolts = <3000>;
 		};
@@ -447,7 +447,7 @@
 
 	pm8941@1 {
 		wled@d800 {
-			status = "ok";
+			status = "okay";
 
 			qcom,cs-out;
 			qcom,current-limit = <20>;
diff --git a/arch/arm/boot/dts/rk3288-evb.dtsi b/arch/arm/boot/dts/rk3288-evb.dtsi
index 2afd686b2033..2028cfc47b10 100644
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
index 5e0a19004e46..591aac05e124 100644
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
index c41d012c8850..cd44aa5aa976 100644
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
index a6ffc381abaa..efe1563f4858 100644
--- a/arch/arm/boot/dts/rk3288-r89.dts
+++ b/arch/arm/boot/dts/rk3288-r89.dts
@@ -106,7 +106,7 @@
 	pinctrl-0 = <&rgmii_pins>;
 	tx_delay = <0x30>;
 	rx_delay = <0x10>;
-	status = "ok";
+	status = "okay";
 };
 
 &hdmi {
diff --git a/arch/arm/boot/dts/rk3288-rock2-square.dts b/arch/arm/boot/dts/rk3288-rock2-square.dts
index cdcdc921ee09..1e7b806899b8 100644
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
index 81e4e953d4a4..c3a840281fb9 100644
--- a/arch/arm/boot/dts/rk3288-tinker.dtsi
+++ b/arch/arm/boot/dts/rk3288-tinker.dtsi
@@ -126,7 +126,7 @@
 	snps,reset-delays-us = <0 10000 1000000>;
 	tx_delay = <0x30>;
 	rx_delay = <0x10>;
-	status = "ok";
+	status = "okay";
 };
 
 &gpu {
diff --git a/arch/arm64/boot/dts/amd/amd-overdrive-rev-b0.dts b/arch/arm64/boot/dts/amd/amd-overdrive-rev-b0.dts
index 8e341be9a399..a77f19ac63cd 100644
--- a/arch/arm64/boot/dts/amd/amd-overdrive-rev-b0.dts
+++ b/arch/arm64/boot/dts/amd/amd-overdrive-rev-b0.dts
@@ -25,7 +25,7 @@
 };
 
 &ccp0 {
-	status = "ok";
+	status = "okay";
 	amd,zlib-support = <1>;
 };
 
@@ -33,39 +33,39 @@
  * NOTE: In Rev.B, gpio0 is reserved.
  */
 &gpio1 {
-	status = "ok";
+	status = "okay";
 };
 
 &gpio2 {
-	status = "ok";
+	status = "okay";
 };
 
 &gpio3 {
-	status = "ok";
+	status = "okay";
 };
 
 &gpio4 {
-	status = "ok";
+	status = "okay";
 };
 
 &i2c0 {
-	status = "ok";
+	status = "okay";
 };
 
 &i2c1 {
-	status = "ok";
+	status = "okay";
 };
 
 &pcie0 {
-	status = "ok";
+	status = "okay";
 };
 
 &spi0 {
-	status = "ok";
+	status = "okay";
 };
 
 &spi1 {
-	status = "ok";
+	status = "okay";
 	sdcard0: sdcard@0 {
 		compatible = "mmc-spi-slot";
 		reg = <0>;
@@ -80,7 +80,7 @@
 };
 
 &ipmi_kcs {
-	status = "ok";
+	status = "okay";
 };
 
 &smb0 {
diff --git a/arch/arm64/boot/dts/amd/amd-overdrive-rev-b1.dts b/arch/arm64/boot/dts/amd/amd-overdrive-rev-b1.dts
index 92cef05c6b74..09fc9c3ac60f 100644
--- a/arch/arm64/boot/dts/amd/amd-overdrive-rev-b1.dts
+++ b/arch/arm64/boot/dts/amd/amd-overdrive-rev-b1.dts
@@ -25,7 +25,7 @@
 };
 
 &ccp0 {
-	status = "ok";
+	status = "okay";
 	amd,zlib-support = <1>;
 };
 
@@ -33,43 +33,43 @@
  * NOTE: In Rev.B, gpio0 is reserved.
  */
 &gpio1 {
-	status = "ok";
+	status = "okay";
 };
 
 &gpio2 {
-	status = "ok";
+	status = "okay";
 };
 
 &gpio3 {
-	status = "ok";
+	status = "okay";
 };
 
 &gpio4 {
-	status = "ok";
+	status = "okay";
 };
 
 &i2c0 {
-	status = "ok";
+	status = "okay";
 };
 
 &i2c1 {
-	status = "ok";
+	status = "okay";
 };
 
 &pcie0 {
-	status = "ok";
+	status = "okay";
 };
 
 &sata1 {
-	status = "ok";
+	status = "okay";
 };
 
 &spi0 {
-	status = "ok";
+	status = "okay";
 };
 
 &spi1 {
-	status = "ok";
+	status = "okay";
 	sdcard0: sdcard@0 {
 		compatible = "mmc-spi-slot";
 		reg = <0>;
@@ -84,7 +84,7 @@
 };
 
 &ipmi_kcs {
-	status = "ok";
+	status = "okay";
 };
 
 &smb0 {
diff --git a/arch/arm64/boot/dts/amd/amd-overdrive.dts b/arch/arm64/boot/dts/amd/amd-overdrive.dts
index 41b3a6c0993d..56f27c71a15b 100644
--- a/arch/arm64/boot/dts/amd/amd-overdrive.dts
+++ b/arch/arm64/boot/dts/amd/amd-overdrive.dts
@@ -19,31 +19,31 @@
 };
 
 &ccp0 {
-	status = "ok";
+	status = "okay";
 };
 
 &gpio0 {
-	status = "ok";
+	status = "okay";
 };
 
 &gpio1 {
-	status = "ok";
+	status = "okay";
 };
 
 &i2c0 {
-	status = "ok";
+	status = "okay";
 };
 
 &pcie0 {
-	status = "ok";
+	status = "okay";
 };
 
 &spi0 {
-	status = "ok";
+	status = "okay";
 };
 
 &spi1 {
-	status = "ok";
+	status = "okay";
 	sdcard0: sdcard@0 {
 		compatible = "mmc-spi-slot";
 		reg = <0>;
diff --git a/arch/arm64/boot/dts/amd/husky.dts b/arch/arm64/boot/dts/amd/husky.dts
index 7acde34772cb..f68c95fe0e90 100644
--- a/arch/arm64/boot/dts/amd/husky.dts
+++ b/arch/arm64/boot/dts/amd/husky.dts
@@ -25,7 +25,7 @@
 };
 
 &ccp0 {
-	status = "ok";
+	status = "okay";
 	amd,zlib-support = <1>;
 };
 
@@ -33,39 +33,39 @@
  * NOTE: In Rev.B, gpio0 is reserved.
  */
 &gpio1 {
-	status = "ok";
+	status = "okay";
 };
 
 &gpio2 {
-	status = "ok";
+	status = "okay";
 };
 
 &gpio3 {
-	status = "ok";
+	status = "okay";
 };
 
 &gpio4 {
-	status = "ok";
+	status = "okay";
 };
 
 &i2c0 {
-	status = "ok";
+	status = "okay";
 };
 
 &i2c1 {
-	status = "ok";
+	status = "okay";
 };
 
 &pcie0 {
-	status = "ok";
+	status = "okay";
 };
 
 &spi0 {
-	status = "ok";
+	status = "okay";
 };
 
 &spi1 {
-	status = "ok";
+	status = "okay";
 	sdcard0: sdcard@0 {
 		compatible = "mmc-spi-slot";
 		reg = <0>;
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
diff --git a/arch/arm64/boot/dts/broadcom/stingray/bcm958742-base.dtsi b/arch/arm64/boot/dts/broadcom/stingray/bcm958742-base.dtsi
index a9b92e52d50e..43aa5e9c0020 100644
--- a/arch/arm64/boot/dts/broadcom/stingray/bcm958742-base.dtsi
+++ b/arch/arm64/boot/dts/broadcom/stingray/bcm958742-base.dtsi
@@ -151,7 +151,7 @@
 };
 
 &nand {
-	status = "ok";
+	status = "okay";
 	nandcs@0 {
 		compatible = "brcm,nandcs";
 		reg = <0>;
diff --git a/arch/arm64/boot/dts/hisilicon/hi3660-hikey960.dts b/arch/arm64/boot/dts/hisilicon/hi3660-hikey960.dts
index e035cf195b19..73312284ec5f 100644
--- a/arch/arm64/boot/dts/hisilicon/hi3660-hikey960.dts
+++ b/arch/arm64/boot/dts/hisilicon/hi3660-hikey960.dts
@@ -527,7 +527,7 @@
 	status = "okay";
 
 	adv7533: adv7533@39 {
-		status = "ok";
+		status = "okay";
 		compatible = "adi,adv7533";
 		reg = <0x39>;
 	};
@@ -602,7 +602,7 @@
 		     &sdio_cfg_func>;
 	/* WL_EN */
 	vmmc-supply = <&wlan_en>;
-	status = "ok";
+	status = "okay";
 
 	wlcore: wlcore@2 {
 		compatible = "ti,wl1837";
diff --git a/arch/arm64/boot/dts/hisilicon/hi3670-hikey970.dts b/arch/arm64/boot/dts/hisilicon/hi3670-hikey970.dts
index 7dac33d4fd5c..7f9f9886c349 100644
--- a/arch/arm64/boot/dts/hisilicon/hi3670-hikey970.dts
+++ b/arch/arm64/boot/dts/hisilicon/hi3670-hikey970.dts
@@ -418,7 +418,7 @@
 		     &sdio_cfg_func>;
 	/* WL_EN */
 	vmmc-supply = <&wlan_en>;
-	status = "ok";
+	status = "okay";
 
 	wlcore: wlcore@2 {
 		compatible = "ti,wl1837";
diff --git a/arch/arm64/boot/dts/hisilicon/hi6220-hikey.dts b/arch/arm64/boot/dts/hisilicon/hi6220-hikey.dts
index c14205cd6bf5..4fb84dbbe410 100644
--- a/arch/arm64/boot/dts/hisilicon/hi6220-hikey.dts
+++ b/arch/arm64/boot/dts/hisilicon/hi6220-hikey.dts
@@ -124,21 +124,21 @@
 
 	soc {
 		spi0: spi@f7106000 {
-			status = "ok";
+			status = "okay";
 		};
 
 		i2c0: i2c@f7100000 {
-			status = "ok";
+			status = "okay";
 		};
 
 		i2c1: i2c@f7101000 {
-			status = "ok";
+			status = "okay";
 		};
 
 		uart1: uart@f7111000 {
 			assigned-clocks = <&sys_ctrl HI6220_UART1_SRC>;
 			assigned-clock-rates = <150000000>;
-			status = "ok";
+			status = "okay";
 
 			bluetooth {
 				compatible = "ti,wl1835-st";
@@ -149,11 +149,11 @@
 		};
 
 		uart2: uart@f7112000 {
-			status = "ok";
+			status = "okay";
 		};
 
 		uart3: uart@f7113000 {
-			status = "ok";
+			status = "okay";
 		};
 
 		/*
@@ -488,11 +488,11 @@
 };
 
 &ade {
-	status = "ok";
+	status = "okay";
 };
 
 &dsi {
-	status = "ok";
+	status = "okay";
 
 	ports {
 		/* 1 for output port */
@@ -509,7 +509,7 @@
 &i2c2 {
 	#address-cells = <1>;
 	#size-cells = <0>;
-	status = "ok";
+	status = "okay";
 
 	adv7533: adv7533@39 {
 		compatible = "adi,adv7533";
diff --git a/arch/arm64/boot/dts/hisilicon/hi6220.dtsi b/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
index 108e2a4227f6..e76a2a63f916 100644
--- a/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
@@ -370,7 +370,7 @@
 			clocks = <&sys_ctrl HI6220_EDMAC_ACLK>;
 			dma-no-cci;
 			dma-type = "hi6220_dma";
-			status = "ok";
+			status = "okay";
 		};
 
 		dual_timer0: timer@f8008000 {
diff --git a/arch/arm64/boot/dts/hisilicon/hip05-d02.dts b/arch/arm64/boot/dts/hisilicon/hip05-d02.dts
index e93c65ede06c..369b69b17b91 100644
--- a/arch/arm64/boot/dts/hisilicon/hip05-d02.dts
+++ b/arch/arm64/boot/dts/hisilicon/hip05-d02.dts
@@ -42,15 +42,15 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
 
 &peri_gpio0 {
-	status = "ok";
+	status = "okay";
 };
 
 &lbc {
-	status = "ok";
+	status = "okay";
 	#address-cells = <2>;
 	#size-cells = <1>;
 	ranges = <0 0 0x0 0x90000000 0x08000000>,
diff --git a/arch/arm64/boot/dts/hisilicon/hip06-d03.dts b/arch/arm64/boot/dts/hisilicon/hip06-d03.dts
index 677862beebef..9f4a930e734d 100644
--- a/arch/arm64/boot/dts/hisilicon/hip06-d03.dts
+++ b/arch/arm64/boot/dts/hisilicon/hip06-d03.dts
@@ -22,37 +22,37 @@
 };
 
 &ipmi0 {
-	status = "ok";
+	status = "okay";
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
 
 &eth0 {
-	status = "ok";
+	status = "okay";
 };
 
 &eth1 {
-	status = "ok";
+	status = "okay";
 };
 
 &eth2 {
-	status = "ok";
+	status = "okay";
 };
 
 &eth3 {
-	status = "ok";
+	status = "okay";
 };
 
 &sas1 {
-	status = "ok";
+	status = "okay";
 };
 
 &usb_ohci {
-	status = "ok";
+	status = "okay";
 };
 
 &usb_ehci {
-	status = "ok";
+	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/hisilicon/hip07-d05.dts b/arch/arm64/boot/dts/hisilicon/hip07-d05.dts
index fcbdffe0868b..81a2312c8a26 100644
--- a/arch/arm64/boot/dts/hisilicon/hip07-d05.dts
+++ b/arch/arm64/boot/dts/hisilicon/hip07-d05.dts
@@ -50,41 +50,41 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
 
 &ipmi0 {
-	status = "ok";
+	status = "okay";
 };
 
 &usb_ohci {
-	status = "ok";
+	status = "okay";
 };
 
 &usb_ehci {
-	status = "ok";
+	status = "okay";
 };
 
 &eth0 {
-	status = "ok";
+	status = "okay";
 };
 
 &eth1 {
-	status = "ok";
+	status = "okay";
 };
 
 &eth2 {
-	status = "ok";
+	status = "okay";
 };
 
 &eth3 {
-	status = "ok";
+	status = "okay";
 };
 
 &sas1 {
-	status = "ok";
+	status = "okay";
 };
 
 &p0_pcie2_a {
-	status = "ok";
+	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/qcom/ipq8074-hk01.dts b/arch/arm64/boot/dts/qcom/ipq8074-hk01.dts
index 70be3f95209b..1b0271dd9f10 100644
--- a/arch/arm64/boot/dts/qcom/ipq8074-hk01.dts
+++ b/arch/arm64/boot/dts/qcom/ipq8074-hk01.dts
@@ -27,11 +27,11 @@
 
 	soc {
 		serial@78b3000 {
-			status = "ok";
+			status = "okay";
 		};
 
 		spi@78b5000 {
-			status = "ok";
+			status = "okay";
 
 			m25p80@0 {
 				  #address-cells = <1>;
@@ -43,19 +43,19 @@
 		};
 
 		serial@78b1000 {
-			 status = "ok";
+			 status = "okay";
 		};
 
 		i2c@78b6000 {
-			 status = "ok";
+			 status = "okay";
 		};
 
 		dma@7984000 {
-			 status = "ok";
+			 status = "okay";
 		};
 
 		nand@79b0000 {
-			status = "ok";
+			status = "okay";
 
 			nand@0 {
 				reg = <0>;
@@ -66,20 +66,20 @@
 		};
 
 		phy@86000 {
-			status = "ok";
+			status = "okay";
 		};
 
 		phy@8e000 {
-			status = "ok";
+			status = "okay";
 		};
 
 		pci@20000000 {
-			status = "ok";
+			status = "okay";
 			perst-gpio = <&tlmm 58 0x1>;
 		};
 
 		pci@10000000 {
-			status = "ok";
+			status = "okay";
 			perst-gpio = <&tlmm 61 0x1>;
 		};
 	};
diff --git a/arch/arm64/boot/dts/qcom/qcs404-evb-4000.dts b/arch/arm64/boot/dts/qcom/qcs404-evb-4000.dts
index 479ad3ac6c28..08d5d51221cf 100644
--- a/arch/arm64/boot/dts/qcom/qcs404-evb-4000.dts
+++ b/arch/arm64/boot/dts/qcom/qcs404-evb-4000.dts
@@ -13,7 +13,7 @@
 };
 
 &ethernet {
-	status = "ok";
+	status = "okay";
 
 	snps,reset-gpio = <&tlmm 60 GPIO_ACTIVE_LOW>;
 	snps,reset-active-low;
diff --git a/arch/arm64/boot/dts/qcom/qcs404-evb.dtsi b/arch/arm64/boot/dts/qcom/qcs404-evb.dtsi
index 501a7330dbc8..c40c9bd165f2 100644
--- a/arch/arm64/boot/dts/qcom/qcs404-evb.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404-evb.dtsi
@@ -79,7 +79,7 @@
 };
 
 &pcie {
-	status = "ok";
+	status = "okay";
 
 	perst-gpio = <&tlmm 43 GPIO_ACTIVE_LOW>;
 
@@ -88,22 +88,22 @@
 };
 
 &pcie_phy {
-	status = "ok";
+	status = "okay";
 
 	vdda-vp-supply = <&vreg_l3_1p05>;
 	vdda-vph-supply = <&vreg_l5_1p8>;
 };
 
 &remoteproc_adsp {
-	status = "ok";
+	status = "okay";
 };
 
 &remoteproc_cdsp {
-	status = "ok";
+	status = "okay";
 };
 
 &remoteproc_wcss {
-	status = "ok";
+	status = "okay";
 };
 
 &rpm_requests {
@@ -197,7 +197,7 @@
 };
 
 &sdcc1 {
-	status = "ok";
+	status = "okay";
 
 	mmc-ddr-1_8v;
 	mmc-hs400-1_8v;
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi b/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi
index 1c52f47c43a6..87fabc64cc39 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi
@@ -134,7 +134,7 @@
 	pinctrl-0 = <&rmii_pins>;
 	tx_delay = <0x30>;
 	rx_delay = <0x10>;
-	status = "ok";
+	status = "okay";
 };
 
 &i2c0 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts b/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
index 6cc310255da8..95097615d6c9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
@@ -183,7 +183,7 @@
 	snps,reset-delays-us = <0 10000 1000000>;
 	tx_delay = <0x30>;
 	rx_delay = <0x10>;
-	status = "ok";
+	status = "okay";
 };
 
 &i2c0 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-r88.dts b/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
index 006a1fb6a816..809665c3ab5e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
@@ -167,7 +167,7 @@
 	pinctrl-0 = <&rmii_pins>;
 	tx_delay = <0x30>;
 	rx_delay = <0x10>;
-	status = "ok";
+	status = "okay";
 };
 
 &i2c0 {
@@ -198,7 +198,7 @@
 };
 
 &io_domains {
-	status = "ok";
+	status = "okay";
 
 	audio-supply = <&vcc_io>;
 	gpio30-supply = <&vcc_io>;
diff --git a/drivers/staging/mt7621-dts/gbpc1.dts b/drivers/staging/mt7621-dts/gbpc1.dts
index 1fb560ff059c..cb7f8b8bb859 100644
--- a/drivers/staging/mt7621-dts/gbpc1.dts
+++ b/drivers/staging/mt7621-dts/gbpc1.dts
@@ -130,11 +130,11 @@
 	ports {
 		port@0 {
 			label = "ethblack";
-			status = "ok";
+			status = "okay";
 		};
 		port@4 {
 			label = "ethblue";
-			status = "ok";
+			status = "okay";
 		};
 	};
 };
diff --git a/drivers/staging/mt7621-dts/gbpc2.dts b/drivers/staging/mt7621-dts/gbpc2.dts
index 52760e7351f6..016d2d87d996 100644
--- a/drivers/staging/mt7621-dts/gbpc2.dts
+++ b/drivers/staging/mt7621-dts/gbpc2.dts
@@ -13,9 +13,9 @@
 };
 
 &gmac1 {
-	status = "ok";
+	status = "okay";
 };
 
 &phy_external {
-	status = "ok";
+	status = "okay";
 };
-- 
2.20.1

