Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BBA7970274D
	for <lists+devicetree@lfdr.de>; Mon, 15 May 2023 10:34:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229994AbjEOIdz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 May 2023 04:33:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238132AbjEOIdr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 May 2023 04:33:47 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE36319A6
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 01:33:19 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-4f004cc54f4so14307930e87.3
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 01:33:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684139598; x=1686731598;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hRRentaSeR2AdtvuXHv1bfygQdAEcNZfrmAEm/Kcgb0=;
        b=g7q9CG7g/XvOgAoSIfYglV/ckHWZ1TANp57NyYQYwWtlVbsrKSiVfz4+HUA9xaPAVZ
         qBl69N6E+Mk+QVmb3iI3A2E3qggiEqP8TZjZJHjJ6IE8KUhTYeCnSUY5HUVT5aEC72cW
         qJUQ29tQXJMwxwJ5RRJIX+Bqeny2ZzU9PRuFAkfW1YkrJvpmMkerqzsCqfOG/K2OYO+C
         0uwK/U7Fd4xvtWioWxAnzn7hlnxPhWLqkEU8nNeB3T9pxlD+XcadZHs5ViZwCJpErc8o
         8cdwAW/3XSXMaiUp48Z4UEYkYD5nL1cXJ0w89OopjDtP5Y1WRhrF9/CKRzEnSt/Wb6sQ
         GKrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684139598; x=1686731598;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hRRentaSeR2AdtvuXHv1bfygQdAEcNZfrmAEm/Kcgb0=;
        b=OBdIGxuOtfeEkxZ/w6AjkvONIQaUunWTvZ4Ls9967xxnT5Fu4BVvXSnGSNk3kLoydZ
         KjQperitfGdSvf4/PfjrEcmrQqx12bePxpalfZIvuucJAvljSAz037zbWEIxMI/4ITKQ
         UEncVyiLyBBNtGUo7mjcs50jANuBKm7hE4nnkJXAT0YAWoFGss2GdPG6qzQWfrO5les+
         9QhpwX51QS6shYPqzE5GQUCgc4Wd9P21mm7fDYbeB16+FhxvlOsPARcGpWrTKJMuD5lF
         LB9DRLRjPXYc72GG8aPHccGNBrgxS+v4ixq2KcQYZOp2aOugpEcrHLvhT9lVwXVtsiAx
         ukFg==
X-Gm-Message-State: AC+VfDzP7C1AeLA1st4U7xmSO0wapHm5kIw2+uSlRuaAYGhrLEc/I301
        nZbPjI3lsUffmadt3J0oOJI=
X-Google-Smtp-Source: ACHHUZ6hIx2waVTMd7P4xU8BhLanKZgiI2m4CDKNq0A94CJmnTgn1IITypaZDTELZjtBG5GE5I8qZw==
X-Received: by 2002:ac2:4f8e:0:b0:4f1:3eea:eaf9 with SMTP id z14-20020ac24f8e000000b004f13eeaeaf9mr6398532lfs.24.1684139597843;
        Mon, 15 May 2023 01:33:17 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id p3-20020a05651238c300b004f251e73fc5sm2510638lft.30.2023.05.15.01.33.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 May 2023 01:33:17 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] ARM: dts: BCM5301X: Specify MAC addresses on Luxul devices
Date:   Mon, 15 May 2023 10:33:08 +0200
Message-Id: <20230515083308.7612-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

Use NRAM (NVMEM device) and its "et0macaddr" variable (NVMEM cell) to
point Ethernet devices to their MAC addresses.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
This is based on top of the accepted:
dt-bindings: nvmem: brcm,nvram: add #nvmem-cell-cells for MACs
https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230421084312.27932-1-zajec5@gmail.com/
---
 arch/arm/boot/dts/bcm4708-luxul-xap-1510.dts     | 13 +++++++++++++
 arch/arm/boot/dts/bcm4708-luxul-xwc-1000.dts     | 13 +++++++++++++
 arch/arm/boot/dts/bcm47081-luxul-xap-1410.dts    | 13 +++++++++++++
 arch/arm/boot/dts/bcm47081-luxul-xwr-1200.dts    | 11 +++++++++++
 arch/arm/boot/dts/bcm47094-luxul-abr-4500.dts    | 11 +++++++++++
 arch/arm/boot/dts/bcm47094-luxul-xap-1610.dts    | 13 +++++++++++++
 arch/arm/boot/dts/bcm47094-luxul-xbr-4500.dts    | 11 +++++++++++
 arch/arm/boot/dts/bcm47094-luxul-xwc-2000.dts    | 13 +++++++++++++
 arch/arm/boot/dts/bcm47094-luxul-xwr-3100.dts    | 11 +++++++++++
 arch/arm/boot/dts/bcm47094-luxul-xwr-3150-v1.dts |  5 ++++-
 10 files changed, 113 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/bcm4708-luxul-xap-1510.dts b/arch/arm/boot/dts/bcm4708-luxul-xap-1510.dts
index 6de7fe204b0c..9b98a0179f05 100644
--- a/arch/arm/boot/dts/bcm4708-luxul-xap-1510.dts
+++ b/arch/arm/boot/dts/bcm4708-luxul-xap-1510.dts
@@ -20,6 +20,14 @@ memory@0 {
 		reg = <0x00000000 0x08000000>;
 	};
 
+	nvram@1eff0000 {
+		compatible = "brcm,nvram";
+		reg = <0x1eff0000 0x10000>;
+
+		et0macaddr: et0macaddr {
+		};
+	};
+
 	leds {
 		compatible = "gpio-leds";
 
@@ -53,6 +61,11 @@ button-restart {
 	};
 };
 
+&gmac0 {
+	nvmem-cells = <&et0macaddr>;
+	nvmem-cell-names = "mac-address";
+};
+
 &spi_nor {
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/bcm4708-luxul-xwc-1000.dts b/arch/arm/boot/dts/bcm4708-luxul-xwc-1000.dts
index f5b75ba93512..4ca348c06b51 100644
--- a/arch/arm/boot/dts/bcm4708-luxul-xwc-1000.dts
+++ b/arch/arm/boot/dts/bcm4708-luxul-xwc-1000.dts
@@ -24,6 +24,14 @@ memory@0 {
 		reg = <0x00000000 0x08000000>;
 	};
 
+	nvram@1eff0000 {
+		compatible = "brcm,nvram";
+		reg = <0x1eff0000 0x10000>;
+
+		et0macaddr: et0macaddr {
+		};
+	};
+
 	nand_controller: nand-controller@18028000 {
 		nand@0 {
 			partitions {
@@ -60,6 +68,11 @@ button-restart {
 	};
 };
 
+&gmac0 {
+	nvmem-cells = <&et0macaddr>;
+	nvmem-cell-names = "mac-address";
+};
+
 &spi_nor {
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/bcm47081-luxul-xap-1410.dts b/arch/arm/boot/dts/bcm47081-luxul-xap-1410.dts
index 76c9b30b868d..edc194085995 100644
--- a/arch/arm/boot/dts/bcm47081-luxul-xap-1410.dts
+++ b/arch/arm/boot/dts/bcm47081-luxul-xap-1410.dts
@@ -20,6 +20,14 @@ memory@0 {
 		reg = <0x00000000 0x08000000>;
 	};
 
+	nvram@1eff0000 {
+		compatible = "brcm,nvram";
+		reg = <0x1eff0000 0x10000>;
+
+		et0macaddr: et0macaddr {
+		};
+	};
+
 	leds {
 		compatible = "gpio-leds";
 
@@ -53,6 +61,11 @@ button-restart {
 	};
 };
 
+&gmac0 {
+	nvmem-cells = <&et0macaddr>;
+	nvmem-cell-names = "mac-address";
+};
+
 &spi_nor {
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/bcm47081-luxul-xwr-1200.dts b/arch/arm/boot/dts/bcm47081-luxul-xwr-1200.dts
index 6ef0c0788e62..97b61d9d4be9 100644
--- a/arch/arm/boot/dts/bcm47081-luxul-xwr-1200.dts
+++ b/arch/arm/boot/dts/bcm47081-luxul-xwr-1200.dts
@@ -24,6 +24,10 @@ memory@0 {
 	nvram@1eff0000 {
 		compatible = "brcm,nvram";
 		reg = <0x1eff0000 0x10000>;
+
+		et0macaddr: et0macaddr {
+			#nvmem-cell-cells = <1>;
+		};
 	};
 
 	leds {
@@ -106,6 +110,11 @@ &usb2 {
 	vcc-gpio = <&chipcommon 9 GPIO_ACTIVE_HIGH>;
 };
 
+&gmac0 {
+	nvmem-cells = <&et0macaddr 0>;
+	nvmem-cell-names = "mac-address";
+};
+
 &spi_nor {
 	status = "okay";
 };
@@ -137,6 +146,8 @@ port@3 {
 		port@4 {
 			reg = <4>;
 			label = "wan";
+			nvmem-cells = <&et0macaddr 5>;
+			nvmem-cell-names = "mac-address";
 		};
 
 		port@5 {
diff --git a/arch/arm/boot/dts/bcm47094-luxul-abr-4500.dts b/arch/arm/boot/dts/bcm47094-luxul-abr-4500.dts
index 41a0722fa64a..ae5523870854 100644
--- a/arch/arm/boot/dts/bcm47094-luxul-abr-4500.dts
+++ b/arch/arm/boot/dts/bcm47094-luxul-abr-4500.dts
@@ -25,6 +25,10 @@ memory@0 {
 	nvram@1eff0000 {
 		compatible = "brcm,nvram";
 		reg = <0x1eff0000 0x10000>;
+
+		et0macaddr: et0macaddr {
+			#nvmem-cell-cells = <1>;
+		};
 	};
 
 	leds {
@@ -61,6 +65,11 @@ &usb3 {
 	vcc-gpio = <&chipcommon 18 GPIO_ACTIVE_HIGH>;
 };
 
+&gmac0 {
+	nvmem-cells = <&et0macaddr 0>;
+	nvmem-cell-names = "mac-address";
+};
+
 &spi_nor {
 	status = "okay";
 };
@@ -76,6 +85,8 @@ ports {
 		port@0 {
 			reg = <0>;
 			label = "wan";
+			nvmem-cells = <&et0macaddr 1>;
+			nvmem-cell-names = "mac-address";
 		};
 
 		port@1 {
diff --git a/arch/arm/boot/dts/bcm47094-luxul-xap-1610.dts b/arch/arm/boot/dts/bcm47094-luxul-xap-1610.dts
index c56c7e366848..9220f193499e 100644
--- a/arch/arm/boot/dts/bcm47094-luxul-xap-1610.dts
+++ b/arch/arm/boot/dts/bcm47094-luxul-xap-1610.dts
@@ -20,6 +20,14 @@ memory@0 {
 		reg = <0x00000000 0x08000000>;
 	};
 
+	nvram@1eff0000 {
+		compatible = "brcm,nvram";
+		reg = <0x1eff0000 0x10000>;
+
+		et0macaddr: et0macaddr {
+		};
+	};
+
 	leds {
 		compatible = "gpio-leds";
 
@@ -51,6 +59,11 @@ button-restart {
 	};
 };
 
+&gmac0 {
+	nvmem-cells = <&et0macaddr>;
+	nvmem-cell-names = "mac-address";
+};
+
 &spi_nor {
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/bcm47094-luxul-xbr-4500.dts b/arch/arm/boot/dts/bcm47094-luxul-xbr-4500.dts
index 1b5c91a524ac..2bd64dcd4353 100644
--- a/arch/arm/boot/dts/bcm47094-luxul-xbr-4500.dts
+++ b/arch/arm/boot/dts/bcm47094-luxul-xbr-4500.dts
@@ -25,6 +25,10 @@ memory@0 {
 	nvram@1eff0000 {
 		compatible = "brcm,nvram";
 		reg = <0x1eff0000 0x10000>;
+
+		et0macaddr: et0macaddr {
+			#nvmem-cell-cells = <1>;
+		};
 	};
 
 	leds {
@@ -61,6 +65,11 @@ &usb3 {
 	vcc-gpio = <&chipcommon 18 GPIO_ACTIVE_HIGH>;
 };
 
+&gmac0 {
+	nvmem-cells = <&et0macaddr 0>;
+	nvmem-cell-names = "mac-address";
+};
+
 &spi_nor {
 	status = "okay";
 };
@@ -76,6 +85,8 @@ ports {
 		port@0 {
 			reg = <0>;
 			label = "wan";
+			nvmem-cells = <&et0macaddr 1>;
+			nvmem-cell-names = "mac-address";
 		};
 
 		port@1 {
diff --git a/arch/arm/boot/dts/bcm47094-luxul-xwc-2000.dts b/arch/arm/boot/dts/bcm47094-luxul-xwc-2000.dts
index 739063b77b1f..8a6d19f985c1 100644
--- a/arch/arm/boot/dts/bcm47094-luxul-xwc-2000.dts
+++ b/arch/arm/boot/dts/bcm47094-luxul-xwc-2000.dts
@@ -22,6 +22,14 @@ memory@0 {
 		      <0x88000000 0x18000000>;
 	};
 
+	nvram@1eff0000 {
+		compatible = "brcm,nvram";
+		reg = <0x1eff0000 0x10000>;
+
+		et0macaddr: et0macaddr {
+		};
+	};
+
 	leds {
 		compatible = "gpio-leds";
 
@@ -47,6 +55,11 @@ &uart1 {
 	status = "okay";
 };
 
+&gmac0 {
+	nvmem-cells = <&et0macaddr>;
+	nvmem-cell-names = "mac-address";
+};
+
 &spi_nor {
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/bcm47094-luxul-xwr-3100.dts b/arch/arm/boot/dts/bcm47094-luxul-xwr-3100.dts
index 7afc68d5d2c2..ebea188bd2d7 100644
--- a/arch/arm/boot/dts/bcm47094-luxul-xwr-3100.dts
+++ b/arch/arm/boot/dts/bcm47094-luxul-xwr-3100.dts
@@ -25,6 +25,10 @@ memory@0 {
 	nvram@1eff0000 {
 		compatible = "brcm,nvram";
 		reg = <0x1eff0000 0x10000>;
+
+		et0macaddr: et0macaddr {
+			#nvmem-cell-cells = <1>;
+		};
 	};
 
 	leds {
@@ -101,6 +105,11 @@ &usb3 {
 	vcc-gpio = <&chipcommon 18 GPIO_ACTIVE_HIGH>;
 };
 
+&gmac0 {
+	nvmem-cells = <&et0macaddr 0>;
+	nvmem-cell-names = "mac-address";
+};
+
 &spi_nor {
 	status = "okay";
 };
@@ -136,6 +145,8 @@ port@3 {
 		port@4 {
 			reg = <4>;
 			label = "wan";
+			nvmem-cells = <&et0macaddr 5>;
+			nvmem-cell-names = "mac-address";
 		};
 
 		port@5 {
diff --git a/arch/arm/boot/dts/bcm47094-luxul-xwr-3150-v1.dts b/arch/arm/boot/dts/bcm47094-luxul-xwr-3150-v1.dts
index 60a2c441d5bd..2dd05f4dce92 100644
--- a/arch/arm/boot/dts/bcm47094-luxul-xwr-3150-v1.dts
+++ b/arch/arm/boot/dts/bcm47094-luxul-xwr-3150-v1.dts
@@ -27,6 +27,7 @@ nvram@1eff0000 {
 		reg = <0x1eff0000 0x10000>;
 
 		et0macaddr: et0macaddr {
+			#nvmem-cell-cells = <1>;
 		};
 	};
 
@@ -76,7 +77,7 @@ button-restart {
 };
 
 &gmac0 {
-	nvmem-cells = <&et0macaddr>;
+	nvmem-cells = <&et0macaddr 0>;
 	nvmem-cell-names = "mac-address";
 };
 
@@ -119,6 +120,8 @@ port@3 {
 		port@4 {
 			reg = <4>;
 			label = "wan";
+			nvmem-cells = <&et0macaddr 5>;
+			nvmem-cell-names = "mac-address";
 		};
 
 		port@5 {
-- 
2.35.3

