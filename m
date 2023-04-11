Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD6416DDB78
	for <lists+devicetree@lfdr.de>; Tue, 11 Apr 2023 14:59:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230027AbjDKM7z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Apr 2023 08:59:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230174AbjDKM7h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Apr 2023 08:59:37 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80818524F
        for <devicetree@vger.kernel.org>; Tue, 11 Apr 2023 05:59:23 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id he11-20020a05600c540b00b003ef6d684102so2311923wmb.3
        for <devicetree@vger.kernel.org>; Tue, 11 Apr 2023 05:59:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112; t=1681217962;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ti2ysbW8Cc+oBh8xPSaQGRD6NB9f1GZWXnz69twS12o=;
        b=OcPBHkjTTSWddEDKyoUb2+Rw1AzfeC+W1Z4KEsw+L9fguKR4yDvpigeQSdoc4A4+HQ
         VVMrOqsX63Ff5/4h3UHRyc22kAmZugXh1CUgBkKmGFMSFlqcvDSAP20oZW/aXMwW1FEN
         1F5AgwZ3dEsz7OLIr24DceU49mjUodZkXHjERTF67qXS/0MyT6thWsi23DEa6QbFyKL2
         F8Oe3Nzf+USVMvY71bwaeI3Bj+a8LLmUdbuzH4Po2C1l/bf+k0DYolNItPadZpw70aJf
         JGjw+TNmlEZjB/VG94rJRw45W9drqYB1WbFeatRLbwF1zVLypvmKwqYKdtx5iOQaDmKn
         YcHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681217962;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ti2ysbW8Cc+oBh8xPSaQGRD6NB9f1GZWXnz69twS12o=;
        b=llPGIprXrOsIg8mVaPwiaFjIcXLr49GXwIQdObIyxHfM8V0DRn3Nh/kDFxSpxRN0ty
         cIDXPuMCpDOOHupN3dvOTqnFQOcIWL3UzWmej1BP5S+p4QBEFNkb3cylV0hmnokeRHeQ
         px2gtvS1q8WTCJxQQtYxbAfKMNM0S5fM2DTU3jz2fgONitBp2+2B8JjAYEl6Eg8oeO/6
         TgdSLzelIB4haNZR+rq0OY2+JKQilPtSGdoGkaFIrYKbF5YIM5OmAg7Sd3KPnaSFAdGf
         i/AHfvEgm3eTMPg3uK01pcAQ1zW9Xde8X5xMtNHtpys4jtYw0aJC9kOeBCPXN5NkynIK
         bH3w==
X-Gm-Message-State: AAQBX9c+3D3bgMBmXRLPN+xaR+zd544z4MyVvz2tkRc4FmrdfSUvKQpi
        z4nWfQQ3qBDQADQ9fMLtxfjYsg==
X-Google-Smtp-Source: AKy350YVTDFNb5Qk8eaZ2+Vqkq8JCY99+JvsaLSibJbCz5fAyWy94GjBnHTh0QE50XOU3hHs0BKOhQ==
X-Received: by 2002:a7b:c354:0:b0:3ed:301c:375c with SMTP id l20-20020a7bc354000000b003ed301c375cmr7357343wmj.21.1681217962443;
        Tue, 11 Apr 2023 05:59:22 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:a099:fc1d:c99a:bfc3])
        by smtp.gmail.com with ESMTPSA id e24-20020a05600c219800b003eae73f0fc1sm16944591wme.18.2023.04.11.05.59.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Apr 2023 05:59:22 -0700 (PDT)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Arnd Bergmann <arnd@arndb.de>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH v3 7/7] arm64: dts: qcom: sa8775p: add the GPU IOMMU node
Date:   Tue, 11 Apr 2023 14:59:10 +0200
Message-Id: <20230411125910.401075-8-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230411125910.401075-1-brgl@bgdev.pl>
References: <20230411125910.401075-1-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=0.0 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Add the Adreno GPU IOMMU for sa8775p-based platforms.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 37 +++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index 191b510b5a1a..11f3d80dd869 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -7,6 +7,7 @@
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/clock/qcom,rpmh.h>
 #include <dt-bindings/clock/qcom,sa8775p-gcc.h>
+#include <dt-bindings/clock/qcom,sa8775p-gpucc.h>
 #include <dt-bindings/interconnect/qcom,sa8775p-rpmh.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
@@ -605,6 +606,42 @@ gpucc: clock-controller@3d90000 {
 			#power-domain-cells = <1>;
 		};
 
+		adreno_smmu: iommu@3da0000 {
+			compatible = "qcom,sa8775p-smmu-500", "qcom,adreno-smmu",
+				     "arm,mmu-500";
+			reg = <0x0 0x03da0000 0x0 0x20000>;
+			#iommu-cells = <2>;
+			#global-interrupts = <2>;
+			dma-coherent;
+			power-domains = <&gpucc GPU_CC_CX_GDSC>;
+			clocks = <&gcc GCC_GPU_MEMNOC_GFX_CLK>,
+				 <&gcc GCC_GPU_SNOC_DVM_GFX_CLK>,
+				 <&gpucc GPU_CC_AHB_CLK>,
+				 <&gpucc GPU_CC_HLOS1_VOTE_GPU_SMMU_CLK>,
+				 <&gpucc GPU_CC_CX_GMU_CLK>,
+				 <&gpucc GPU_CC_HUB_CX_INT_CLK>,
+				 <&gpucc GPU_CC_HUB_AON_CLK>;
+			clock-names = "gcc_gpu_memnoc_gfx_clk",
+				      "gcc_gpu_snoc_dvm_gfx_clk",
+				      "gpu_cc_ahb_clk",
+				      "gpu_cc_hlos1_vote_gpu_smmu_clk",
+				      "gpu_cc_cx_gmu_clk",
+				      "gpu_cc_hub_cx_int_clk",
+				      "gpu_cc_hub_aon_clk";
+			interrupts = <GIC_SPI 673 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 674 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 678 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 679 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 680 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 681 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 682 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 683 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 684 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 685 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 686 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 687 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
 		pdc: interrupt-controller@b220000 {
 			compatible = "qcom,sa8775p-pdc", "qcom,pdc";
 			reg = <0x0 0x0b220000 0x0 0x30000>,
-- 
2.37.2

