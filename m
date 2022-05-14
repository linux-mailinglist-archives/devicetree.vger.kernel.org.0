Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2AC06526F54
	for <lists+devicetree@lfdr.de>; Sat, 14 May 2022 09:15:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230328AbiENCys (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 May 2022 22:54:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230217AbiENCyl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 May 2022 22:54:41 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BB8A37E4D9
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 18:13:37 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id y19so12121345ljd.4
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 18:13:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=POq1kk+h3rPcrtH2pN+MXZtFUgmIFpbvHrXaH9miF64=;
        b=gLFkAJf8zI9Bq1DgypAOh0C3O2OfnQ5/UYssFR8KZqpaFHvoGOJarzJG4LDlOLR3qg
         7avK4i2DdSsvxyLHts1mOi0AeEHOhTMrcroeIQaVlVkk9Wz+K6nSPd008yvrxBvNWxsE
         NrMPWdE0hZd4g1jqyqucNgCwmIFcN6h0uAOi27aokRviNRonHLDMq7QxjKmgvA+laXr2
         6t7+nqXz+JNfx+iaTuAqA14E/KT8f99h1z69OXtYY/datmZRFDsSbm9yxU2FoCrOTy7X
         Ktl/rkxlZtx/YnFkOK7c3B9Mk8yqym5QFp8XpDcQhw93uD/TvSa0y0lfBM88PpDStw0p
         1rPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=POq1kk+h3rPcrtH2pN+MXZtFUgmIFpbvHrXaH9miF64=;
        b=WpRAQLr42uA68x+momlSSXKp0X3KscKT4kWPMS+L+3WA0MIWXsuc100ryUqRQu2P0P
         KDZHuF4jPlWSUSlsg4rxyoe10ubgN2yNpa13saq1LmOWcwyYUgYdnJ3m2su5M+Zf5O2I
         BcE63gEdAZkZtCBbU993Ekc/H93IXNGd/AIKhlVbxkmzhOZXpHwgnXQL7ZJt0g1T0sLm
         QoNtVha4MR2vXVcx98OiEy229hWzDGZkJkNtFvxTfFByzaFjDzYY0hIn2qsdBJeYiBNb
         tdp4SHA/FlakrlUKJJxvhdxWYgdHD9UnaNRH9E3XR6/5YFeh7dqjM7SPerfZLqc4aZ81
         2KGg==
X-Gm-Message-State: AOAM5303iclZI6/j9LGAEbSGY77cMqHu9tjxt0W5zjD9gt7w8ZNIwRlJ
        18lJ4F9XV4htr9dmbHBySeAY5oTLD4zOpA==
X-Google-Smtp-Source: ABdhPJzLTOftwnTS6vNzC9fvTTF5i3x2HX52DiHRO0WOMmWevvb7oeyQeXluxYzdL0SiehRhi6GFAw==
X-Received: by 2002:a05:6512:33a7:b0:472:481b:9d6c with SMTP id i7-20020a05651233a700b00472481b9d6cmr5086979lfg.451.1652486592863;
        Fri, 13 May 2022 17:03:12 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id r10-20020a19ac4a000000b0047255d211c3sm529231lfc.242.2022.05.13.17.03.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 May 2022 17:03:12 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 2/3] arm64: dts: qcom: sdm660: add device node for the compute PAS
Date:   Sat, 14 May 2022 03:03:09 +0300
Message-Id: <20220514000310.3070578-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220514000310.3070578-1-dmitry.baryshkov@linaro.org>
References: <20220514000310.3070578-1-dmitry.baryshkov@linaro.org>
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

Add device tree node describing CDSP device found on the SDM660 (but not
on SDM630) platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm660.dtsi | 68 ++++++++++++++++++++++++++++
 1 file changed, 68 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm660.dtsi b/arch/arm64/boot/dts/qcom/sdm660.dtsi
index 023b0ac4118c..3b70eff68807 100644
--- a/arch/arm64/boot/dts/qcom/sdm660.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm660.dtsi
@@ -9,6 +9,74 @@
 
 #include "sdm630.dtsi"
 
+/ {
+	reserved-memory {
+		/delete-node/ tzbuffer@94a00000;
+
+		cdsp_region: cdsp@94a00000 {
+			reg = <0x0 0x94a00000 0x0 0x600000>;
+			no-map;
+		};
+
+	};
+
+	smp2p-cdsp {
+		compatible = "qcom,smp2p";
+		qcom,smem = <94>, <432>;
+		interrupts = <GIC_SPI 514 IRQ_TYPE_EDGE_RISING>;
+		mboxes = <&apcs_glb 30>;
+		qcom,local-pid = <0>;
+		qcom,remote-pid = <5>;
+
+		cdsp_smp2p_out: master-kernel {
+			qcom,entry-name = "master-kernel";
+			#qcom,smem-state-cells = <1>;
+		};
+
+		cdsp_smp2p_in: slave-kernel {
+			qcom,entry-name = "slave-kernel";
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+	};
+
+	soc {
+		cdsp_pil: remoteproc@1a300000 {
+			compatible = "qcom,sdm660-cdsp-pas";
+			reg = <0x1a300000 0x4040>;
+
+			interrupts-extended =
+				<&intc GIC_SPI 518 IRQ_TYPE_EDGE_RISING>,
+				<&cdsp_smp2p_in 0 IRQ_TYPE_EDGE_RISING>,
+				<&cdsp_smp2p_in 1 IRQ_TYPE_EDGE_RISING>,
+				<&cdsp_smp2p_in 2 IRQ_TYPE_EDGE_RISING>,
+				<&cdsp_smp2p_in 3 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "wdog", "fatal", "ready",
+					  "handover", "stop-ack";
+
+			clocks = <&rpmcc RPM_SMD_XO_CLK_SRC>;
+			clock-names = "xo";
+
+			memory-region = <&cdsp_region>;
+			power-domains = <&rpmpd SDM660_VDDCX>;
+			power-domain-names = "cx";
+
+			qcom,smem-states = <&cdsp_smp2p_out 0>;
+			qcom,smem-state-names = "stop";
+
+			glink-edge {
+				interrupts = <GIC_SPI 513 IRQ_TYPE_EDGE_RISING>;
+
+				label = "turing";
+				mboxes = <&apcs_glb 29>;
+				qcom,remote-pid = <5>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+		};
+	};
+};
+
 &adreno_gpu {
 	compatible = "qcom,adreno-512.0", "qcom,adreno";
 	operating-points-v2 = <&gpu_sdm660_opp_table>;
-- 
2.35.1

