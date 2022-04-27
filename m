Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4AF1C511FF4
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 20:38:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240815AbiD0QCM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 12:02:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53450 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240881AbiD0QCL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 12:02:11 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47E5E1632EE
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 08:58:55 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id l18so4303064ejc.7
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 08:58:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8EPlAzEqa5Z3HCLU5YLuPs1f540Pvw+JJscmv0oZSH4=;
        b=aJhxlILEsonwRFgA2RLIi48f+biDMsh9RQfe1Iocr5kMtHZgKMemehJKtEuPCVrEdU
         yBCBIHaxAOGal6l+5/Pmh456mflwkpp2S6IDhX/rGrzyl1JOHFiSh3EX2AxbXapUW4D6
         +c7cKmc5itQfZ6OTO6ngEKuB2/TYwIEJnLpRiOCorMw50HpgFzaSr9ZhVAhSpgvHYyGN
         bIgLeCu5a4CfvmS6yPMdb/oEf6yr9rELYqQVBj/2zRRqIwwKCdmMQBtO5uF2e9l2a6Bz
         Iv3wY0hPy3bR5QwKgxG6dRU9JmHjzkwe8+tKLU3HPAkK9k5i9jNyCNpvOA3vs2LUZ7Uo
         rwsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8EPlAzEqa5Z3HCLU5YLuPs1f540Pvw+JJscmv0oZSH4=;
        b=0MFsvFiMH0mQovGadlc/ZcExzQ2i4gKFj86zn6pqrrOQpFe/wSoxGpcQ92F01enOqS
         E7HpAQShriVlMVC0+VsRpoKnnU6T9V78pNB6fnfJc7DVJZxFEnRWoHz6+8phPL+2zeT4
         9Z/mt00SQ5Ul0zwECogH8+mjElCDciQp7KREJKyWezrG7pIh40eHmNm6txAV202vG1Yd
         rmci69N580LXGPlXj72CkgS6qAdbue/OT9QPuOjLihYotTubiFmi4ziQEzCdD/VrKJ8H
         lAymibWNOriwqzHGgr5xl1iMV20L6KKJXJEeaEjO6x+DCsxfvqzv2Lp4lVMMKPdOWI0D
         mkCQ==
X-Gm-Message-State: AOAM532dZr+L90+Rv47TXVx/tEMrKATpz6xDTSBK0IMdjlc+rR7+jZ6y
        coZP38VFynyycYuZARfibEVkSKxodAVSpA==
X-Google-Smtp-Source: ABdhPJzZr0qr1DcvYgu9lp2jTcYgjhXRbLetOK7LGuN3wit4mBhJdLykY/pKaqfIOap5mv+HFUy2ag==
X-Received: by 2002:a17:907:961c:b0:6f3:a3f9:bcef with SMTP id gb28-20020a170907961c00b006f3a3f9bcefmr12152459ejc.425.1651075128772;
        Wed, 27 Apr 2022 08:58:48 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id l20-20020a1709062a9400b006ce71a88bf5sm6931993eje.183.2022.04.27.08.58.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Apr 2022 08:58:48 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
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
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH 02/10] ARM: dts: socfpga: use proper 'dma-channels/requests' properties
Date:   Wed, 27 Apr 2022 17:58:32 +0200
Message-Id: <20220427155840.596535-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220427155840.596535-1-krzysztof.kozlowski@linaro.org>
References: <20220427155840.596535-1-krzysztof.kozlowski@linaro.org>
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

pl330 DMA controller bindings documented 'dma-channels' and
'dma-requests' properties (without leading hash sign), so fix the DTS to
match the bindings.

Reported-by: Rob Herring <robh@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/socfpga.dtsi         | 4 ++--
 arch/arm/boot/dts/socfpga_arria10.dtsi | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/socfpga.dtsi b/arch/arm/boot/dts/socfpga.dtsi
index b8c5dd7860cb..a459d3978cfa 100644
--- a/arch/arm/boot/dts/socfpga.dtsi
+++ b/arch/arm/boot/dts/socfpga.dtsi
@@ -80,8 +80,8 @@ pdma: pdma@ffe01000 {
 					     <0 110 4>,
 					     <0 111 4>;
 				#dma-cells = <1>;
-				#dma-channels = <8>;
-				#dma-requests = <32>;
+				dma-channels = <8>;
+				dma-requests = <32>;
 				clocks = <&l4_main_clk>;
 				clock-names = "apb_pclk";
 				resets = <&rst DMA_RESET>;
diff --git a/arch/arm/boot/dts/socfpga_arria10.dtsi b/arch/arm/boot/dts/socfpga_arria10.dtsi
index f1e50d2e623a..d7641c9f2875 100644
--- a/arch/arm/boot/dts/socfpga_arria10.dtsi
+++ b/arch/arm/boot/dts/socfpga_arria10.dtsi
@@ -73,8 +73,8 @@ pdma: pdma@ffda1000 {
 					     <0 90 IRQ_TYPE_LEVEL_HIGH>,
 					     <0 91 IRQ_TYPE_LEVEL_HIGH>;
 				#dma-cells = <1>;
-				#dma-channels = <8>;
-				#dma-requests = <32>;
+				dma-channels = <8>;
+				dma-requests = <32>;
 				clocks = <&l4_main_clk>;
 				clock-names = "apb_pclk";
 				resets = <&rst DMA_RESET>, <&rst DMA_OCP_RESET>;
-- 
2.32.0

