Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EFE7F4C4931
	for <lists+devicetree@lfdr.de>; Fri, 25 Feb 2022 16:38:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242174AbiBYPiK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Feb 2022 10:38:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242188AbiBYPiG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Feb 2022 10:38:06 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5EE170333
        for <devicetree@vger.kernel.org>; Fri, 25 Feb 2022 07:37:33 -0800 (PST)
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com [209.85.221.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 925D63FCAF
        for <devicetree@vger.kernel.org>; Fri, 25 Feb 2022 15:37:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645803452;
        bh=UZI/W2JahxU89dnjOf2ONuJlruSbsJiXCZ4vcoyOmqk=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=dN5CT18DP/v9X/4ROhLeOSq3o9D0hm+Y0n+MCoQJKjnmkpoTv5PqZh1atKlm3l0SR
         z+I06B7PUiXW4OT/inib0ywgCFPILQqoDXIJBhx9HSnUbd86CHdaz/ny1WBPX2MbVI
         nC9MLyWiNqjiizA74Wtbt6izNBk8Cko9kpRSlaV24CL6RioG6sTIEhcrerFO0EcSoJ
         yajLpkhBezGeuY1BzZQ/poxVn9KwmvlPDpc1jSi1bGFzJLN02r/ESJySAGufy1kSxn
         LP9fyOsRavKX73k8q5PJAuPGUfTgibrm5WstSU78AojGxUYmAxMJzl5nqirbRkwH0P
         qMiUWDerUy0Hg==
Received: by mail-wr1-f71.google.com with SMTP id w8-20020a5d4b48000000b001ef708e7f71so525997wrs.7
        for <devicetree@vger.kernel.org>; Fri, 25 Feb 2022 07:37:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UZI/W2JahxU89dnjOf2ONuJlruSbsJiXCZ4vcoyOmqk=;
        b=h9H65HZQtzmojNZwx+VibwLk4srGRAjAIAfd4CrnI43uwJ5f0cBFh/Te7UxtyQSJp5
         ebXm7yl+3ft5kq+p8fSip+xYP0Az4SpK4hvgiIqoHZJnbT2fYtbWoG3Mz8I97FyMq2LH
         yxH/jFjHHmPdPs4OJ8nQweUkia7j2h+BH4NJiI/U3pS5a/iWeU8TnYrPyfZUHKDojQER
         Gj9fVldv9vvWowChUBqGRp0pAXBVkXfoWqF4KzWi1/SPi6trDrXnJMz89uuRsnKGeji7
         szq/yWjXYhDBISBQ3P89j8haEHGwgqUAO2/2tHtK4KIiM3zV/unq/QrF0GbdtkzJhayM
         /v8A==
X-Gm-Message-State: AOAM533cK9+OyG/bzPtw9BW9GRetVvM6gGUHTbkSLMkhpoZ465118Qri
        vJ+xAvWUW926TVwzrgEXfEx57XNcEXQnr98pINIOjYFAA3gxTZhUd1N18hAifcMd5UyfUM3UMo2
        v8AjXL6QOZ5mKgg6qE5mDdrFy184zSj7j4tsoTt0=
X-Received: by 2002:a05:600c:4fd0:b0:37b:ddf7:aeb9 with SMTP id o16-20020a05600c4fd000b0037bddf7aeb9mr3296663wmq.190.1645803451236;
        Fri, 25 Feb 2022 07:37:31 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzIFKEf+6La7szHsSP99MDMXNfHBPihThkLUvVYK9XyumQ4jUFIYy/zF/Tl0PvKABo2wryFaA==
X-Received: by 2002:a05:600c:4fd0:b0:37b:ddf7:aeb9 with SMTP id o16-20020a05600c4fd000b0037bddf7aeb9mr3296649wmq.190.1645803451088;
        Fri, 25 Feb 2022 07:37:31 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id p15-20020adfce0f000000b001edc0bcf875sm2647168wrn.102.2022.02.25.07.37.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Feb 2022 07:37:30 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
Subject: [PATCH 3/3] arm64: dts: exynos: add a specific compatible to MCT
Date:   Fri, 25 Feb 2022 16:36:50 +0100
Message-Id: <20220225153650.289923-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220225153650.289923-1-krzysztof.kozlowski@canonical.com>
References: <20220225153650.289923-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
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
compatible to Exynos5433 and Exynos850.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/exynos/exynos5433.dtsi | 3 ++-
 arch/arm64/boot/dts/exynos/exynos850.dtsi  | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/exynos/exynos5433.dtsi b/arch/arm64/boot/dts/exynos/exynos5433.dtsi
index 661567d2dd7a..017ccc2f4650 100644
--- a/arch/arm64/boot/dts/exynos/exynos5433.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos5433.dtsi
@@ -806,7 +806,8 @@ tmu_isp: tmu@1007c000 {
 		};
 
 		timer@101c0000 {
-			compatible = "samsung,exynos4210-mct";
+			compatible = "samsung,exynos5433-mct",
+				     "samsung,exynos4210-mct";
 			reg = <0x101c0000 0x800>;
 			interrupts = <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>,
 				<GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>,
diff --git a/arch/arm64/boot/dts/exynos/exynos850.dtsi b/arch/arm64/boot/dts/exynos/exynos850.dtsi
index d1700e96fee2..12f7ddc6fd0a 100644
--- a/arch/arm64/boot/dts/exynos/exynos850.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos850.dtsi
@@ -181,7 +181,8 @@ chipid@10000000 {
 		};
 
 		timer@10040000 {
-			compatible = "samsung,exynos4210-mct";
+			compatible = "samsung,exynos850-mct",
+				     "samsung,exynos4210-mct";
 			reg = <0x10040000 0x800>;
 			interrupts = <GIC_SPI 203 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 204 IRQ_TYPE_LEVEL_HIGH>,
-- 
2.32.0

