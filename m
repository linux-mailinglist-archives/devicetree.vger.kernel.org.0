Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BBFCE2F3167
	for <lists+devicetree@lfdr.de>; Tue, 12 Jan 2021 14:26:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726119AbhALNS5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jan 2021 08:18:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727998AbhALNSz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jan 2021 08:18:55 -0500
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DAEEC061795
        for <devicetree@vger.kernel.org>; Tue, 12 Jan 2021 05:18:15 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id a12so3308970lfl.6
        for <devicetree@vger.kernel.org>; Tue, 12 Jan 2021 05:18:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=j9m+IwnzGRn0MNlv3uWExdGeMwAnBxVJ8wjKyQ/7eUU=;
        b=CZiiTL46njrMbs1vkhqm/SMkZzPj5ZFIC2XPjyOIT7k4z/1hIa7Zq6DREta/IbR02C
         Gf2F4ctbL21l8vDtWyh3VXN2gvntto+7E3DFlo55sypIo8IALaJpIg6BgDm56JGLH6I0
         cmpPh+htpvADhrKQjbbEavJrGA+kREF3Squ0PwJQinBMv8mQEKm9MypgDdhHwv5Fvv6k
         qkmcEuDh/pGq2H7T32HmutTQawm9v9tm+L++Xmfr93KpZUbQVHlGFHautJPjwAH3ShHY
         h2N7bit0ut03tGPM52/WTH2cDl9dCdrtBCT3lspFX5eTh7vJUW5bUji1DaDYPvvgZMbA
         AGkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=j9m+IwnzGRn0MNlv3uWExdGeMwAnBxVJ8wjKyQ/7eUU=;
        b=HGJZ170R+KTzQyHDTAWtQ2kZtV8kmWlniEkhhWt20ncOUazVn2dtcy+m9bTkb+7Bjm
         lCovr8ktsLbAKAPQLbfiJ5DjUPWnACJ6yupmSQuY9uozKQ8kXp/SBHQUVtSDZNMvj+Bx
         TmcuR8suaZcRxtGNBwcQ/2ZyAxy64GhG2YkixgGfsiLD4VagsNNqQxxM2PwA2fgdJYuP
         kNcKCy91D6JrMvVDUdetuorb4uFktoIVPiN9gcC7g7+3eAnDxd/n5clesZ0Q2V9QxfbU
         Dp4TYOW4ki3frbbVALTXuC3QnqYJNIOpHsnODKXdpT2bNaIxGKa5LXN1iYGCCzgLB3mz
         23Hg==
X-Gm-Message-State: AOAM5335KQQkMg8jl6aalpC40AwLuv/QLOhuRJ7xSBfZFbhAyEOL2r+l
        gay04IJWYKgqnwIMmwbD3jQ=
X-Google-Smtp-Source: ABdhPJwZNnVPxACNl5TA8HPU/VfDQjTKyQLQ/sT1AmwJX4/4F5H2ZUW+/Dbty8EJP38s8Lf7j9mn6g==
X-Received: by 2002:a19:4907:: with SMTP id w7mr2128447lfa.198.1610457493626;
        Tue, 12 Jan 2021 05:18:13 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id v28sm392102lfd.57.2021.01.12.05.18.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Jan 2021 05:18:12 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     bcm-kernel-feedback-list@broadcom.com,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] arm64: dts: broadcom: bcm4908: describe internal switch
Date:   Tue, 12 Jan 2021 14:17:27 +0100
Message-Id: <20210112131727.19020-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

BCM4908 has internal switch with 5 GPHYs. Ports 0 - 3 are always
connected to the internal PHYs. Remaining ports depend on device setup.

Asus GT-AC5300 has an extra switch with its PHYs accessible using the
internal MDIO.

CPU port and Ethernet interface remain to be documented.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 .../bcm4908/bcm4908-asus-gt-ac5300.dts        | 51 +++++++++++
 .../boot/dts/broadcom/bcm4908/bcm4908.dtsi    | 85 ++++++++++++++++++-
 2 files changed, 135 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts
index 13c6b86eef21..51305e96fbd6 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts
@@ -44,6 +44,57 @@ brightness {
 	};
 };
 
+&ports {
+	port@0 {
+		label = "lan2";
+	};
+
+	port@1 {
+		label = "lan1";
+	};
+
+	port@2 {
+		label = "lan6";
+	};
+
+	port@3 {
+		label = "lan5";
+	};
+
+	/* External BCM53134S switch */
+	port@7 {
+		label = "sw";
+		reg = <7>;
+
+		fixed-link {
+			speed = <1000>;
+			full-duplex;
+		};
+	};
+};
+
+&mdio {
+	/* lan8 */
+	phy@0 {
+		reg = <0>;
+	};
+
+	/* lan7 */
+	phy@1 {
+		reg = <1>;
+	};
+
+	/* lan4 */
+	phy@2 {
+		reg = <2>;
+	};
+
+	/* lan3 */
+	phy@3 {
+		reg = <3>;
+	};
+};
+
 &nandcs {
 	nand-ecc-strength = <4>;
 	nand-ecc-step-size = <512>;
diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
index b5b772a9a51b..0b44f32fdef1 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
@@ -108,7 +108,7 @@ soc {
 		compatible = "simple-bus";
 		#address-cells = <1>;
 		#size-cells = <1>;
-		ranges = <0x00 0x00 0x80000000 0x10000>;
+		ranges = <0x00 0x00 0x80000000 0xd0000>;
 
 		usb@c300 {
 			compatible = "generic-ehci";
@@ -130,6 +130,89 @@ usb@d000 {
 			interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
 			status = "disabled";
 		};
+
+		switch@80000 {
+			compatible = "simple-mfd";
+			#size-cells = <1>;
+			#address-cells = <1>;
+			ranges = <0 0x80000 0x50000>;
+
+			switch@0 {
+				compatible = "brcm,bcm4908-switch";
+				reg = <0x0 0x40000>,
+				      <0x40000 0x110>,
+				      <0x40340 0x30>,
+				      <0x40380 0x30>,
+				      <0x40600 0x34>,
+				      <0x40800 0x208>;
+				reg-names = "core", "reg", "intrl2_0",
+					    "intrl2_1", "fcb", "acb";
+				interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>,
+					     <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH>;
+				brcm,num-gphy = <5>;
+				brcm,num-rgmii-ports = <2>;
+
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				ports: ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+						phy-mode = "internal";
+						phy-handle = <&phy8>;
+					};
+
+					port@1 {
+						reg = <1>;
+						phy-mode = "internal";
+						phy-handle = <&phy9>;
+					};
+
+					port@2 {
+						reg = <2>;
+						phy-mode = "internal";
+						phy-handle = <&phy10>;
+					};
+
+					port@3 {
+						reg = <3>;
+						phy-mode = "internal";
+						phy-handle = <&phy11>;
+					};
+				};
+			};
+
+			mdio: mdio@405c0 {
+				compatible = "brcm,unimac-mdio";
+				reg = <0x405c0 0x8>;
+				reg-names = "mdio";
+				#size-cells = <1>;
+				#address-cells = <0>;
+
+				phy8: phy@8 {
+					reg = <8>;
+				};
+
+				phy9: phy@9 {
+					reg = <9>;
+				};
+
+				phy10: phy@a {
+					reg = <10>;
+				};
+
+				phy11: phy@b {
+					reg = <11>;
+				};
+
+				phy12: phy@c {
+					reg = <12>;
+				};
+			};
+		};
 	};
 
 	bus@ff800000 {
-- 
2.26.2

