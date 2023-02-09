Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F172B6911F6
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 21:12:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229490AbjBIUMC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 15:12:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229672AbjBIUMA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 15:12:00 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 608CAC17F
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 12:11:58 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id bu23so2992550wrb.8
        for <devicetree@vger.kernel.org>; Thu, 09 Feb 2023 12:11:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LQ2vzzQ49PiAzAUtqfKXOTv4Bn/iALuLqhQt8Dw+H+8=;
        b=LZoGs1aCACHxNf0fvLH+dPpNH0pGqczz4f07b/RNjwNA3H39ye8MHmEMTeWZNVjgOU
         rbFMhh98IbdcaJKcQWuh3e9gt+hHUMhSwUUQnDp4ymu38Dp8nVb4M3GdZP5svdqzJ+aq
         OM43rSPKazSjmrmkhOsrXwq3kzl2PazfCdfxJHJDVw+1qx1HvRfTuLtNhDhsoOK48sHi
         K/mk0mxFzBJW8nROCn4i456zpIxQjywTbe/Kc+n0zjmUx43LApxtPZzG+ygAAz7odypP
         HNz7b0vOr/3MHNBdstOu/o2oZlT1EFsYgRzi+BUYpiy9eEE0993TXzAnlum8QUkNk3Uy
         rDXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LQ2vzzQ49PiAzAUtqfKXOTv4Bn/iALuLqhQt8Dw+H+8=;
        b=RkGsciH82PfF19HG8EZfRP5HyHBN91vvoDRsGbsz/nch+YsrrFvGaAFVw6Er2dXcrQ
         5+l85M9oQwke/EKq+d7IfZ8hpTIKxERejqvt/COP3Ij/jjMdG6/Tf5Hm5R9/rYxsy+4i
         eaqYTyluLiSSu4pFf74DRRklmV6aFyJsTnUqgLB68ijPHCRgu5PsdXioTr14yWKSuYym
         BKLfE0TtrPsOUa1qIzNd0sBDDwCLcI9tkWtAZo+d53ttj6ctfFvhPPWsWjknImLrTSuj
         RYgW3P4pS5VKyQ508ismxdxNmrQEL6f6A9LexSXRBX/n9vgYXpbZqY2QItCFe/60rLEL
         vK9g==
X-Gm-Message-State: AO0yUKUgOg7kQ0k4mcI1inFlEznT3Gf2w7gn7OLMnuPxGf6Ta2n2e+tK
        nj+KxZdBZn4DwOyNNKpnPpQ=
X-Google-Smtp-Source: AK7set9R36Q3v9v0+TmM/jJmc53c7enzP/EvABeSHUNoQGGzaw/LPuE2Pf/r1Pl9Q43x1s7i3q2ToQ==
X-Received: by 2002:adf:f042:0:b0:2bf:d72b:d039 with SMTP id t2-20020adff042000000b002bfd72bd039mr13526761wro.10.1675973516761;
        Thu, 09 Feb 2023 12:11:56 -0800 (PST)
Received: from ?IPV6:2a01:c23:c4df:e300:c146:1250:ead2:43ad? (dynamic-2a01-0c23-c4df-e300-c146-1250-ead2-43ad.c23.pool.telefonica.de. [2a01:c23:c4df:e300:c146:1250:ead2:43ad])
        by smtp.googlemail.com with ESMTPSA id m3-20020adfe0c3000000b002c4084d3472sm1923682wri.58.2023.02.09.12.11.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Feb 2023 12:11:56 -0800 (PST)
Message-ID: <c00655d3-02f8-6f5f-4239-ca2412420cad@gmail.com>
Date:   Thu, 9 Feb 2023 21:10:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Subject: [PATCH 1/3] arm64: dts: meson-axg: Make mmc host controller
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

Fixes: 221cf34bac54 ("ARM64: dts: meson-axg: enable the eMMC controller")
Reported-by: Peter Suti <peter.suti@streamunlimited.com>
Tested-by: Vyacheslav Bocharov <adeep@lexina.in>
Tested-by: Peter Suti <peter.suti@streamunlimited.com>
Cc: stable@vger.kernel.org
Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
---
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
index 1648e67af..417523dc4 100644
--- a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
@@ -1886,7 +1886,7 @@ apb: bus@ffe00000 {
 			sd_emmc_b: sd@5000 {
 				compatible = "amlogic,meson-axg-mmc";
 				reg = <0x0 0x5000 0x0 0x800>;
-				interrupts = <GIC_SPI 217 IRQ_TYPE_EDGE_RISING>;
+				interrupts = <GIC_SPI 217 IRQ_TYPE_LEVEL_HIGH>;
 				status = "disabled";
 				clocks = <&clkc CLKID_SD_EMMC_B>,
 					<&clkc CLKID_SD_EMMC_B_CLK0>,
@@ -1898,7 +1898,7 @@ sd_emmc_b: sd@5000 {
 			sd_emmc_c: mmc@7000 {
 				compatible = "amlogic,meson-axg-mmc";
 				reg = <0x0 0x7000 0x0 0x800>;
-				interrupts = <GIC_SPI 218 IRQ_TYPE_EDGE_RISING>;
+				interrupts = <GIC_SPI 218 IRQ_TYPE_LEVEL_HIGH>;
 				status = "disabled";
 				clocks = <&clkc CLKID_SD_EMMC_C>,
 					<&clkc CLKID_SD_EMMC_C_CLK0>,
-- 
2.39.1


