Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EE3985BD70B
	for <lists+devicetree@lfdr.de>; Tue, 20 Sep 2022 00:15:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229917AbiISWPt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 18:15:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229877AbiISWPp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 18:15:45 -0400
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com [IPv6:2607:f8b0:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 633BC4F1A2
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 15:15:38 -0700 (PDT)
Received: by mail-pg1-x534.google.com with SMTP id 3so671122pga.1
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 15:15:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=ULCMcZ+Weq8ahgDLA2SKhRRxvxoclcBLchkSc7jAqNM=;
        b=jI+49eoEG/2Qtd+35UCQhAVS74uxrxtiXIFxaVL/4mvvDUMyQAwlMVCJ3hHL/AFlI7
         qTFPV8cQ90E5BUX4h0V0qJG0ZDEqm7K53MPz7ERCy7HFayZe+TUdiR5kfiPpxsTKGtS4
         Biy7X53MJohEV2P8x2iTMnydPwrfB2osxpbhCd220xaLe6DeZTJINAs1T7Whhu+YHA3q
         Z7hM5VuaRlwSVH+eyp21VMr+yxVr24fATHAhDCV/1r/xD0m0d8QqVMm0esVl6XJ00t08
         rKlcoX8GydI3wxibNF4TOn6mKEiEtL7ykw3hHOcwZ2EBpDI80zG6eBOaBU59l1zXNKHG
         o84A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=ULCMcZ+Weq8ahgDLA2SKhRRxvxoclcBLchkSc7jAqNM=;
        b=AbOT+WzCc3fc3fqWziYcwxeEBFCKSk7d5hs3h7h27SzJRcj8wZ11aX5XYspdxB7He1
         cvHIoNzt12KpixAaNgcr/oTpXdjNiYjYUsfGTlVBrQe5c1KCEe4U34dUIN+5HIDDieIx
         L5DMMexN6w7AodFcgbGoBeEB4drod7GaBi/ZZxnsd4jEK+Rn/I7/vFcQUcAq/XN8F1C1
         1/4YKuvIsj1TK0GvjZQt0tmyD6zz51mAuVE/JL95yYX04gjyZyYjutu1M4MdaXll1vSm
         xvFlTzwDGS1w7KkUTfeAJdQAdiX0n7El+ek+FGxPNY+Hh95cvR8udD6wDP8VctG7kVRq
         0KpA==
X-Gm-Message-State: ACrzQf1kVz4IrV/HURkSlBuMi3JTxBHS7T1cX7JRj8nWSm7aqiE9ePpJ
        4UlVmhHn5c0vHSdtUgP/r/ujOA==
X-Google-Smtp-Source: AMsMyM74rQcRBLSqdZCMeOtVmNfkAtXPu7rDOxknVQcOrFlvyB/PYYjJ0F7sTACAHxOBIcTi9CT94g==
X-Received: by 2002:a05:6a00:ac6:b0:530:3197:48b6 with SMTP id c6-20020a056a000ac600b00530319748b6mr20478986pfl.80.1663625737218;
        Mon, 19 Sep 2022 15:15:37 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c61:6535:ca5f:67d1:670d:e188])
        by smtp.gmail.com with ESMTPSA id b22-20020a170902d89600b00176ab6a0d5fsm16198966plz.54.2022.09.19.15.15.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Sep 2022 15:15:36 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org
Cc:     agross@kernel.org, linux-kernel@vger.kernel.org,
        robh+dt@kernel.org, thara.gopinath@gmail.com,
        devicetree@vger.kernel.org, robh@kernel.org,
        krzysztof.kozlowski@linaro.org, andersson@kernel.org,
        bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        catalin.marinas@arm.com, will@kernel.org, arnd@arndb.de,
        Jordan Crouse <jorcrous@amazon.com>
Subject: [PATCH v6 3/4 RESEND] arm64: dts: qcom: sm8150: Add dt entries to support crypto engine.
Date:   Tue, 20 Sep 2022 03:45:08 +0530
Message-Id: <20220919221509.1057574-4-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220919221509.1057574-1-bhupesh.sharma@linaro.org>
References: <20220919221509.1057574-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add crypto engine (CE) and CE BAM related nodes and definitions to
'sm8150.dtsi'.

Cc: Bjorn Andersson <andersson@kernel.org>
Cc: Rob Herring <robh@kernel.org>
Tested-by: Jordan Crouse <jorcrous@amazon.com>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index cef8c4f4f0ff..6e21352a158c 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -2041,6 +2041,34 @@ ufs_mem_phy_lanes: phy@1d87400 {
 			};
 		};
 
+		cryptobam: dma-controller@1dc4000 {
+			compatible = "qcom,bam-v1.7.0";
+			reg = <0 0x01dc4000 0 0x24000>;
+			interrupts = <GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH>;
+			#dma-cells = <1>;
+			qcom,ee = <0>;
+			qcom,controlled-remotely;
+			iommus = <&apps_smmu 0x504 0x0011>,
+				 <&apps_smmu 0x506 0x0011>,
+				 <&apps_smmu 0x514 0x0011>,
+				 <&apps_smmu 0x516 0x0011>;
+			interconnects = <&aggre2_noc MASTER_CRYPTO_CORE_0 &mc_virt SLAVE_EBI_CH0>;
+			interconnect-names = "memory";
+		};
+
+		crypto: crypto@1dfa000 {
+			compatible = "qcom,sm8150-qce";
+			reg = <0 0x01dfa000 0 0x6000>;
+			dmas = <&cryptobam 4>, <&cryptobam 5>;
+			dma-names = "rx", "tx";
+			iommus = <&apps_smmu 0x504 0x0011>,
+				 <&apps_smmu 0x506 0x0011>,
+				 <&apps_smmu 0x514 0x0011>,
+				 <&apps_smmu 0x516 0x0011>;
+			interconnects = <&aggre2_noc MASTER_CRYPTO_CORE_0 &mc_virt SLAVE_EBI_CH0>;
+			interconnect-names = "memory";
+		};
+
 		ipa_virt: interconnect@1e00000 {
 			compatible = "qcom,sm8150-ipa-virt";
 			reg = <0 0x01e00000 0 0x1000>;
-- 
2.37.1

