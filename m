Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5A1B231DC2B
	for <lists+devicetree@lfdr.de>; Wed, 17 Feb 2021 16:32:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233137AbhBQP3z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Feb 2021 10:29:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233714AbhBQP0C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Feb 2021 10:26:02 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46445C061786
        for <devicetree@vger.kernel.org>; Wed, 17 Feb 2021 07:25:07 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id r21so17774178wrr.9
        for <devicetree@vger.kernel.org>; Wed, 17 Feb 2021 07:25:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=EhSIfFxNbUkZwc2hGN0RelpldEmFwxC7U4e0q15YQ4M=;
        b=XMZLYqCMW/tpRvo+6nEFJbYVFmBYg+sCzBkwKXQ9yO882N34MqeZUd2EADGhuO0D/v
         eNe5wzUUMIz8CmBIUrh+BA48m1gVypElRGzD4XOudYwkxs6ItXOMwWe7mdruzHTAiapX
         euDEo1Cxfqg8nuath/kSVErq6IeOClptU61r/1zr2pI/eG3nCAYqRd2V64v6u5K8EL/w
         IWlCHsaR1dHzkhJrGSkOaTPRHtlhDAMyWl+V41PgPcq4ArS9BknxFFMxwTJZZWNgG1+v
         WyD1MQu1tkS6tH1aJNC3Ysr9AWz3m9Vm8glTkUvJn5HCR9NhrTHPFqm4dORabIDrxiXi
         rxmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=EhSIfFxNbUkZwc2hGN0RelpldEmFwxC7U4e0q15YQ4M=;
        b=dwAFAZFar91A61UeJLZWo52O/vZKlvKitlRXx7lnui2Q1/EZHgq+c/gkFZ9H3yvJYX
         5m9PfVEyeBFCWxJ/+0LLLc75R9ekEi5ySXqbZQ/uhLYJ3hXzzPAuSTq7dFb5q1BwxNlZ
         qaR3xFh7WhvGCsPMgKgDsNF/eFrKyi7J9fPQJ9C9gI/yA0T7hhzFNGjPTLcw4S6eCpPn
         toI40HB3FjmdqUI/0Hbfnf4ohHx5+xyUI8u/iKx/Aqh4mD8rEA+KFEyvEf0xGNkvsLD/
         2ATEMrfO6kX8MvAJvBFvBko3scNTzsbRu3qN3KjFwJwKDtv3aqRfVU1ufxt49i6Xzh6s
         8L1Q==
X-Gm-Message-State: AOAM5321ytrKvdw3Zomde/YgQQEz8gnI4Nnq5NxC3PrmOtMVB6mPPjY5
        N/E0RtAvy4X4Ic6uH3YKznGeMw==
X-Google-Smtp-Source: ABdhPJy+WXC8pTwt5Gvp4muF2N8aWd2LpQFL+bqeQOEkLNH74nkOnwalsF00SM3YfvW8HzfElc2W9A==
X-Received: by 2002:a05:6000:1047:: with SMTP id c7mr29587233wrx.332.1613575505843;
        Wed, 17 Feb 2021 07:25:05 -0800 (PST)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id z5sm4511910wrn.8.2021.02.17.07.25.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Feb 2021 07:25:05 -0800 (PST)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, stanimir.varbanov@linaro.org,
        agross@kernel.org, bjorn.andersson@linaro.org
Cc:     bryan.odonoghue@linaro.org, jonathan@marek.ca,
        dikshita@qti.qualcomm.com
Subject: [PATCH 2/2] arm64: dts: qcom: sm8250: Add venus DT node
Date:   Wed, 17 Feb 2021 15:26:21 +0000
Message-Id: <20210217152621.1714814-3-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210217152621.1714814-1-bryan.odonoghue@linaro.org>
References: <20210217152621.1714814-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add DT entries for the sm8250 venus encoder/decoder.

Co-developed-by: Jonathan Marek <jonathan@marek.ca>
Signed-off-by: Jonathan Marek <jonathan@marek.ca>
Co-developed-by: Dikshita Agarwal <dikshita@qti.qualcomm.com>
Signed-off-by: Dikshita Agarwal <dikshita@qti.qualcomm.com>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 59 ++++++++++++++++++++++++++++
 1 file changed, 59 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 23fb9a0e32b9..cf602e8c40a7 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -2323,6 +2323,65 @@ usb_2_dwc3: dwc3@a800000 {
 			};
 		};
 
+		venus: video-codec@aa00000 {
+			compatible = "qcom,sm8250-venus";
+			reg = <0 0x0aa00000 0 0x100000>;
+			interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
+			power-domains = <&videocc MVS0C_GDSC>,
+					<&videocc MVS0_GDSC>,
+					<&rpmhpd SM8250_MX>;
+			power-domain-names = "venus", "vcodec0", "mx";
+			operating-points-v2 = <&venus_opp_table>;
+
+			clocks = <&gcc GCC_VIDEO_AXI0_CLK>,
+				 <&videocc VIDEO_CC_MVS0C_CLK>,
+				 <&videocc VIDEO_CC_MVS0_CLK>;
+			clock-names = "iface", "core", "vcodec0_core";
+
+			interconnects = <&gem_noc MASTER_AMPSS_M0 &config_noc SLAVE_VENUS_CFG>,
+					<&mmss_noc MASTER_VIDEO_P0 &mc_virt SLAVE_EBI_CH0>;
+			interconnect-names = "cpu-cfg", "video-mem";
+
+			iommus = <&apps_smmu 0x2100 0x0400>;
+			memory-region = <&video_mem>;
+
+			resets = <&gcc GCC_VIDEO_AXI0_CLK_ARES>,
+				 <&videocc VIDEO_CC_MVS0C_CLK_ARES>;
+			reset-names = "bus", "core";
+
+			video-decoder {
+				compatible = "venus-decoder";
+			};
+
+			video-encoder {
+				compatible = "venus-encoder";
+			};
+
+			venus_opp_table: venus-opp-table {
+				compatible = "operating-points-v2";
+
+				opp-720000000 {
+					opp-hz = /bits/ 64 <720000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+				};
+
+				opp-1014000000 {
+					opp-hz = /bits/ 64 <1014000000>;
+					required-opps = <&rpmhpd_opp_svs>;
+				};
+
+				opp-1098000000 {
+					opp-hz = /bits/ 64 <1098000000>;
+					required-opps = <&rpmhpd_opp_svs_l1>;
+				};
+
+				opp-1332000000 {
+					opp-hz = /bits/ 64 <1332000000>;
+					required-opps = <&rpmhpd_opp_nom>;
+				};
+			};
+		};
+
 		videocc: clock-controller@abf0000 {
 			compatible = "qcom,sm8250-videocc";
 			reg = <0 0x0abf0000 0 0x10000>;
-- 
2.29.2

