Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0EC866B6625
	for <lists+devicetree@lfdr.de>; Sun, 12 Mar 2023 14:10:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229673AbjCLNKt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Mar 2023 09:10:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229713AbjCLNKs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Mar 2023 09:10:48 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 374A546143
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 06:10:47 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id i20so9958400lja.11
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 06:10:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678626646;
        h=cc:to:subject:date:from:in-reply-to:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tDIef+aPGuB5wQknGJ7abVMxEUnE+NE/6MUxxwCrbfI=;
        b=PmWJGuWvHvoaBUm5nK5j4U9cgV4JgIFaTQh8n1umXnsJs46oN3uhwPSpDhOXC95T9b
         FqILI26G+ZflTvFvV67dYQubm218NYns9aaQ6/mu1j0X/XXjjRvdheAQ/kskYBqQsK5v
         knmIyhwgLE778EuGejxJkUOmfV3eimemthw14Wv4CLyt29+CSwIGXELC2Hl82Wmq0teY
         c0JsAafOKit85nQ6vIVgmtAh3mkQwlLzjItUaiY77rEfjKhoqoavDKnV6mfYNXjLFGql
         vh7TTO7C8NMsJcpFzAmXPDziLcdnEfvQ0VNsD+rAy9dIbkBA0kVi5qB1Ro9X1943U53X
         5Z4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678626646;
        h=cc:to:subject:date:from:in-reply-to:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tDIef+aPGuB5wQknGJ7abVMxEUnE+NE/6MUxxwCrbfI=;
        b=UWJ9Ieb4tAewE43EhyLDF7IU8bSnj1YM+5qYf3UXAaSio+m8PLUsEypES8Ts7o7FbZ
         g1YMKB6ZnIi9K7//VhT5YPUVkUJ+wwE/jL1SbuqQgTDN/EGKJDHiG84Iv/aa+IO2rtt1
         pWv7dt+uU/ayu+cpqHcLg7vPiB+FyKiT4fu1L19VRn0PmDG1H1Sf8nf0qzEJ0LKuwnbO
         AqPAW+JPicYYmno8ForpwUe6q/8gJpwPHHSPDItzMCQaTliwtP3GBZ5M5XqJe0gCewwj
         58gueq8YO9txUrAi96c7sNyxGuMI/HKM9RaRsZKh/Gjv4bb2KJPh3gBR64+V/b3VAONa
         QYnQ==
X-Gm-Message-State: AO0yUKXYIt7bqYlFj20NJTkQ2g8MqDJQkHOtZ7qi5Y4gWFH39OCPXHCp
        EpKxkVdGZetjk5CyH8qUlMiSyWGmOD6nQ3Cp
X-Google-Smtp-Source: AK7set+JUx6sEfOTZvp059pBqkqqSj1j7sDTVoDa6C2K13nZPchr8v93LTssW08AQiwMhomT75lfNg==
X-Received: by 2002:a2e:96d2:0:b0:294:6cfd:8a88 with SMTP id d18-20020a2e96d2000000b002946cfd8a88mr9462616ljj.9.1678626646532;
        Sun, 12 Mar 2023 06:10:46 -0700 (PDT)
Received: from 0001-dt-bindings-exynos-dw-mshc-common-add-exynos78xx-var.patch (46-138-144-249.dynamic.spd-mgts.ru. [46.138.144.249])
        by smtp.gmail.com with ESMTPSA id y26-20020a2e979a000000b002947028ae7csm647919lji.72.2023.03.12.06.10.45
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 06:10:46 -0700 (PDT)
Message-Id: <1678626510.1783316-1-sleirsgoevy@gmail.com>
In-Reply-To: <1678626510.1783316-0-sleirsgoevy@gmail.com>
From:   Sergey Lisov <sleirsgoevy@gmail.com>
Date:   Sun, 12 Mar 2023 16:03:15 +0300
Subject: [PATCH v3 1/2] dt-bindings: exynos-dw-mshc-common: add exynos78xx
 variants
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Jaehoon Chung <jh80.chung@samsung.com>
Cc:     linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some Samsung Exynos boards using the arm64 architecture have DW MMC
controllers configured for a 32-bit data bus but a 64-bit FIFO. On these
systems the 64-bit FIFO registers must be accessed in two 32-bit halves.

Add two new compatible strings, "samsung,exynos78xx-dw-mshc" and
"samsung,exynos78xx-dw-mshc-smu" respectively, to denote exynos78xx
boards that need this quirk. But it's very possible that all
"samsung,exynos7-dw-mshc" boards are actually affected.
---
 .../devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml         | 2 ++
 arch/arm64/boot/dts/exynos/exynos7885.dtsi                      | 2 +-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml
index fdaa18481..a72a67792 100644
--- a/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml
+++ b/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml
@@ -22,6 +22,8 @@ properties:
       - samsung,exynos5420-dw-mshc-smu
       - samsung,exynos7-dw-mshc
       - samsung,exynos7-dw-mshc-smu
+      - samsung,exynos78xx-dw-mshc
+      - samsung,exynos78xx-dw-mshc-smu
       - axis,artpec8-dw-mshc
 
   reg:
diff --git a/arch/arm64/boot/dts/exynos/exynos7885.dtsi b/arch/arm64/boot/dts/exynos/exynos7885.dtsi
index 23c2e0bb0..4b94ac9da 100644
--- a/arch/arm64/boot/dts/exynos/exynos7885.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos7885.dtsi
@@ -294,7 +294,7 @@ pmu_system_controller: system-controller@11c80000 {
 		};
 
 		mmc_0: mmc@13500000 {
-			compatible = "samsung,exynos7-dw-mshc-smu";
+			compatible = "samsung,exynos78xx-dw-mshc-smu";
 			reg = <0x13500000 0x2000>;
 			interrupts = <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>;
 			#address-cells = <1>;
-- 
2.38.3


