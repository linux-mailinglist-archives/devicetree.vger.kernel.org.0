Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8A92D515CC1
	for <lists+devicetree@lfdr.de>; Sat, 30 Apr 2022 14:20:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345116AbiD3MW5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 30 Apr 2022 08:22:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1359691AbiD3MWu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 30 Apr 2022 08:22:50 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8B6EABF4D
        for <devicetree@vger.kernel.org>; Sat, 30 Apr 2022 05:19:19 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id j6so19926805ejc.13
        for <devicetree@vger.kernel.org>; Sat, 30 Apr 2022 05:19:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FEUaNNHzE9ZBEpoPb2H49jbs7ls4zLcKTGKpF7Ef5aY=;
        b=IG7VNJKG2LAtdHPPgRFQSQBY+AsOe4DgJMH3eoxpjSs9SKgWg1Prw8WF1Av50a/+DA
         BgJdBBonToETYCWyeDrtNhB5v5poDYSojZQawZ979AtF6VrVbRZF/otK4EJWce997VNI
         v1Tm3rA+kjMw+paviRQ730WnWHxoo9JMUPg95uCNITGm0QsHjK5881OZ5Dxja+XQivgZ
         z/SEJ1oNOgVPxY8h7X/eqVsvHVf1sdwP9LxO553jH2E7GMc8AtXoVgYKtkteAwbpJu3t
         KOSy/bFziYuRKx5DYHNHz11k3RcnGxL9+Aa93eUnn9zODVPjzO+cgQg0aA1F1R8GDbVe
         Xznw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FEUaNNHzE9ZBEpoPb2H49jbs7ls4zLcKTGKpF7Ef5aY=;
        b=W2bj3XnD6UKb8murrgvwpNmCW2VicYcNoIydPeHOI/8Q4waY4hdqBlrVdHeNBT7OO9
         v/j30a4X6Nm3RHXOQWuw3WXLuUd0xwMYLYtGKhuEbeNVl09tSS476kf24Nck6tmFBle3
         5k8Pp1Q4DnD9zahBMJIq8PQcKpO4NBSXkpfvZPBk3QaEtTVf122ZLtCK4giVa5yrGyy7
         3iWhRzOmsoTXKddieN8CzEDLE4/006pl0eiZJSaUfTamN0H0HCTU6eiUp639CUVaNKo7
         XIgqW96ZekLxv/H+nrVRZsbo4Jgg5vCwvL6EQI4/lnwcvVl/Gj6m/qNUtjESqHTBztwQ
         0DaA==
X-Gm-Message-State: AOAM5314RY52Lodsb5Sp2YiYPq18uR3wplq1wJsga9Z7t3ekCXMZO9t5
        kV1xG0j6JFxi8YI5SHXecMannQ==
X-Google-Smtp-Source: ABdhPJxItSAcw2+jyJJZYG3zIcYy0nrnl111gz9oeVOAm11XmeU4okKLgbMy+7RUHY07C+OnYfrwyA==
X-Received: by 2002:a17:906:6097:b0:6f3:ee8d:b924 with SMTP id t23-20020a170906609700b006f3ee8db924mr3704773ejj.536.1651321158446;
        Sat, 30 Apr 2022 05:19:18 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id c26-20020a056402159a00b0042617ba63d1sm4059091edv.91.2022.04.30.05.19.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Apr 2022 05:19:18 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Dinh Nguyen <dinguyen@kernel.org>,
        Michal Simek <michal.simek@xilinx.com>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Broadcom Kernel Team <bcm-kernel-feedback-list@broadcom.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v2 8/9] arm64: dts: exynos: drop useless 'dma-channels/requests' properties
Date:   Sat, 30 Apr 2022 14:19:01 +0200
Message-Id: <20220430121902.59895-9-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220430121902.59895-1-krzysztof.kozlowski@linaro.org>
References: <20220430121902.59895-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The pl330 DMA controller provides number of DMA channels and requests
through its registers, so duplicating this information (with a chance of
mistakes) in DTS is pointless.  Additionally the DTS used always wrong
property names which causes DT schema check failures - the bindings
documented 'dma-channels' and 'dma-requests' properties without leading
hash sign.

Reported-by: Rob Herring <robh@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/exynos/exynos5433.dtsi | 6 ------
 arch/arm64/boot/dts/exynos/exynos7.dtsi    | 4 ----
 2 files changed, 10 deletions(-)

diff --git a/arch/arm64/boot/dts/exynos/exynos5433.dtsi b/arch/arm64/boot/dts/exynos/exynos5433.dtsi
index 017ccc2f4650..75b548e495a0 100644
--- a/arch/arm64/boot/dts/exynos/exynos5433.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos5433.dtsi
@@ -1866,8 +1866,6 @@ pdma0: dma-controller@15610000 {
 			clocks = <&cmu_fsys CLK_PDMA0>;
 			clock-names = "apb_pclk";
 			#dma-cells = <1>;
-			#dma-channels = <8>;
-			#dma-requests = <32>;
 		};
 
 		pdma1: dma-controller@15600000 {
@@ -1877,8 +1875,6 @@ pdma1: dma-controller@15600000 {
 			clocks = <&cmu_fsys CLK_PDMA1>;
 			clock-names = "apb_pclk";
 			#dma-cells = <1>;
-			#dma-channels = <8>;
-			#dma-requests = <32>;
 		};
 
 		audio-subsystem@11400000 {
@@ -1898,8 +1894,6 @@ adma: dma-controller@11420000 {
 				clocks = <&cmu_aud CLK_ACLK_DMAC>;
 				clock-names = "apb_pclk";
 				#dma-cells = <1>;
-				#dma-channels = <8>;
-				#dma-requests = <32>;
 				power-domains = <&pd_aud>;
 			};
 
diff --git a/arch/arm64/boot/dts/exynos/exynos7.dtsi b/arch/arm64/boot/dts/exynos/exynos7.dtsi
index e38bb02a2152..1cd771c90b47 100644
--- a/arch/arm64/boot/dts/exynos/exynos7.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos7.dtsi
@@ -149,8 +149,6 @@ pdma0: dma-controller@10e10000 {
 			clocks = <&clock_fsys0 ACLK_PDMA0>;
 			clock-names = "apb_pclk";
 			#dma-cells = <1>;
-			#dma-channels = <8>;
-			#dma-requests = <32>;
 		};
 
 		pdma1: dma-controller@10eb0000 {
@@ -160,8 +158,6 @@ pdma1: dma-controller@10eb0000 {
 			clocks = <&clock_fsys0 ACLK_PDMA1>;
 			clock-names = "apb_pclk";
 			#dma-cells = <1>;
-			#dma-channels = <8>;
-			#dma-requests = <32>;
 		};
 
 		clock_topc: clock-controller@10570000 {
-- 
2.32.0

