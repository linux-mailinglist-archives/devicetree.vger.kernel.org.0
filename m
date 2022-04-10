Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 899084FB049
	for <lists+devicetree@lfdr.de>; Sun, 10 Apr 2022 22:59:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233232AbiDJVBU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Apr 2022 17:01:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50050 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242422AbiDJVBT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Apr 2022 17:01:19 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26346280
        for <devicetree@vger.kernel.org>; Sun, 10 Apr 2022 13:59:06 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id bn33so17846504ljb.6
        for <devicetree@vger.kernel.org>; Sun, 10 Apr 2022 13:59:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=V6gQlFkX6arSWeceCappRrDDbouyR79OAj94g6yrqM4=;
        b=ge/T+374NYComgBadZq1vZeaTvSVqPq/NETXmdMMqlwqtdSRrVxawR7+kWg2IVZE+I
         niK3AY1mvFKCKNbOwhOUjhuDzgLbBjMbA8sDpgAgqXvWy6SgWn7InU3DawuM1bmwY5bE
         Ra+SRrZzGFSkIOc5WPV9TU7legrYgDxHqt6fgcDhcJ9Z3zp7dS8GVF0Tiu+h+VZV6nWl
         3lhx1mTu+Gap+H/gzw4rYJLBcHwjl0qSR8thcHlFRFFw9rWxN91Rd6wQYoSao3B3mHzP
         i52qEixExJyNW6Cc3/XeF2fG4FhQoY8OXdLjRiHhpRhy0G0LKkYt4bZb8Kl7s6adSf+P
         OugA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=V6gQlFkX6arSWeceCappRrDDbouyR79OAj94g6yrqM4=;
        b=nIrubtL/d3QRHdJ/E0u2z4Tra4TqD/uWmYpDfBD5kbydZzqOU58Z55JTNTsy8+9Qjs
         uOJYZ/uCA97srioR3WQ9Kjkq49CUmyvZTMyQS8lOBLjePTRn8FE4XoGBzyuBKrbevgtW
         Stqiq3w40O67c+mU7fHSmPi2BR/aOBwk3VAx9ZXZVkJdj9jnJ81/QxwQ6m3x0VLx4nYG
         QzsiqJ4zpu7xd/TeXvS5WNI6OsOIUpW1b2X88d3VsyA+24YGfX00DFXpThw6RAaTd+JL
         aHMg9KhRzdZIrWYJMDDIwnq871V08upxRpoKkeFJ79b3mML01ZqfY3LB1s/ggDGRrSJC
         LXLg==
X-Gm-Message-State: AOAM531ExuvSY21OnBagD9ZsExRlO4QPuw8ZjsWiUKkOLjCCv27eBdHs
        qqQVoWIOojDjV7on7Vh0Vq/83g==
X-Google-Smtp-Source: ABdhPJy3P422AYF7b0O9BKynXiNzjxSPMMLN4WUPGlyFiV0NIUUxdu671LH/N/iIxEz2OwGUUFu+/g==
X-Received: by 2002:a2e:bd17:0:b0:24b:4c2a:20c5 with SMTP id n23-20020a2ebd17000000b0024b4c2a20c5mr9969055ljq.422.1649624344389;
        Sun, 10 Apr 2022 13:59:04 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id t17-20020a192d51000000b0044a5a9960f9sm3114809lft.236.2022.04.10.13.59.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Apr 2022 13:59:03 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: qcom: sm8450: add fastrpc nodes
Date:   Sun, 10 Apr 2022 23:59:01 +0300
Message-Id: <20220410205901.1672089-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220410205901.1672089-1-dmitry.baryshkov@linaro.org>
References: <20220410205901.1672089-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add fastrpc device tree nodes for aDSP, cDSP and SLPI.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 119 +++++++++++++++++++++++++++
 1 file changed, 119 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 934e29b9e153..385892330017 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -887,6 +887,33 @@ IPCC_MPROC_SIGNAL_GLINK_QMP
 
 				label = "slpi";
 				qcom,remote-pid = <3>;
+
+				fastrpc {
+					compatible = "qcom,fastrpc";
+					qcom,glink-channels = "fastrpcglink-apps-dsp";
+					label = "sdsp";
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					compute-cb@1 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <1>;
+						iommus = <&apps_smmu 0x0541 0x0>;
+					};
+
+					compute-cb@2 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <2>;
+						iommus = <&apps_smmu 0x0542 0x0>;
+					};
+
+					compute-cb@3 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <3>;
+						iommus = <&apps_smmu 0x0543 0x0>;
+						/* note: shared-cb = <4> in downstream */
+					};
+				};
 			};
 		};
 
@@ -927,6 +954,32 @@ IPCC_MPROC_SIGNAL_GLINK_QMP
 
 				label = "lpass";
 				qcom,remote-pid = <2>;
+
+				fastrpc {
+					compatible = "qcom,fastrpc";
+					qcom,glink-channels = "fastrpcglink-apps-dsp";
+					label = "adsp";
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					compute-cb@3 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <3>;
+						iommus = <&apps_smmu 0x1803 0x0>;
+					};
+
+					compute-cb@4 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <4>;
+						iommus = <&apps_smmu 0x1804 0x0>;
+					};
+
+					compute-cb@5 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <5>;
+						iommus = <&apps_smmu 0x1805 0x0>;
+					};
+				};
 			};
 		};
 
@@ -967,6 +1020,72 @@ IPCC_MPROC_SIGNAL_GLINK_QMP
 
 				label = "cdsp";
 				qcom,remote-pid = <5>;
+
+				fastrpc {
+					compatible = "qcom,fastrpc";
+					qcom,glink-channels = "fastrpcglink-apps-dsp";
+					label = "cdsp";
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					compute-cb@1 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <1>;
+						iommus = <&apps_smmu 0x2161 0x0400>,
+							 <&apps_smmu 0x1021 0x1420>;
+					};
+
+					compute-cb@2 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <2>;
+						iommus = <&apps_smmu 0x2162 0x0400>,
+							 <&apps_smmu 0x1022 0x1420>;
+					};
+
+					compute-cb@3 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <3>;
+						iommus = <&apps_smmu 0x2163 0x0400>,
+							 <&apps_smmu 0x1023 0x1420>;
+					};
+
+					compute-cb@4 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <4>;
+						iommus = <&apps_smmu 0x2164 0x0400>,
+							 <&apps_smmu 0x1024 0x1420>;
+					};
+
+					compute-cb@5 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <5>;
+						iommus = <&apps_smmu 0x2165 0x0400>,
+							 <&apps_smmu 0x1025 0x1420>;
+					};
+
+					compute-cb@6 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <6>;
+						iommus = <&apps_smmu 0x2166 0x0400>,
+							 <&apps_smmu 0x1026 0x1420>;
+					};
+
+					compute-cb@7 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <7>;
+						iommus = <&apps_smmu 0x2167 0x0400>,
+							 <&apps_smmu 0x1027 0x1420>;
+					};
+
+					compute-cb@8 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <8>;
+						iommus = <&apps_smmu 0x2168 0x0400>,
+							 <&apps_smmu 0x1028 0x1420>;
+					};
+
+					/* note: secure cb9 in downstream */
+				};
 			};
 		};
 
-- 
2.35.1

