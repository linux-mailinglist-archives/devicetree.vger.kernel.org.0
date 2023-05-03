Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 95A7C6F57C1
	for <lists+devicetree@lfdr.de>; Wed,  3 May 2023 14:16:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229918AbjECMQ4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 May 2023 08:16:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229763AbjECMQr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 May 2023 08:16:47 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D640459D1
        for <devicetree@vger.kernel.org>; Wed,  3 May 2023 05:16:45 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2ac675d84b5so16771931fa.3
        for <devicetree@vger.kernel.org>; Wed, 03 May 2023 05:16:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683116204; x=1685708204;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GbrVXGQ4gijNoQ1jWNgg/exsaQzQT2mAeRVmsaAYNRw=;
        b=DO9E879dBSgkqceuGZ9lNEsnbcgKpWH+iEjvFpW3FpmAfcaDzb79wyC6CTYHCtyZb/
         CBcHNBWFg5V4krhGmBq+sgIf4FEWOzV7X8PSu5pJAsk8eImWpzJzjd6IdQMtPNG7crDn
         yG7sDA5IsjdpDHm7wHeUQJo6zwHwmFOtfko4O1KcXQdsBbRqVAlT4i1rIMQC73khlMdh
         oA41KWK5T7+z4HlQrOyVCyy5cACRTgRCSpovw4bEa7TkCxQ1/vdia0xgMFtvR5f5sQsX
         EwiQh35JKSFiwaTv8+Md19LxMU5OrQABa+0Tr30xM9r/pRfuck4TOxrrjL8ijxuZ3aLd
         m5Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683116204; x=1685708204;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GbrVXGQ4gijNoQ1jWNgg/exsaQzQT2mAeRVmsaAYNRw=;
        b=Il7z4h2J85l+mNyXEVyvUV5Dc702ht2SzQpkp+AIPxQXVW7AsWfFFoCID3ENesZurg
         RMClwTFo+ij1xYch8ZqWBl5Z4B48I7kMRUs+muwVmgN4T8YCwZnuIAWRIlVqdJeHBhBh
         OnETRkEf5cLXdjQpoDQC1z8dUFzX5zfGTiz8xsa+du5psdkTCYGEZuQIWuR46+WAXWu4
         JnMwwXSN0QeV08EcjEaPGBph9l0nIzKKuDkuEod1Dl/FwKTvXnmGvzvLn0S4gPgZHcn4
         OXIld0rLjbiDX52mFRQQMyTi7tw0zfOfmuCAL0E+zoSAC7SxLQWH6POljFrxeSPiSPfQ
         MYhg==
X-Gm-Message-State: AC+VfDzlUD2IL22wrp7750c6T2gTpCkD+Cfqsu0AiWnub84DHbRsQ0mO
        yKudxLgV7fGpW20/miZtQlQ=
X-Google-Smtp-Source: ACHHUZ4hBRb3bPcceqByuzxrj6+pNHkrkl7fAwOi7HYAuxTcEvizUQqQJEFFIpMnqOuyddBcvibo+g==
X-Received: by 2002:ac2:5d63:0:b0:4eb:d20:b2ad with SMTP id h3-20020ac25d63000000b004eb0d20b2admr733709lft.63.1683116204138;
        Wed, 03 May 2023 05:16:44 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id r8-20020a19ac48000000b004eff132a90csm4651069lfc.74.2023.05.03.05.16.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 May 2023 05:16:43 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 2/2] ARM: dts: BCM5301X: Relicense Florian's code to the GPL 2.0+ / MIT
Date:   Wed,  3 May 2023 14:16:11 +0200
Message-Id: <20230503121611.1629-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230503121611.1629-1-zajec5@gmail.com>
References: <20230503121611.1629-1-zajec5@gmail.com>
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

All BCM5301X device DTS files use dual licensing. Try the same for SoC.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/bcm-ns.dtsi   | 36 ++++++++++++++++++++++++++++++
 arch/arm/boot/dts/bcm5301x.dtsi | 39 ---------------------------------
 2 files changed, 36 insertions(+), 39 deletions(-)

diff --git a/arch/arm/boot/dts/bcm-ns.dtsi b/arch/arm/boot/dts/bcm-ns.dtsi
index 21d672aba75a..cc977bbc142b 100644
--- a/arch/arm/boot/dts/bcm-ns.dtsi
+++ b/arch/arm/boot/dts/bcm-ns.dtsi
@@ -19,6 +19,8 @@ chipcommon: chipcommon@0 {
 
 			gpio-controller;
 			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
 		};
 
 		pcie0: pcie@12000 {
@@ -109,6 +111,22 @@ xhci_port1: port@1 {
 				};
 			};
 		};
+
+		gmac0: ethernet@24000 {
+			reg = <0x24000 0x800>;
+		};
+
+		gmac1: ethernet@25000 {
+			reg = <0x25000 0x800>;
+		};
+
+		gmac2: ethernet@26000 {
+			reg = <0x26000 0x800>;
+		};
+
+		gmac3: ethernet@27000 {
+			reg = <0x27000 0x800>;
+		};
 	};
 
 	mdio: mdio@18003000 {
@@ -118,6 +136,24 @@ mdio: mdio@18003000 {
 		#address-cells = <1>;
 	};
 
+	rng: rng@18004000 {
+		compatible = "brcm,bcm5301x-rng";
+		reg = <0x18004000 0x14>;
+	};
+
+	srab: ethernet-switch@18007000 {
+		compatible = "brcm,bcm53011-srab", "brcm,bcm5301x-srab";
+		reg = <0x18007000 0x1000>;
+
+		status = "disabled";
+
+		/* ports are defined in board DTS */
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+	};
+
 	dmu-bus@1800c000 {
 		compatible = "simple-bus";
 		ranges = <0 0x1800c000 0x1000>;
diff --git a/arch/arm/boot/dts/bcm5301x.dtsi b/arch/arm/boot/dts/bcm5301x.dtsi
index 2aa3a9f09641..2890fa3c5e67 100644
--- a/arch/arm/boot/dts/bcm5301x.dtsi
+++ b/arch/arm/boot/dts/bcm5301x.dtsi
@@ -218,30 +218,9 @@ axi@18000000 {
 			<0x00028000 6 &gic GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>,
 			<0x00028000 7 &gic GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
 
-		chipcommon@0 {
-			interrupt-controller;
-			#interrupt-cells = <2>;
-		};
-
 		pcie2: pcie@14000 {
 			reg = <0x00014000 0x1000>;
 		};
-
-		gmac0: ethernet@24000 {
-			reg = <0x24000 0x800>;
-		};
-
-		gmac1: ethernet@25000 {
-			reg = <0x25000 0x800>;
-		};
-
-		gmac2: ethernet@26000 {
-			reg = <0x26000 0x800>;
-		};
-
-		gmac3: ethernet@27000 {
-			reg = <0x27000 0x800>;
-		};
 	};
 
 	pwm: pwm@18002000 {
@@ -322,24 +301,6 @@ genpll: clock-controller@140 {
 		};
 	};
 
-	srab: ethernet-switch@18007000 {
-		compatible = "brcm,bcm53011-srab", "brcm,bcm5301x-srab";
-		reg = <0x18007000 0x1000>;
-
-		status = "disabled";
-
-		/* ports are defined in board DTS */
-		ports {
-			#address-cells = <1>;
-			#size-cells = <0>;
-		};
-	};
-
-	rng: rng@18004000 {
-		compatible = "brcm,bcm5301x-rng";
-		reg = <0x18004000 0x14>;
-	};
-
 	nand_controller: nand-controller@18028000 {
 		compatible = "brcm,nand-iproc", "brcm,brcmnand-v6.1", "brcm,brcmnand";
 		reg = <0x18028000 0x600>, <0x1811a408 0x600>, <0x18028f00 0x20>;
-- 
2.35.3

