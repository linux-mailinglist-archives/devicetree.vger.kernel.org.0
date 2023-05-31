Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 758BE718592
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 17:05:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233886AbjEaPFP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 11:05:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234186AbjEaPFD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 11:05:03 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07DFDE60
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 08:04:40 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-4f50470d77cso4141764e87.0
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 08:04:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685545472; x=1688137472;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vBciu8IUz0vdlWcni9FF4uUhO0LU6XOb9eyf9C827Ho=;
        b=F3/9fdJooQi3A7ohsFU9tS4SwZD9ktZAukLHq/SO4yRqiZv6j/0w2BVKW9jaPyGpmc
         61BYIKRpol8gHP2c7RCIptTA0gD5F3X02oMC4+tEVQ4cOszY3ncSi2jvdECqsHCJk26M
         h8DILCBuC48MSc74ueJASvUcbZIoEmJbTjZd26l6cPqBEA1P07OZN8j4oqHBEgfkU+0s
         GPdwJ/ckS5kiOt4sqgBBizYGTtKl9FMl+wyWTbdRMKrRHTVCMDIEQz1TUC5kGn9nffsu
         Uw28Yxy5pm2WmUFPBD9xbabSZo3UStxiZc8yXR5ubmo+NkLmv7GiTuKirSyppFGxQN5/
         m4yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685545472; x=1688137472;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vBciu8IUz0vdlWcni9FF4uUhO0LU6XOb9eyf9C827Ho=;
        b=FbkF9ceWgn/7NuWhNJqxjFSjED9e5hYuOMJfI8gDLR0Ia52mDpLT9/+Y3Pa1FMgnY/
         pNO+JaDilTXueyJVVtGu072fm+85aOMuboG8cis71XRXSv3I2kN29laQQHLuBffceUI8
         I4ahGIi3Y6AAGJgdo+/PuR4+yCbFWPAPj1H4joWJ2pqehKcNfyRdTcf8llx/WXowDuaL
         Zc3u1EePBqqkPq7VwhYIFT71q4ZZ5Hh20TjM9AYWjdVl7Fk810GtOsQCfJBXEuI3NAl2
         JIu9SM7O45+YHwWnzsWbwvScYmZxkJzQ6wawy/2BWFXdrI7FZ8DvCQ8TB7LGvM2KLSg/
         L17Q==
X-Gm-Message-State: AC+VfDxk6BtwKte1CJsGjElpQ4rDinBfw2zgd5hCLDAEjYpeJH9pPLFZ
        jM+fSr3i6t9+mM8VHEx0L9W5oA==
X-Google-Smtp-Source: ACHHUZ7R4nk2gm5iFOwfNg+kcoT3U5GmcqIxiuSd/sSJnm1971fkxNGCuVI8TjZHxwQV8eqZo0DFjQ==
X-Received: by 2002:ac2:44ae:0:b0:4f3:8196:80cb with SMTP id c14-20020ac244ae000000b004f3819680cbmr2957225lfm.41.1685545472269;
        Wed, 31 May 2023 08:04:32 -0700 (PDT)
Received: from [192.168.1.101] (abyj77.neoplus.adsl.tpnet.pl. [83.9.29.77])
        by smtp.gmail.com with ESMTPSA id v25-20020a197419000000b004f019d3eab4sm756325lfe.23.2023.05.31.08.04.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 May 2023 08:04:31 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Wed, 31 May 2023 17:04:24 +0200
Subject: [PATCH 2/2] arm64: dts: qcom: sm6375: Add GPUCC and Adreno SMMU
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230531-topic-sm6375_gpusmmu-v1-2-860943894c71@linaro.org>
References: <20230531-topic-sm6375_gpusmmu-v1-0-860943894c71@linaro.org>
In-Reply-To: <20230531-topic-sm6375_gpusmmu-v1-0-860943894c71@linaro.org>
To:     Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1685545468; l=2217;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=0qRthIuQ5GXryV4KqwemAc1v1T13tS3GmpDq4wc4d9Q=;
 b=LQedeCbvmtolR0nCDOCffZcsRKQtljPkZB5M7fCUYyluIH+p/GHigxqARJSVI+tDv6kCeipth
 0qk8Eb5tkoFA2Y3hkDRi5NZRoFvnNhwpNnUsNouaeXPj509BhPZnoES
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add GPUCC and Adreno SMMU nodes in preparation for adding the GPU
itself.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6375.dtsi | 37 ++++++++++++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6375.dtsi b/arch/arm64/boot/dts/qcom/sm6375.dtsi
index f8d9c34d3b2f..3dba34210a6d 100644
--- a/arch/arm64/boot/dts/qcom/sm6375.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6375.dtsi
@@ -5,6 +5,7 @@
 
 #include <dt-bindings/clock/qcom,rpmcc.h>
 #include <dt-bindings/clock/qcom,sm6375-gcc.h>
+#include <dt-bindings/clock/qcom,sm6375-gpucc.h>
 #include <dt-bindings/dma/qcom-gpi.h>
 #include <dt-bindings/firmware/qcom,scm.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
@@ -1276,6 +1277,42 @@ usb_1_dwc3: usb@4e00000 {
 			};
 		};
 
+		adreno_smmu: iommu@5940000 {
+			compatible = "qcom,sm6375-smmu-v2", "qcom,smmu-v2";
+			reg = <0 0x05940000 0 0x10000>;
+			#iommu-cells = <1>;
+			#global-interrupts = <2>;
+			interrupts = <GIC_SPI 379 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 381 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 457 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 458 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 459 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 460 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 461 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 462 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 463 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 464 IRQ_TYPE_LEVEL_HIGH>;
+
+			clocks = <&gcc GCC_GPU_MEMNOC_GFX_CLK>;
+			clock-names = "bus";
+
+			power-domains = <&gpucc GPU_CX_GDSC>;
+		};
+
+		gpucc: clock-controller@5990000 {
+			compatible = "qcom,sm6375-gpucc";
+			reg = <0 0x05990000 0 0x9000>;
+			clocks = <&rpmcc RPM_SMD_XO_CLK_SRC>,
+				 <&gcc GCC_GPU_GPLL0_CLK_SRC>,
+				 <&gcc GCC_GPU_GPLL0_DIV_CLK_SRC>,
+				 <&gcc GCC_GPU_SNOC_DVM_GFX_CLK>;
+			power-domains = <&rpmpd SM6375_VDDGX>;
+			required-opps = <&rpmpd_opp_low_svs>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		remoteproc_mss: remoteproc@6000000 {
 			compatible = "qcom,sm6375-mpss-pas";
 			reg = <0 0x06000000 0 0x4040>;

-- 
2.40.1

