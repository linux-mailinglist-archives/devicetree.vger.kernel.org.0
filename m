Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 320D7524AB2
	for <lists+devicetree@lfdr.de>; Thu, 12 May 2022 12:46:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352821AbiELKq1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 May 2022 06:46:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352831AbiELKqC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 May 2022 06:46:02 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC26013E13
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 03:45:55 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id w19so8259144lfu.11
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 03:45:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/l3OrBplyKuh+lUCZVdTTtqDQob9NuPNHt2n4+OQbcw=;
        b=ao0UtYsepfQYNGS8ezhJdojDj9sJQREJHKA6w9UYt0LLmeSNyEf4PnainujRfM5qoq
         ZDpPCgWYo4dC3mKpWbRxzpzmq5maetRNxaL3GcawG8U0ubltJ2WqLM+0CDzg78c3DJw1
         29yL45P66yTyS+rKr0bRugspYNjqGGyHtQ2XIJMHx1jMrrLxAZ0mqyOc9ibtdkkWtiNY
         TzyoDRxyTbL9pytAfFxejsG+PESCpSJ0LizHWmaJFqaKp0N4o8SUX81fbPottdf7ganR
         c2cvQLs3wO2sXZcS+FVO+2GYR2hwrz1daXkgaALso39+Kd1xrSSMV4bxEp5cM6hDR3hd
         WW+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/l3OrBplyKuh+lUCZVdTTtqDQob9NuPNHt2n4+OQbcw=;
        b=xR1JfXU+NrJ5Uwd0rDLIVs+44RTPjh7lpq6QQiH7MaFvAB1OvgYU6V33Gx2PC2Alpw
         GfOLfF8wzOALBIX4wBZ103R2HlSz97Vmw9SeRdQp1LjcAyYpeipnlm7dQSHZK9EhBGLQ
         uGnwUkAaKhFtTZMzZ7PVjk7OTRJyD93ZgbYnGK9Kz5W5nsh34M48yMIN7QIKfXwl/vi2
         hsiNEb1Zalyh+eFVdcqbqkYya7ChO6FRFE0KxBFYUZ+m4tzFT2tvfqjLwHBon6IuTVy4
         Z3kPKOahDryukdMYsnUCoTgCLekFG7ySVET2YxuA9jmrB9YJd0sUe90+V/8Vm4nZF3F4
         bfig==
X-Gm-Message-State: AOAM532yMNie+8FVvOgxMXI3Ll3uCMUl0q7q3oXQvHgDdOh3240DjcGI
        z23HQ1eI+6HReQWrAEY+SzofXA==
X-Google-Smtp-Source: ABdhPJzItHyCQQs6weZzdTomB4GgeXIzarfFhevcywCzRSdFC8F1qaDA0jqL+XJnzLr5PfZqZArOhw==
X-Received: by 2002:a05:6512:b90:b0:473:9e03:c4f3 with SMTP id b16-20020a0565120b9000b004739e03c4f3mr24312500lfv.494.1652352354164;
        Thu, 12 May 2022 03:45:54 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id q21-20020a2e9695000000b0024f3d1daeafsm831660lji.55.2022.05.12.03.45.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 May 2022 03:45:53 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Jingoo Han <jingoohan1@gmail.com>,
        Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Stanimir Varbanov <svarbanov@mm-sol.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc:     Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v8 10/10] arm64: dts: qcom: sm8250: provide additional MSI interrupts
Date:   Thu, 12 May 2022 13:45:45 +0300
Message-Id: <20220512104545.2204523-11-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220512104545.2204523-1-dmitry.baryshkov@linaro.org>
References: <20220512104545.2204523-1-dmitry.baryshkov@linaro.org>
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

On SM8250 each group of MSI interrupts is mapped to the separate host
interrupt. Describe each of interrupts in the device tree for PCIe0
host.

Tested on Qualcomm RB5 platform with first group of MSI interrupts being
used by the PME and attached ath11k WiFi chip using second group of MSI
interrupts.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 410272a1e19b..ef683a2f7412 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -1807,8 +1807,15 @@ pcie0: pci@1c00000 {
 			ranges = <0x01000000 0x0 0x60200000 0 0x60200000 0x0 0x100000>,
 				 <0x02000000 0x0 0x60300000 0 0x60300000 0x0 0x3d00000>;
 
-			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-names = "msi";
+			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "msi", "msi1", "msi2", "msi3", "msi4", "msi5", "msi6", "msi7";
 			#interrupt-cells = <1>;
 			interrupt-map-mask = <0 0 0 0x7>;
 			interrupt-map = <0 0 0 1 &intc 0 149 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
-- 
2.35.1

