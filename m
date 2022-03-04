Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A97D04CD438
	for <lists+devicetree@lfdr.de>; Fri,  4 Mar 2022 13:25:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239718AbiCDM0D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Mar 2022 07:26:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239705AbiCDM0A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Mar 2022 07:26:00 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 510FF1B3711
        for <devicetree@vger.kernel.org>; Fri,  4 Mar 2022 04:25:11 -0800 (PST)
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com [209.85.218.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 54AB23F606
        for <devicetree@vger.kernel.org>; Fri,  4 Mar 2022 12:25:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646396707;
        bh=8rZ/otR1F7WKrTMiyMk5wOYz0m0MXO9OQ24s6TpVerE=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=akMVa5PlzkvNipqBrwN6ePaHscyK3e/CKSke5SD2bmPInRAkghrK2enKkfybAJTHP
         1Nsf0Or8EBuBFsPgJZqkQUfSFFtUq5vEI1KMvx9J6LFe95OO8AnSn5hD3IQ+7xnbDN
         bsxr8cDZoTAtVgQxXDdKg/84p4sI+8SVGlFfcOGNJH1X40yybd91oeIOIjZjt8Gl56
         NsTkDaESRdlCCjNjXCFekHjpE2sOee1uVNE4I8MJN4My3dKKKsudvxUM/6JGO+s/kh
         HHUN9q++1tybakKXuCLZx0Q5ptyJXBek8gg6GbQLPjIZ/No/JJp9+EmjWRcuZwUHRO
         1BtPVUFwo0hZA==
Received: by mail-ej1-f71.google.com with SMTP id nb1-20020a1709071c8100b006d03c250b6fso4322480ejc.11
        for <devicetree@vger.kernel.org>; Fri, 04 Mar 2022 04:25:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8rZ/otR1F7WKrTMiyMk5wOYz0m0MXO9OQ24s6TpVerE=;
        b=MPFhDU36QMgmYZO2kTq878BiZ0sfRxO3XaXo1Tm/ThN19t3UOdsR/fuf/aVnQU3hk9
         VAEIr+dVaq6HN11v6H9GiVmv5+VRxKTqs2Zs5WZvEVRoSgUrR/QE2SnWcTaHn0452Kna
         cfp7bLtC09PEW7MA0ZINuER5gGNQaRMMVidPFYnWvXnFTkYm7z6lsuu8/jnLHR9KnxIk
         wM4HRegHEfPJNb2uGzRQ5a6440SS2NLdEi6+HEXG/H40Q0ak46R/V0eyFq3mzJDLzl1p
         EUGfzC0xA0bySRgzoGOLO+cAky62cJEHXzFm2376DzSRan+UlMwNXD/L7Pao8ZMuPRcD
         O0vQ==
X-Gm-Message-State: AOAM532l3Ia6xFfmu3hoixgffBafy8amS8UsNBZTMgyRLD3BJyRVzq5x
        IFskl+9wqsb8pRB5la9ckhwv5kkHVHtZQIFbQndXAV3o6Io+dvMlFcVOvLE5b8/XoMX8BQmEf4H
        a7GVDNhjvpzeGHz9J1OrYJSpTsfNwvVBLD6zsG1A=
X-Received: by 2002:a17:907:168a:b0:6da:9167:47dc with SMTP id hc10-20020a170907168a00b006da916747dcmr6181646ejc.126.1646396703283;
        Fri, 04 Mar 2022 04:25:03 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxYnlrU15FhMF0oUQPKf5WnMr8bWPH6aPXJDLlecWPFgjllSaff6YzTPQ5Q1kJHCpa0MndoPQ==
X-Received: by 2002:a17:907:168a:b0:6da:9167:47dc with SMTP id hc10-20020a170907168a00b006da916747dcmr6181627ejc.126.1646396703104;
        Fri, 04 Mar 2022 04:25:03 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id r23-20020aa7da17000000b00415a1431488sm2047368eds.4.2022.03.04.04.25.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Mar 2022 04:25:02 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
Subject: [PATCH v2 2/4] ARM: dts: exynos: add a specific compatible to MCT
Date:   Fri,  4 Mar 2022 13:24:22 +0100
Message-Id: <20220304122424.307885-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220304122424.307885-1-krzysztof.kozlowski@canonical.com>
References: <20220304122424.307885-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

One compatible is used for the Multi-Core Timer on most of the Samsung
Exynos SoCs, which is correct but not specific enough.  These MCT blocks
have different number of interrupts, so add a second specific
compatible to Exynos3250 and all Exynos5 SoCs.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>
---
 arch/arm/boot/dts/exynos3250.dtsi | 3 ++-
 arch/arm/boot/dts/exynos5250.dtsi | 3 ++-
 arch/arm/boot/dts/exynos5260.dtsi | 3 ++-
 arch/arm/boot/dts/exynos54xx.dtsi | 3 ++-
 4 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/exynos3250.dtsi b/arch/arm/boot/dts/exynos3250.dtsi
index ae644315855d..41bb421e67c2 100644
--- a/arch/arm/boot/dts/exynos3250.dtsi
+++ b/arch/arm/boot/dts/exynos3250.dtsi
@@ -269,7 +269,8 @@ gic: interrupt-controller@10481000 {
 		};
 
 		timer@10050000 {
-			compatible = "samsung,exynos4210-mct";
+			compatible = "samsung,exynos3250-mct",
+				     "samsung,exynos4210-mct";
 			reg = <0x10050000 0x800>;
 			interrupts = <GIC_SPI 218 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 219 IRQ_TYPE_LEVEL_HIGH>,
diff --git a/arch/arm/boot/dts/exynos5250.dtsi b/arch/arm/boot/dts/exynos5250.dtsi
index 5baaa7eb71a4..63d1dcf2c55c 100644
--- a/arch/arm/boot/dts/exynos5250.dtsi
+++ b/arch/arm/boot/dts/exynos5250.dtsi
@@ -245,7 +245,8 @@ clock_audss: audss-clock-controller@3810000 {
 		};
 
 		timer@101c0000 {
-			compatible = "samsung,exynos4210-mct";
+			compatible = "samsung,exynos5250-mct",
+				     "samsung,exynos4210-mct";
 			reg = <0x101C0000 0x800>;
 			clocks = <&clock CLK_FIN_PLL>, <&clock CLK_MCT>;
 			clock-names = "fin_pll", "mct";
diff --git a/arch/arm/boot/dts/exynos5260.dtsi b/arch/arm/boot/dts/exynos5260.dtsi
index 56271e7c4587..ff1ee409eff3 100644
--- a/arch/arm/boot/dts/exynos5260.dtsi
+++ b/arch/arm/boot/dts/exynos5260.dtsi
@@ -333,7 +333,8 @@ chipid: chipid@10000000 {
 		};
 
 		mct: timer@100b0000 {
-			compatible = "samsung,exynos4210-mct";
+			compatible = "samsung,exynos5260-mct",
+				     "samsung,exynos4210-mct";
 			reg = <0x100B0000 0x1000>;
 			clocks = <&fin_pll>, <&clock_peri PERI_CLK_MCT>;
 			clock-names = "fin_pll", "mct";
diff --git a/arch/arm/boot/dts/exynos54xx.dtsi b/arch/arm/boot/dts/exynos54xx.dtsi
index 2ddb7a5f12b3..3ec43761d8b9 100644
--- a/arch/arm/boot/dts/exynos54xx.dtsi
+++ b/arch/arm/boot/dts/exynos54xx.dtsi
@@ -74,7 +74,8 @@ smp-sram@53000 {
 		};
 
 		mct: timer@101c0000 {
-			compatible = "samsung,exynos4210-mct";
+			compatible = "samsung,exynos5420-mct",
+				     "samsung,exynos4210-mct";
 			reg = <0x101c0000 0xb00>;
 			interrupts-extended = <&combiner 23 3>,
 					      <&combiner 23 4>,
-- 
2.32.0

