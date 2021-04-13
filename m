Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A1EB335E48F
	for <lists+devicetree@lfdr.de>; Tue, 13 Apr 2021 19:06:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347031AbhDMRGT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Apr 2021 13:06:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347026AbhDMRGS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Apr 2021 13:06:18 -0400
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com [IPv6:2607:f8b0:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 497DBC061574
        for <devicetree@vger.kernel.org>; Tue, 13 Apr 2021 10:05:58 -0700 (PDT)
Received: by mail-il1-x129.google.com with SMTP id b17so14691553ilh.6
        for <devicetree@vger.kernel.org>; Tue, 13 Apr 2021 10:05:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TjNUJJY0+cXHEeBtx4Z8uVdqiWLKg7YY294aspUGBVs=;
        b=iXhBFwCdcwPpzgfV6UuzfvuBQQk8jFU+6AcMoJFwvBJFQ+GeC8t/GyiIyB2xO2XskU
         LiWKjpCEqccZ4Y7ayUxpHqGox1pHTjTLLXsYUdk12bpGTGzoRh/rpopt9GBXZLMv3vZp
         gxjxdiJ4iNaZTV4X73QwJJcW/kFVGhOBruiIGCdczCfXJ3/oykQeGgzT945HUvyUMbMP
         jUdr3NLhjrA53L4C49yZvoPspWPWohc1dsx4mozWQ0yJEOYhxwh8UORezkYSHwX2RqHs
         rlOMOCPyZjSjDkNzZnaHwu2Vxyj1AdTMHRBnEZ6VCOoXmYPP5j+XpkvfZxjA24WdJsh6
         IXag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TjNUJJY0+cXHEeBtx4Z8uVdqiWLKg7YY294aspUGBVs=;
        b=bAhRkHkdrmJzg0nws4RlG6QYNjveHgQ7aPKnLP2FLcKby0IiUt44DTjyozRNs9rvDg
         xYHU5y7B2tQTJMsHUGIWJ/KVoJ8ed9lSOq+Nz767YiARFOGU0Cm26mvYPrJT9jOhmUr3
         AZIoWnIQroaZaEWpp1kwlq4NTHMxyw3yw2lTtUQjlNCnhrrBM1K9Pvgfv/t6KiyxOagB
         9RqAljcnO7rCUxvcEHcy5MuwxGOxmG5mPSuqFQlhHI8HB8a8B6Pe0UT+IMJ4oGZhs+sq
         yVVArpPfhHERc6rHs33rczQ83soNeaO53DjobozBUj+GrzHaLcQ90h5yMdng9/oprUqc
         gVQg==
X-Gm-Message-State: AOAM530Exth+vditGqbJYgovzGQFrCKkfb8PIWC7UUquyJjSoTsQMLGM
        mZ+t1frT+NUUbzm1+NrzLAX9Xw==
X-Google-Smtp-Source: ABdhPJwEjetQdpRZNpSXCE4xPP6gN0xaLRsFVGsKqofG5pnvf7Ik6DFgfuf8ZnA8rulm4+QeGI0lBA==
X-Received: by 2002:a05:6e02:168e:: with SMTP id f14mr8100897ila.292.1618333557805;
        Tue, 13 Apr 2021 10:05:57 -0700 (PDT)
Received: from presto.localdomain (c-73-185-129-58.hsd1.mn.comcast.net. [73.185.129.58])
        by smtp.gmail.com with ESMTPSA id 23sm7495842iog.45.2021.04.13.10.05.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 10:05:57 -0700 (PDT)
From:   Alex Elder <elder@linaro.org>
To:     bjorn.andersson@linaro.org, agross@kernel.org
Cc:     robh+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH net-next 1/2] arm64: dts: qcom: sm8350: add IPA information
Date:   Tue, 13 Apr 2021 12:05:52 -0500
Message-Id: <20210413170553.1778792-2-elder@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210413170553.1778792-1-elder@linaro.org>
References: <20210413170553.1778792-1-elder@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add IPA-related nodes and definitions to "sm8350.dtsi", which uses
IPA v4.9.

Signed-off-by: Alex Elder <elder@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 51 ++++++++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index ed0b51bc03ea7..2fc23f3d2c75c 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -11,6 +11,7 @@
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
 #include <dt-bindings/thermal/thermal.h>
+#include <dt-bindings/interconnect/qcom,sm8350.h>
 
 / {
 	interrupt-parent = <&intc>;
@@ -391,6 +392,17 @@ smp2p_modem_in: slave-kernel {
 			interrupt-controller;
 			#interrupt-cells = <2>;
 		};
+
+		ipa_smp2p_out: ipa-ap-to-modem {
+			qcom,entry-name = "ipa";
+			#qcom,smem-state-cells = <1>;
+		};
+
+		ipa_smp2p_in: ipa-modem-to-ap {
+			qcom,entry-name = "ipa";
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
 	};
 
 	smp2p-slpi {
@@ -629,6 +641,45 @@ compute_noc: interconnect@a0c0000{
 			qcom,bcm-voters = <&apps_bcm_voter>;
 		};
 
+		ipa: ipa@1e40000 {
+			compatible = "qcom,sm8350-ipa";
+
+			iommus = <&apps_smmu 0x5c0 0x0>,
+				 <&apps_smmu 0x5c2 0x0>;
+			reg = <0 0x1e40000 0 0x8000>,
+			      <0 0x1e50000 0 0x4b20>,
+			      <0 0x1e04000 0 0x23000>;
+			reg-names = "ipa-reg",
+				    "ipa-shared",
+				    "gsi";
+
+			interrupts-extended = <&intc GIC_SPI 655 IRQ_TYPE_EDGE_RISING>,
+					      <&intc GIC_SPI 432 IRQ_TYPE_LEVEL_HIGH>,
+					      <&ipa_smp2p_in 0 IRQ_TYPE_EDGE_RISING>,
+					      <&ipa_smp2p_in 1 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "ipa",
+					  "gsi",
+					  "ipa-clock-query",
+					  "ipa-setup-ready";
+
+			clocks = <&rpmhcc RPMH_IPA_CLK>;
+			clock-names = "core";
+
+			interconnects = <&aggre2_noc MASTER_IPA &gem_noc SLAVE_LLCC>,
+					<&mc_virt MASTER_LLCC &mc_virt SLAVE_EBI1>,
+					<&gem_noc MASTER_APPSS_PROC &config_noc SLAVE_IPA_CFG>;
+			interconnect-names = "ipa_to_llcc",
+					     "llcc_to_ebi1",
+					     "appss_to_ipa";
+
+			qcom,smem-states = <&ipa_smp2p_out 0>,
+					   <&ipa_smp2p_out 1>;
+			qcom,smem-state-names = "ipa-clock-enabled-valid",
+						"ipa-clock-enabled";
+
+			status = "disabled";
+		};
+
 		tcsr_mutex: hwlock@1f40000 {
 			compatible = "qcom,tcsr-mutex";
 			reg = <0x0 0x01f40000 0x0 0x40000>;
-- 
2.27.0

