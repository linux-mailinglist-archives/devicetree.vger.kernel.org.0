Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 495D26911F7
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 21:12:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229672AbjBIUMC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 15:12:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229871AbjBIUMA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 15:12:00 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11F666E84
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 12:12:00 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id c4-20020a1c3504000000b003d9e2f72093so4764508wma.1
        for <devicetree@vger.kernel.org>; Thu, 09 Feb 2023 12:11:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oXtmGcOp83SYDJQFPEFrPBZdWkFOFQJpPG0st0A7D/g=;
        b=ntXgAa39Gzuh2fE/jrOlaunLQdOf0/qZ/Xt9l0nzIw4NTKpTZRQZJotJ2KrN52m/GH
         Xlf5rQ0dgND6BZ6nOLjXL3Qm6GhGrUEPYsOFkuxqtZb+WYG/cV/cHPVapZJpd5veD6IV
         H3LIjyr+tsMPvIQqmhs0Pz3dHKglrBc3Ggad0N5uiWADWruQKq0xbd+WK3b+hsAgX0td
         cmadE+8jZtnUewqLuAGPayiyGaT5LCul79PLn8uhFASfBAcy9uYkYeokP5Ik36k/Lt9n
         BCETVflXNlgXcqmTWX7cSabLrQ2aRx97W9tHFFwj/2MS/4FVHp+z+cNLflcsc6TZpchT
         0p5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oXtmGcOp83SYDJQFPEFrPBZdWkFOFQJpPG0st0A7D/g=;
        b=PG9YRVHXSKBt6iNYZhOak1R+UXxuWkLwc/qZkG5+Cu7G3zEXsTixpktN1yj/PTq23X
         mAaaY0Lmz9zeNi135VDxShjncGj8h8F2anZGy3Er2gN91KR44b+OnNEJb8asRsiAND7w
         1/CpPZqce/Ax3i7CbES+WtgUc4OlcsCfZnSsT5sYlVwCWndUGM60l2Z4pK1vFE+TgS3t
         1WyAk85cjaNkVhm5tFK7HvOpP3XrnjCth1iBq6ZTXg+hk+kVBTlWJp5y3/gP7ajB+bTk
         pLvcyPqx/gBi0o4vXeaGTCrFYvHmNa3quQ4Vdr93H1aCEzlHHcJvpvcp61oN5vnri9Yw
         tnpQ==
X-Gm-Message-State: AO0yUKUh0U7/rsVE2/W1V6xuzz2Bph6BoUc6S55wEJVfEcFaJUE3AcqW
        vrhEJiheZ+Mt1b6cBLTUrzc=
X-Google-Smtp-Source: AK7set8DQyrsC5CwB8Cxf+SlkhLmoHu6xkM2xqH4c4iBUueDVQ2nSh4a6Jc+qsWE7I+k8WJpngTh8w==
X-Received: by 2002:a05:600c:16c6:b0:3db:fc3:6de4 with SMTP id l6-20020a05600c16c600b003db0fc36de4mr10853872wmn.35.1675973518508;
        Thu, 09 Feb 2023 12:11:58 -0800 (PST)
Received: from ?IPV6:2a01:c23:c4df:e300:c146:1250:ead2:43ad? (dynamic-2a01-0c23-c4df-e300-c146-1250-ead2-43ad.c23.pool.telefonica.de. [2a01:c23:c4df:e300:c146:1250:ead2:43ad])
        by smtp.googlemail.com with ESMTPSA id c12-20020a05600c0a4c00b003dc34edacf8sm6564899wmq.31.2023.02.09.12.11.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Feb 2023 12:11:57 -0800 (PST)
Message-ID: <27d89baa-b8fa-baca-541b-ef17a97cde3c@gmail.com>
Date:   Thu, 9 Feb 2023 21:11:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Subject: [PATCH 2/3] arm64: dts: meson-g12-common: Make mmc host controller
 interrupts level-sensitive
Content-Language: en-US
From:   Heiner Kallweit <hkallweit1@gmail.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        Nan Li <nan.li@amlogic.com>,
        Vyacheslav Bocharov <adeep@lexina.in>
References: <8a99341b-8546-8f90-c9a5-087d927cac48@gmail.com>
In-Reply-To: <8a99341b-8546-8f90-c9a5-087d927cac48@gmail.com>
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

Fixes: 4759fd87b928 ("arm64: dts: meson: g12a: add mmc nodes")
Tested-by: FUKAUMI Naoki <naoki@radxa.com>
Tested-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Tested-by: Jerome Brunet <jbrunet@baylibre.com>
Cc: stable@vger.kernel.org
Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index 585dd70f6..767412d3a 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -2324,7 +2324,7 @@ uart_A: serial@24000 {
 		sd_emmc_a: sd@ffe03000 {
 			compatible = "amlogic,meson-axg-mmc";
 			reg = <0x0 0xffe03000 0x0 0x800>;
-			interrupts = <GIC_SPI 189 IRQ_TYPE_EDGE_RISING>;
+			interrupts = <GIC_SPI 189 IRQ_TYPE_LEVEL_HIGH>;
 			status = "disabled";
 			clocks = <&clkc CLKID_SD_EMMC_A>,
 				 <&clkc CLKID_SD_EMMC_A_CLK0>,
@@ -2336,7 +2336,7 @@ sd_emmc_a: sd@ffe03000 {
 		sd_emmc_b: sd@ffe05000 {
 			compatible = "amlogic,meson-axg-mmc";
 			reg = <0x0 0xffe05000 0x0 0x800>;
-			interrupts = <GIC_SPI 190 IRQ_TYPE_EDGE_RISING>;
+			interrupts = <GIC_SPI 190 IRQ_TYPE_LEVEL_HIGH>;
 			status = "disabled";
 			clocks = <&clkc CLKID_SD_EMMC_B>,
 				 <&clkc CLKID_SD_EMMC_B_CLK0>,
@@ -2348,7 +2348,7 @@ sd_emmc_b: sd@ffe05000 {
 		sd_emmc_c: mmc@ffe07000 {
 			compatible = "amlogic,meson-axg-mmc";
 			reg = <0x0 0xffe07000 0x0 0x800>;
-			interrupts = <GIC_SPI 191 IRQ_TYPE_EDGE_RISING>;
+			interrupts = <GIC_SPI 191 IRQ_TYPE_LEVEL_HIGH>;
 			status = "disabled";
 			clocks = <&clkc CLKID_SD_EMMC_C>,
 				 <&clkc CLKID_SD_EMMC_C_CLK0>,
-- 
2.39.1


