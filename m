Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 05F6B5BD6DA
	for <lists+devicetree@lfdr.de>; Tue, 20 Sep 2022 00:08:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229771AbiISWI2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 18:08:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229749AbiISWI1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 18:08:27 -0400
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com [IPv6:2607:f8b0:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 408204E616
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 15:08:25 -0700 (PDT)
Received: by mail-pg1-x532.google.com with SMTP id r23so639103pgr.6
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 15:08:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=DRxqMyGvhPtofl8YxA3T39m6sweXx0A08o/k3+hG0Lk=;
        b=d+YQfQ/B6B3CCbpoXS/ElmZghnhmJmIaPF6nALJ4T7LXMJHDhEhNbNffEYY8V0gcxU
         qiBOfZVbuuUqc10lJZf5gDXlqvhE0r7Hek2aBECBbLEaX+9+PivK1qryzBjO9vtULJZp
         7VrzlLBjzpXBN5FAv5jHYo+Gv3OGs3edSYuKt/Ad2QQP02qDyRzYH3xuJvoKwfSNBbJQ
         C8ARa2k5R3zDt7YHx6sZfmBhJRxnrgvwar7VwqxAV5O3QklwsqjJAPt/1KUqs3FKj37p
         Juo0LGpcCh0nbiJ2/Dc7UVc1cMTeqaob/WHGfWkWPv3zA5a2auP767mg5IuL48BBvYSl
         cjVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=DRxqMyGvhPtofl8YxA3T39m6sweXx0A08o/k3+hG0Lk=;
        b=nd86mjfiM1y1vwpoi5z89EjzdF06Y08L5WbLOg1o6LdZeTC2eeI3ARN8RCF7KPVjKh
         hb5O/ZlemM13wt7ns4loSX73ycMGFCRIqoPpTU+wFmsK+iD4Ph9qzDUPCxNoGw0rNtCZ
         fkHD8uEuXs/Yps9SRc2xTWftRN0fbeGUGAbKJJRCS5XQ+eo2Xt1O8v+zU85jrJRZ60Lk
         6ftZ21Y+KIPdneREW9NvPoZv5KlP9kwLbnMZoryYx+4xerDsqBHqu09VFvS77PmfpTOQ
         8jtr3d2UzECkfFAEiy/aUKHMM6Bm1xBgehOhRl/GjVQE0LfnpPVYOpIy+1GfFYRxFAk6
         8xhQ==
X-Gm-Message-State: ACrzQf07n+NvPaI47jQBqLPNvXDvYxDAy2zBHV0F9VXXJT5h0gIo4SQI
        7RVKnDAnyLJU9X4MFNb//57FSA==
X-Google-Smtp-Source: AMsMyM4OnpxDGwyr1k3vmFAwnOZxv4zjr53aJn681o6mpLreYuqUYeWhzuJ/nPgd8w1tYjEF2ruwaA==
X-Received: by 2002:a63:e22:0:b0:41d:3a50:bc55 with SMTP id d34-20020a630e22000000b0041d3a50bc55mr17784139pgl.255.1663625304760;
        Mon, 19 Sep 2022 15:08:24 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c61:6535:ca5f:67d1:670d:e188])
        by smtp.gmail.com with ESMTPSA id u2-20020a17090a6a8200b001eee8998f2esm7068167pjj.17.2022.09.19.15.08.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Sep 2022 15:08:24 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org
Cc:     agross@kernel.org, linux-kernel@vger.kernel.org,
        robh+dt@kernel.org, thara.gopinath@gmail.com,
        devicetree@vger.kernel.org, robh@kernel.org,
        krzysztof.kozlowski@linaro.org, andersson@kernel.org,
        bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        Jordan Crouse <jorcrous@amazon.com>
Subject: [PATCH v6 2/4] arm64: dts: qcom: sm8250: Add dt entries to support crypto engine.
Date:   Tue, 20 Sep 2022 03:38:02 +0530
Message-Id: <20220919220804.1047292-3-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220919220804.1047292-1-bhupesh.sharma@linaro.org>
References: <20220919220804.1047292-1-bhupesh.sharma@linaro.org>
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

Add crypto engine (CE) and CE BAM related nodes and definitions to
'sm8250.dtsi'.

Cc: Bjorn Andersson <andersson@kernel.org>
Cc: Rob Herring <robh@kernel.org>
Tested-by: Jordan Crouse <jorcrous@amazon.com>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index a5b62cadb129..7b3af34f8486 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -2188,6 +2188,34 @@ ufs_mem_phy_lanes: phy@1d87400 {
 			};
 		};
 
+		cryptobam: dma-controller@1dc4000 {
+			compatible = "qcom,bam-v1.7.0";
+			reg = <0 0x01dc4000 0 0x24000>;
+			interrupts = <GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH>;
+			#dma-cells = <1>;
+			qcom,ee = <0>;
+			qcom,controlled-remotely;
+			iommus = <&apps_smmu 0x584 0x0011>,
+				 <&apps_smmu 0x586 0x0011>,
+				 <&apps_smmu 0x594 0x0011>,
+				 <&apps_smmu 0x596 0x0011>;
+			interconnects = <&aggre2_noc MASTER_CRYPTO_CORE_0 &mc_virt SLAVE_EBI_CH0>;
+			interconnect-names = "memory";
+		};
+
+		crypto: crypto@1dfa000 {
+			compatible = "qcom,sm8250-qce";
+			reg = <0 0x01dfa000 0 0x6000>;
+			dmas = <&cryptobam 4>, <&cryptobam 5>;
+			dma-names = "rx", "tx";
+			iommus = <&apps_smmu 0x584 0x0011>,
+				 <&apps_smmu 0x586 0x0011>,
+				 <&apps_smmu 0x594 0x0011>,
+				 <&apps_smmu 0x596 0x0011>;
+			interconnects = <&aggre2_noc MASTER_CRYPTO_CORE_0 &mc_virt SLAVE_EBI_CH0>;
+			interconnect-names = "memory";
+		};
+
 		ipa_virt: interconnect@1e00000 {
 			compatible = "qcom,sm8250-ipa-virt";
 			reg = <0 0x01e00000 0 0x1000>;
-- 
2.37.1

