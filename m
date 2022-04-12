Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 077A94FEB3D
	for <lists+devicetree@lfdr.de>; Wed, 13 Apr 2022 01:47:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230473AbiDLXfu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Apr 2022 19:35:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231400AbiDLXc4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Apr 2022 19:32:56 -0400
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com [IPv6:2607:f8b0:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D6BDCB008
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 15:24:36 -0700 (PDT)
Received: by mail-ot1-x330.google.com with SMTP id o20-20020a9d7194000000b005cb20cf4f1bso14302365otj.7
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 15:24:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3XOuGcH/wzb0FYgSoZ3ZLszM8ApqvXfZibiV9sZrmLo=;
        b=BrZWrhT7dRr+kE0t7Xi6nrxSpqH0LQmZdssV43z4SicclN8Tn3VifKSVry7NmQ2EJ3
         okiLxssg4prKI4KsFj+QRm3s30JBs1Jv6GS9t3CiXsdBAXQu2pakxq2SF8Viyatsdg5R
         hMQu5Ncy4zmG1rhEMyPLkUZk1NLX0w0s3zyh1t6pXBjw9OB7qg5EJhXTr72bXwOvNOF/
         xSMB+iJS4dDoP/ID8V/rCNt1TRuCngozIwyoPaBralj/QsWvex4U2smIyrvgsvfTh+bS
         liBk3feRPaxU66p3pND9Akue7OjhgdL51f6JFFk1PtB//c2yfdzffk8u0fd5rORWxR95
         KafA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3XOuGcH/wzb0FYgSoZ3ZLszM8ApqvXfZibiV9sZrmLo=;
        b=cFMuXf2Foxskbd+L2rNswXVBAYzqRcfrcxVmY1Bp9GOPH+Pt+UIhsbUZMlriUVkL4D
         7yJQsJGNmKG+DJxy79yvmH/HTF3ONVfztRjj/WL1Cn3X8x5FYEUgr89lCDSipo+r7ieZ
         kEUQVGRella9ogRSJSNzfYiMD5KZ4X0TZ5dYj9lExG11fpd7JrRaAm5CEv8HcDeaF6lI
         ny/v9TlTNUlz09Ic014o9Wvmxce38BXO3MB3JytNqVGTANRNRdYJ60upC542wNDv9FVX
         8Iazc0KmLJ9dENmbNZgJTPV+S3XFyk0ccsaBKpa8bjpI2e4cvG6nEIeH6no8QxOrZ6OF
         HEZw==
X-Gm-Message-State: AOAM533beMwy3Gtt0YJEIOCIoZGFoeNYCDksWFaB4zB21Np/8WlAGzdy
        KjPzkALU6ER8Q9uVQuslnpV7J8eP+PQJU2tL
X-Google-Smtp-Source: ABdhPJyeN23iMDpJktgvucYthMc8AZYrftz2ZdA12o8XfqUauG6+RIgnfH1cxRvAfFdqFtfDS439AA==
X-Received: by 2002:a05:6830:1605:b0:5c9:4fde:ba63 with SMTP id g5-20020a056830160500b005c94fdeba63mr13729362otr.84.1649800163433;
        Tue, 12 Apr 2022 14:49:23 -0700 (PDT)
Received: from ripper.. ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
        by smtp.gmail.com with ESMTPSA id k10-20020a4abd8a000000b00324907b406fsm12809059oop.21.2022.04.12.14.49.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Apr 2022 14:49:22 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Vinod Koul <vkoul@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] arm64: dts: qcom: sm8350: Define GPI DMA engines
Date:   Tue, 12 Apr 2022 14:51:35 -0700
Message-Id: <20220412215137.2385831-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Qualcomm SM8350 has three GPI DMA engines, add definitions for
these.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 73 ++++++++++++++++++++++++++++
 1 file changed, 73 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index a68231634da2..7e585d9e4c68 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -3,6 +3,7 @@
  * Copyright (c) 2020, Linaro Limited
  */
 
+#include <dt-bindings/dma/qcom-gpi.h>
 #include <dt-bindings/interconnect/qcom,sm8350.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/clock/qcom,dispcc-sm8350.h>
@@ -678,6 +679,28 @@ opp-120000000 {
 			};
 		};
 
+		gpi_dma2: dma-controller@800000 {
+			compatible = "qcom,sm8350-gpi-dma";
+			reg = <0 0x00800000 0 0x60000>;
+			interrupts = <GIC_SPI 588 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 589 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 590 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 591 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 592 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 593 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 594 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 595 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 596 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 597 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 598 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 599 IRQ_TYPE_LEVEL_HIGH>;
+			dma-channels = <12>;
+			dma-channel-mask = <0xff>;
+			iommus = <&apps_smmu 0x5f6 0x0>;
+			#dma-cells = <3>;
+			status = "disabled";
+		};
+
 		qupv3_id_2: geniqup@8c0000 {
 			compatible = "qcom,geni-se-qup";
 			reg = <0x0 0x008c0000 0x0 0x6000>;
@@ -843,12 +866,37 @@ spi19: spi@894000 {
 				interrupts = <GIC_SPI 587 IRQ_TYPE_LEVEL_HIGH>;
 				power-domains = <&rpmhpd SM8350_CX>;
 				operating-points-v2 = <&qup_opp_table_100mhz>;
+				dmas = <&gpi_dma2 0 5 QCOM_GPI_SPI>,
+				       <&gpi_dma2 1 5 QCOM_GPI_SPI>;
+				dma-names = "tx", "rx";
 				#address-cells = <1>;
 				#size-cells = <0>;
 				status = "disabled";
 			};
 		};
 
+		gpi_dma0: dma-controller@900000 {
+			compatible = "qcom,sm8350-gpi-dma";
+			reg = <0 0x09800000 0 0x60000>;
+			interrupts = <GIC_SPI 244 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 245 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 246 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 247 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 248 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 249 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 250 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 251 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 252 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 253 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 254 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 255 IRQ_TYPE_LEVEL_HIGH>;
+			dma-channels = <12>;
+			dma-channel-mask = <0x7e>;
+			iommus = <&apps_smmu 0x5b6 0x0>;
+			#dma-cells = <3>;
+			status = "disabled";
+		};
+
 		qupv3_id_0: geniqup@9c0000 {
 			compatible = "qcom,geni-se-qup";
 			reg = <0x0 0x009c0000 0x0 0x6000>;
@@ -1081,12 +1129,37 @@ spi7: spi@99c000 {
 				interrupts = <GIC_SPI 608 IRQ_TYPE_LEVEL_HIGH>;
 				power-domains = <&rpmhpd SM8350_CX>;
 				operating-points-v2 = <&qup_opp_table_100mhz>;
+				dmas = <&gpi_dma0 0 7 QCOM_GPI_SPI>,
+				       <&gpi_dma0 1 7 QCOM_GPI_SPI>;
+				dma-names = "tx", "rx";
 				#address-cells = <1>;
 				#size-cells = <0>;
 				status = "disabled";
 			};
 		};
 
+		gpi_dma1: dma-controller@a00000 {
+			compatible = "qcom,sm8350-gpi-dma";
+			reg = <0 0x00a00000 0 0x60000>;
+			interrupts = <GIC_SPI 279 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 280 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 281 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 282 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 283 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 284 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 293 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 294 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 295 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 296 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 297 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 298 IRQ_TYPE_LEVEL_HIGH>;
+			dma-channels = <12>;
+			dma-channel-mask = <0xff>;
+			iommus = <&apps_smmu 0x56 0x0>;
+			#dma-cells = <3>;
+			status = "disabled";
+		};
+
 		qupv3_id_1: geniqup@ac0000 {
 			compatible = "qcom,geni-se-qup";
 			reg = <0x0 0x00ac0000 0x0 0x6000>;
-- 
2.35.1

