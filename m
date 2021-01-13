Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 97E892F49CC
	for <lists+devicetree@lfdr.de>; Wed, 13 Jan 2021 12:21:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727496AbhAMLO5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jan 2021 06:14:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727394AbhAMLO4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jan 2021 06:14:56 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13E55C061575
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 03:14:16 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id m25so2142960lfc.11
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 03:14:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2oeeMXnnsBnDwet4khk8jHVVA0OfjQp5o9aJi9pKNRk=;
        b=WKDUHSdCX4gH95Tn4N4tgwpSxxqsL4ncdIE5qs/ecGAQVoqECN0iYML+xsh1wZu6Xo
         YLvhoLpNa8rId2dkY+5jrHsa4hW+ooj0GFQNlRqc3F0m8+2Vrc2u9Fl6mmNA9wHvAS3V
         qBB2ggsafCLPPt0MGn+3cC1W8Hv81IoeaWB8tAN4PytxjsyZ4Yyl5M1ONAYLwN4DxBCC
         CBGzYZldt5z1c0yAiQ4tKBA5YROODsqcspu3keG87z1GDYVD/qeoKyROx4rzaEXs3OLx
         TxDuRdY4NTDTiy70FIliyldOVRKyHZBEcbR8heCPeu3P1pE3ZAtcS0Vu63DIdV6fPT/Q
         LM7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2oeeMXnnsBnDwet4khk8jHVVA0OfjQp5o9aJi9pKNRk=;
        b=VZ9xAN9Ku+qbuxHt8UCNYJ5DRhaaQ5JW0NRvg9H/ay9y9sCfuU7LEm5utESjaHXyjy
         DbnLCfonU13cljfsqikNZ6/rRpTcwHcCuTuK9Kuf8C3EWooL52DsG89tWoEntgOjVubS
         d40XKO4HhNQ3E7KoFbYfX8TIslyMGhTmSIivaByJCSiPV8svvXkd/hCcrX1JOoDPAh7C
         qSws8w03REunKXlTotQWzpfFi8ZnfNT+iTVsHh+AUq81e3YU67x4zDrOkqPheKgkANGz
         oSlmxm+T+Nkw9yPHqSuFdCFTQ0U5e1V2Tf3Ulyo4pId80DDy/YXgAYkkueYwYh6MCwGP
         CpbQ==
X-Gm-Message-State: AOAM531uiTDcCDF+GVgvai8D+zmQf35LejuFumpd0+Yx1aCqowakp1gO
        nKGWw6AmOTa8yiWukS5FcSY=
X-Google-Smtp-Source: ABdhPJwMoOl7/GYK9VstQwGm61OrpZbuoD5weCsFYV6iP7QD1Y6yPbd8pN0UU1+LnXjnXGW3nosnNg==
X-Received: by 2002:ac2:5294:: with SMTP id q20mr630407lfm.251.1610536454646;
        Wed, 13 Jan 2021 03:14:14 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id r75sm177180lff.97.2021.01.13.03.14.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Jan 2021 03:14:13 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     bcm-kernel-feedback-list@broadcom.com,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH V2x] arm64: dts: broadcom: bcm4908: describe internal switch
Date:   Wed, 13 Jan 2021 12:14:06 +0100
Message-Id: <20210113111406.19824-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210113110946.19614-1-zajec5@gmail.com>
References: <20210113110946.19614-1-zajec5@gmail.com>
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
Resending V2 with Signed-off-by included

V2: Use simple-bus
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
index b5b772a9a51b..d30dd2042786 100644
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
+			compatible = "simple-bus";
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

