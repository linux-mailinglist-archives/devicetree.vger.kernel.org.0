Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8693967AAA8
	for <lists+devicetree@lfdr.de>; Wed, 25 Jan 2023 08:00:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233619AbjAYHAa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Jan 2023 02:00:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230160AbjAYHAW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Jan 2023 02:00:22 -0500
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D213474EE
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 23:00:20 -0800 (PST)
Received: by mail-ej1-x634.google.com with SMTP id rl14so41688284ejb.2
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 23:00:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E6Cwt2zoj1KPqgoUGLAvd8YCYHAqAHUKRAPYtupMvBk=;
        b=WK/PtMneMUj8tYaCs0hjU3/vtSCK+BRocrMLX7QSpyl6mKPWxYXUXSZIfPnqvNw2A8
         O4Nn6BY3KcE3BU+6CnHNxnrorX2kNfuWu7HS3LYXQsDtCOhSuwQ/52IbkyezM/rgSjfC
         eaLx+1Os/7FjZNOxyeZUAAM+bl1A8SvKyO0mWZjCf9vRSBEs3UsaL6d2I0uy62W5dllD
         yIaDUoLbfzQ0q3Zd9KJAfSrJkRW3cs5p87pDgKpnkQ45dHD+PMsKMKNz3+yza0K2D5jP
         Fft70CAtkZblvHwKgXy0DsMBxu2Z3o+FXLHXDT/LOuZaIY8QgtEF898WfxhpwghblkwR
         BtCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=E6Cwt2zoj1KPqgoUGLAvd8YCYHAqAHUKRAPYtupMvBk=;
        b=oWa+dp88HADkJBTGY/jad7XLoOD167LlHpk8f4uvA1I0MYPnJ1fFzRuy00Ax+E2bjP
         R4cs+oJyuI9U4nYi2Gd+OomlcY5q97eUhQkrs2KgzDeipfEOX13iP4CC9TYYKcAZMCwk
         55fykQFl+dKYCWWQF10eUQh031+DCVH3g55Frk322WAtcElgRPU3unc6KtZ9mT9MG5xG
         na/EQSUN3GGrNJUiQHrUG4cgO6JXmMGaEzj/UpERhbTiZ3O2nNW03lO9pd5LfJJHi/9M
         cZde4IrO0ObZS9Qq0Tg6tT3giwXJXfHKrFKxvi9BF40EW3bOAG3wtHW3agS+Yuw5Y2fh
         neCQ==
X-Gm-Message-State: AFqh2kq2z1uqRfo/kqdbsvg24f5+KTpGru5nPytOs127HthgooyIhOXc
        HdDGrPV1A1Qfn5I7DNiWlNI=
X-Google-Smtp-Source: AMrXdXu7XzWMtWj4fU35KOZJW2CN7axDgDTgii+/KdguY7A5KbrvJjkcpcmF+xi/PHwxXYz1riyAMQ==
X-Received: by 2002:a17:906:5fcb:b0:870:df7:300b with SMTP id k11-20020a1709065fcb00b008700df7300bmr32538975ejv.52.1674630018663;
        Tue, 24 Jan 2023 23:00:18 -0800 (PST)
Received: from ?IPV6:2a01:c22:720f:5a00:9008:755f:20dd:1de8? (dynamic-2a01-0c22-720f-5a00-9008-755f-20dd-1de8.c22.pool.telefonica.de. [2a01:c22:720f:5a00:9008:755f:20dd:1de8])
        by smtp.googlemail.com with ESMTPSA id q25-20020a17090676d900b00872a726783dsm1896190ejn.217.2023.01.24.23.00.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jan 2023 23:00:18 -0800 (PST)
Message-ID: <d9b72573-a59f-989f-a752-1aa8517cf8dc@gmail.com>
Date:   Wed, 25 Jan 2023 08:00:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
From:   Heiner Kallweit <hkallweit1@gmail.com>
Subject: [PATCH v2] arm64: dts: amlogic: Fix SDIO interrupt and make it
 level-sensitive
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

SDIO specification defines that the interrupt is level-sensitive.
Fix the interrupt trigger type for emmc_a accordingly.
See comment at beginning of the file wrt which is the SDIO port.
mmc2 = &sd_emmc_a; /* SDIO */

The usage of edge-triggered interrupts lead to lost interrupts under load,
see [0]. This was confirmed to be fixed by using level-triggered
interrupts.

Note:
SDIO interrupt support was added in Linux just recently, however other
users of this dts may be affected too.

[0] https://www.spinics.net/lists/linux-mmc/msg73991.html

Fixes: 1499218c80c9 ("arm64: dts: move common G12A & G12B modes to meson-g12-common.dtsi")
Reported-by: Peter Suti <peter.suti@streamunlimited.com>
Tested-by: Peter Suti <peter.suti@streamunlimited.com>
Cc: stable@vger.kernel.org
Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
---
v2:
- rebase considering recent node name change sd -> mmc for sd_emmc_a
---
 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 2 +-
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi         | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index 1a931d5c2..c09eb9f6f 100644
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
diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
index a79a35e84..ae1a5a568 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
@@ -603,7 +603,7 @@ apb: apb@d0000000 {
 			sd_emmc_a: mmc@70000 {
 				compatible = "amlogic,meson-gx-mmc", "amlogic,meson-gxbb-mmc";
 				reg = <0x0 0x70000 0x0 0x800>;
-				interrupts = <GIC_SPI 216 IRQ_TYPE_EDGE_RISING>;
+				interrupts = <GIC_SPI 216 IRQ_TYPE_LEVEL_HIGH>;
 				status = "disabled";
 			};
 
-- 
2.39.1

