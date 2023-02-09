Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F3E26911F8
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 21:12:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229473AbjBIUME (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 15:12:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229658AbjBIUMC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 15:12:02 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67076113D5
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 12:12:01 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id bg5-20020a05600c3c8500b003e00c739ce4so2459632wmb.5
        for <devicetree@vger.kernel.org>; Thu, 09 Feb 2023 12:12:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HX5+bsUoRcit21y2lZwuj3iAM0iGpU6sJ2wwTNOKg8k=;
        b=h8HQDOVhqCkZnNSCHwOdR5X+BsckmXM1D8mWvh5+dzp8Owq3bQgMHun4k1EHSs4IUg
         V9nUBri8JIYHOg8wf1Ab9iGA3hv8zDPrIezYs2OHYVS5m597I22IOcl1N7/391nBsufC
         L00na/rE8PutELxD/CkX3wgCfUM2cvCFahdjgCBIu30kTlfQTtchFV2rfiovtbIH+p8x
         oilT3wjfB4EN1AOX9V0zo2wcIm5Ajfry8H3GsWV4Y3ruAI47VQv4BYM1FoLN/EVbvQMe
         kZ9cW+znnz1OKJfa9HQDx6w8wCm32iMn4hdTFIRYui0LQqRpLPvQacJbDMZr4kvpxDx0
         3wyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HX5+bsUoRcit21y2lZwuj3iAM0iGpU6sJ2wwTNOKg8k=;
        b=hPw0l3RszLfWoDMCjJMQRPcFF0X5CgIObe1WvDdTDjjvTlg8hsrldCZF4FByUvlj9O
         F/JmfD/az6YtuJpdOb+UDEhnTJHeMp/oM1hdxU9NoMGLJSSjHHB/9Io11woxOjIrR9yg
         r+DuZgVsZPzfkvfrA4vFHKpkdkL3OPyNxw3Q+2bN6yIGakq7yyBMQI7zFNjh/UjT/Lyx
         ZKNMM+M85RTCtDaq/o1u5YDQS03qwWVjrHLxmflSkyIJwSuLotdhUxDLogwE+CD7a8q3
         xMZ7/7vmrIr9oOL6w3yzOFJVsDUi4JgJnMSl539kG67MqLOWy8Zc/rQ3elj9gf9IIcVD
         /GKQ==
X-Gm-Message-State: AO0yUKVe59TpWycSvcSyErchla4WcOCvm4O79s2qI9UYbPi+BuVdfgAn
        HbDxNbIY060W7d3oaRq/6gU=
X-Google-Smtp-Source: AK7set9Qf/KKD6IPbprjTnoDTiu7VisN5LhPrRzFk/J5OaSlofn7lmmuY+VABs2zUXD77fd2S/u0NA==
X-Received: by 2002:a05:600c:3c9c:b0:3dc:d5b:5f6a with SMTP id bg28-20020a05600c3c9c00b003dc0d5b5f6amr11254251wmb.30.1675973519896;
        Thu, 09 Feb 2023 12:11:59 -0800 (PST)
Received: from ?IPV6:2a01:c23:c4df:e300:c146:1250:ead2:43ad? (dynamic-2a01-0c23-c4df-e300-c146-1250-ead2-43ad.c23.pool.telefonica.de. [2a01:c23:c4df:e300:c146:1250:ead2:43ad])
        by smtp.googlemail.com with ESMTPSA id s12-20020adfdb0c000000b002c3ec1fbc0bsm1945149wri.94.2023.02.09.12.11.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Feb 2023 12:11:59 -0800 (PST)
Message-ID: <76e042e0-a610-5ed5-209f-c4d7f879df44@gmail.com>
Date:   Thu, 9 Feb 2023 21:11:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Subject: [PATCH 3/3] arm64: dts: meson-gx: Make mmc host controller interrupts
 level-sensitive
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

Fixes: ef8d2ffedf18 ("ARM64: dts: meson-gxbb: add MMC support")
Cc: stable@vger.kernel.org
Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

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


