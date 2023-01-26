Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 81E9167CD3A
	for <lists+devicetree@lfdr.de>; Thu, 26 Jan 2023 15:03:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230081AbjAZODo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Jan 2023 09:03:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229996AbjAZODe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Jan 2023 09:03:34 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 066F9527F
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 06:03:23 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id d14so1860525wrr.9
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 06:03:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:subject:content-language:cc:to:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b1R+KSXXSI5OCkGmcSGPJ14BwDUs5OA3N1/+E4dOGM8=;
        b=ZAwFyqhgyWXc3bj80mlOg/P43NgKT7ALTQrsS7SDU4gtfkN4zLgSrcDcfsXSXFXlT4
         3uv4qVGo1SGXyLJNerfDIjajTY2ew5asWoHkHHOogFCC7GBwx11GPsDq6uvV0TV5r3qb
         MjCtxEXZnpqikMtl7WDrJtjmeVwBjErEWnwOgultJAOC90xLRYkA97MJOj8lCAhkFd3B
         GZfz/3cLIXYlVvr1fSOG5RzcMqFoCyqG+D/MHnrDBk7IfSwpZIOjqiACPAaaK/TSdP7x
         eIfPoxiO2XieSjHWM+D9nMve3CRy2BhNlyLJvINiErl8OYohCvONi0U/6wBkxDHMhBia
         jN6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:subject:content-language:cc:to:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=b1R+KSXXSI5OCkGmcSGPJ14BwDUs5OA3N1/+E4dOGM8=;
        b=2uxJuUbmtg59z9Lsgbj20LGXbbKnnoZPROLYuUTLkE9oRY2vjlSyIebT7alBDndQAv
         +MPn8wVP/tI2AWG/BYFvoT4rT84b+kX3EFYBiOvUVsaLqabp7Zbe9NLBE2/AOgp/4fFG
         DDy4dMpUuIRu4Wg2ujJ8Dq2wxqacE/kbbvGDvhvfwoihJ0JsVTD6Dpi6yCePpVH1QgLv
         /Hwd+OrytwANv+7++wEo80/ncuh6ltgdNpEPBLWGcBmaSNZVjWGyHP99UWnJcvaB/Pvc
         vJ554Yuayab4a2nTSMGINFN7UlafFjWb6P7akHVJSMwBy/je2ARVNBFaxIMauvPYD2i5
         enRw==
X-Gm-Message-State: AFqh2kpGpYOkMd9xxBYz7jiK/DdEURgbxeqa5BCi6rzYeSO3/5Olr438
        791KMXxjkyfnLNFgrRMd9Gk=
X-Google-Smtp-Source: AMrXdXvdPCRqULeRDOEBpBU5avzxfRixDB/PhsGp2fDiMhS5+qqS1g2keVt7Azf1eetlAbpDKMot9A==
X-Received: by 2002:adf:f0c7:0:b0:2bd:e18d:c9e5 with SMTP id x7-20020adff0c7000000b002bde18dc9e5mr32108547wro.40.1674741799850;
        Thu, 26 Jan 2023 06:03:19 -0800 (PST)
Received: from ?IPV6:2a01:c23:c0e4:9a00:bd2c:be74:a635:44ca? (dynamic-2a01-0c23-c0e4-9a00-bd2c-be74-a635-44ca.c23.pool.telefonica.de. [2a01:c23:c0e4:9a00:bd2c:be74:a635:44ca])
        by smtp.googlemail.com with ESMTPSA id a5-20020adfeec5000000b002bfae6b17d2sm1402122wrp.55.2023.01.26.06.03.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jan 2023 06:03:19 -0800 (PST)
Message-ID: <d9721029-780e-09f1-0207-72d3897032a4@gmail.com>
Date:   Thu, 26 Jan 2023 15:03:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
From:   Heiner Kallweit <hkallweit1@gmail.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
Content-Language: en-US
Subject: [PATCH v2] arm64: dts: amlogic: Make mmc host controller interrupts
 level-sensitive
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The usage of edge-triggered interrupts lead to lost interrupts under load,
see [0]. This was confirmed to be fixed by using level-triggered
interrupts.
The report was about SDIO. However, as the host controller is the same
for SD and MMC, apply the change to all mmc controller instances.

[0] https://www.spinics.net/lists/linux-mmc/msg73991.html

Fixes: 1499218c80c9 ("arm64: dts: move common G12A & G12B modes to meson-g12-common.dtsi")
Reported-by: Peter Suti <peter.suti@streamunlimited.com>
Tested-by: Peter Suti <peter.suti@streamunlimited.com>
Cc: stable@vger.kernel.org
Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
---
v2:
- apply the fix also to meson-axg
- apply the fix to all host controller instances
---
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi        | 4 ++--
 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 6 +++---
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi         | 6 +++---
 3 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
index ed895fb32..a6a3095de 100644
--- a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
@@ -1886,7 +1886,7 @@ apb: bus@ffe00000 {
 			sd_emmc_b: mmc@5000 {
 				compatible = "amlogic,meson-axg-mmc";
 				reg = <0x0 0x5000 0x0 0x800>;
-				interrupts = <GIC_SPI 217 IRQ_TYPE_EDGE_RISING>;
+				interrupts = <GIC_SPI 217 IRQ_TYPE_LEVEL_HIGH>;
 				status = "disabled";
 				clocks = <&clkc CLKID_SD_EMMC_B>,
 					<&clkc CLKID_SD_EMMC_B_CLK0>,
@@ -1898,7 +1898,7 @@ sd_emmc_b: mmc@5000 {
 			sd_emmc_c: mmc@7000 {
 				compatible = "amlogic,meson-axg-mmc";
 				reg = <0x0 0x7000 0x0 0x800>;
-				interrupts = <GIC_SPI 218 IRQ_TYPE_EDGE_RISING>;
+				interrupts = <GIC_SPI 218 IRQ_TYPE_LEVEL_HIGH>;
 				status = "disabled";
 				clocks = <&clkc CLKID_SD_EMMC_C>,
 					<&clkc CLKID_SD_EMMC_C_CLK0>,
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index 6d7272b2c..13fdaba21 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -2324,7 +2324,7 @@ uart_A: serial@24000 {
 		sd_emmc_a: mmc@ffe03000 {
 			compatible = "amlogic,meson-axg-mmc";
 			reg = <0x0 0xffe03000 0x0 0x800>;
-			interrupts = <GIC_SPI 189 IRQ_TYPE_EDGE_RISING>;
+			interrupts = <GIC_SPI 189 IRQ_TYPE_LEVEL_HIGH>;
 			status = "disabled";
 			clocks = <&clkc CLKID_SD_EMMC_A>,
 				 <&clkc CLKID_SD_EMMC_A_CLK0>,
@@ -2336,7 +2336,7 @@ sd_emmc_a: mmc@ffe03000 {
 		sd_emmc_b: mmc@ffe05000 {
 			compatible = "amlogic,meson-axg-mmc";
 			reg = <0x0 0xffe05000 0x0 0x800>;
-			interrupts = <GIC_SPI 190 IRQ_TYPE_EDGE_RISING>;
+			interrupts = <GIC_SPI 190 IRQ_TYPE_LEVEL_HIGH>;
 			status = "disabled";
 			clocks = <&clkc CLKID_SD_EMMC_B>,
 				 <&clkc CLKID_SD_EMMC_B_CLK0>,
@@ -2348,7 +2348,7 @@ sd_emmc_b: mmc@ffe05000 {
 		sd_emmc_c: mmc@ffe07000 {
 			compatible = "amlogic,meson-axg-mmc";
 			reg = <0x0 0xffe07000 0x0 0x800>;
-			interrupts = <GIC_SPI 191 IRQ_TYPE_EDGE_RISING>;
+			interrupts = <GIC_SPI 191 IRQ_TYPE_LEVEL_HIGH>;
 			status = "disabled";
 			clocks = <&clkc CLKID_SD_EMMC_C>,
 				 <&clkc CLKID_SD_EMMC_C_CLK0>,
diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
index e3c12e0be..5eed15035 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
@@ -603,21 +603,21 @@ apb: apb@d0000000 {
 			sd_emmc_a: mmc@70000 {
 				compatible = "amlogic,meson-gx-mmc", "amlogic,meson-gxbb-mmc";
 				reg = <0x0 0x70000 0x0 0x800>;
-				interrupts = <GIC_SPI 216 IRQ_TYPE_EDGE_RISING>;
+				interrupts = <GIC_SPI 216 IRQ_TYPE_LEVEL_HIGH>;
 				status = "disabled";
 			};
 
 			sd_emmc_b: mmc@72000 {
 				compatible = "amlogic,meson-gx-mmc", "amlogic,meson-gxbb-mmc";
 				reg = <0x0 0x72000 0x0 0x800>;
-				interrupts = <GIC_SPI 217 IRQ_TYPE_EDGE_RISING>;
+				interrupts = <GIC_SPI 217 IRQ_TYPE_LEVEL_HIGH>;
 				status = "disabled";
 			};
 
 			sd_emmc_c: mmc@74000 {
 				compatible = "amlogic,meson-gx-mmc", "amlogic,meson-gxbb-mmc";
 				reg = <0x0 0x74000 0x0 0x800>;
-				interrupts = <GIC_SPI 218 IRQ_TYPE_EDGE_RISING>;
+				interrupts = <GIC_SPI 218 IRQ_TYPE_LEVEL_HIGH>;
 				status = "disabled";
 			};
 		};
-- 
2.39.1

