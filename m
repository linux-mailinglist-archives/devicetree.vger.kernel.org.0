Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC61B6976CD
	for <lists+devicetree@lfdr.de>; Wed, 15 Feb 2023 07:57:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233694AbjBOG5O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Feb 2023 01:57:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233605AbjBOG4e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Feb 2023 01:56:34 -0500
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9ED9D36680
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 22:56:06 -0800 (PST)
Received: by mail-pj1-x102e.google.com with SMTP id z14-20020a17090abd8e00b00233bb9d6bdcso1036571pjr.4
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 22:56:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MSprQRzUAPAcRKdXmOH1+IXrj92bjRdjsdi9aS/W/NY=;
        b=f4YNHiUrKOy7cdBSnBD5UTsHc+gB1AKul1UNMKktndUWpQlt9o9VsEH4rewrx2qOe5
         wPJv6QbUomhvfnvWCbZIhQXqSo50f7oLYnFIgzD4IKJ8ltSd8bgSEyG2ugDqs+lYnh6L
         4Bc8b+A0Kg/Adwo4MEedBUHDo0v7TAODMKgx5/QqVpuxUPGqs3Sm7hjD1kpr3L0EYZEl
         frRDrc25T2YF6V8k5KzG5QoFLwyTlGPXZRhv0bZf5O75BrHU3qVSj1DuqhAmlyJ9/K11
         MYZAnyQIW52CV/WNo2AlbbOeUQ2YBO17iYvzpn05ndEzBAdEmpvm7fw9G5UX5f0wxnfq
         o2Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MSprQRzUAPAcRKdXmOH1+IXrj92bjRdjsdi9aS/W/NY=;
        b=kg14r2rWotVy5ccNGV9zQ7CBfzP34yVub6rceQEAOHBswc/uRvPJqz8+IG9ebHdzYH
         Jcuu6GA0WO4DSQJLlYm/GDmhlOPXXnPezpMfhI47b2i2XChG6dKVDxYW0p8NerDWaCk3
         38hc1pgiz7prVflMT/VewjyM1E28pWpqMSrjCP9E49sQihKXSSgs27byGz/IJ8yhusSq
         O0LQoeuNiceRNBifWVo5hh1yb+gLcv2UeGV4dfO1afT0YGQByMVg5aJzCHmC0ob3XbC/
         LRpl4Gr2VbtB4PkGk0oOQ6vs1/nt0EaP9Nu0gUAz31LfEXHpr4Z+WY732gQ7ecO+Q58i
         XOwQ==
X-Gm-Message-State: AO0yUKXLHVBvgBVoUn0gNCs+MIF3h/Q6ZueUvyYfGlW3ZOQeWcHPEH+P
        S3dyzxMlYYhuOzI6slxir0aW
X-Google-Smtp-Source: AK7set/faHchsvkUvLEBdmmSzOm1COAtSWydGfthpCbP+3HYIe1oSrQxX4x9iVdcpjLNzEUePx2log==
X-Received: by 2002:a17:902:d4cc:b0:199:16c6:8a24 with SMTP id o12-20020a170902d4cc00b0019916c68a24mr1590256plg.61.1676444166085;
        Tue, 14 Feb 2023 22:56:06 -0800 (PST)
Received: from localhost.localdomain ([117.217.179.87])
        by smtp.gmail.com with ESMTPSA id d23-20020a170902b71700b001933b4b1a49sm10276870pls.183.2023.02.14.22.56.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Feb 2023 22:56:05 -0800 (PST)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     andersson@kernel.org
Cc:     konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        viresh.kumar@linaro.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 09/12] arm64: dts: qcom: sm8350: Supply clock from cpufreq node to CPUs
Date:   Wed, 15 Feb 2023 12:25:20 +0530
Message-Id: <20230215065520.5535-10-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230215065520.5535-1-manivannan.sadhasivam@linaro.org>
References: <20230215065520.5535-1-manivannan.sadhasivam@linaro.org>
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

Qualcomm platforms making use of CPUFreq HW Engine (EPSS/OSM) supply clocks
to the CPU cores. But this relationship is not represented in DTS so far.

So let's make cpufreq node as the clock provider and CPU nodes as the
consumers. The clock index for each CPU node is based on the frequency
domain index.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index 0a422637b61f..1b423c42ec0d 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -48,6 +48,7 @@ CPU0: cpu@0 {
 			device_type = "cpu";
 			compatible = "qcom,kryo685";
 			reg = <0x0 0x0>;
+			clocks = <&cpufreq_hw 0>;
 			enable-method = "psci";
 			next-level-cache = <&L2_0>;
 			qcom,freq-domain = <&cpufreq_hw 0>;
@@ -69,6 +70,7 @@ CPU1: cpu@100 {
 			device_type = "cpu";
 			compatible = "qcom,kryo685";
 			reg = <0x0 0x100>;
+			clocks = <&cpufreq_hw 0>;
 			enable-method = "psci";
 			next-level-cache = <&L2_100>;
 			qcom,freq-domain = <&cpufreq_hw 0>;
@@ -86,6 +88,7 @@ CPU2: cpu@200 {
 			device_type = "cpu";
 			compatible = "qcom,kryo685";
 			reg = <0x0 0x200>;
+			clocks = <&cpufreq_hw 0>;
 			enable-method = "psci";
 			next-level-cache = <&L2_200>;
 			qcom,freq-domain = <&cpufreq_hw 0>;
@@ -103,6 +106,7 @@ CPU3: cpu@300 {
 			device_type = "cpu";
 			compatible = "qcom,kryo685";
 			reg = <0x0 0x300>;
+			clocks = <&cpufreq_hw 0>;
 			enable-method = "psci";
 			next-level-cache = <&L2_300>;
 			qcom,freq-domain = <&cpufreq_hw 0>;
@@ -120,6 +124,7 @@ CPU4: cpu@400 {
 			device_type = "cpu";
 			compatible = "qcom,kryo685";
 			reg = <0x0 0x400>;
+			clocks = <&cpufreq_hw 1>;
 			enable-method = "psci";
 			next-level-cache = <&L2_400>;
 			qcom,freq-domain = <&cpufreq_hw 1>;
@@ -137,6 +142,7 @@ CPU5: cpu@500 {
 			device_type = "cpu";
 			compatible = "qcom,kryo685";
 			reg = <0x0 0x500>;
+			clocks = <&cpufreq_hw 1>;
 			enable-method = "psci";
 			next-level-cache = <&L2_500>;
 			qcom,freq-domain = <&cpufreq_hw 1>;
@@ -155,6 +161,7 @@ CPU6: cpu@600 {
 			device_type = "cpu";
 			compatible = "qcom,kryo685";
 			reg = <0x0 0x600>;
+			clocks = <&cpufreq_hw 1>;
 			enable-method = "psci";
 			next-level-cache = <&L2_600>;
 			qcom,freq-domain = <&cpufreq_hw 1>;
@@ -172,6 +179,7 @@ CPU7: cpu@700 {
 			device_type = "cpu";
 			compatible = "qcom,kryo685";
 			reg = <0x0 0x700>;
+			clocks = <&cpufreq_hw 2>;
 			enable-method = "psci";
 			next-level-cache = <&L2_700>;
 			qcom,freq-domain = <&cpufreq_hw 2>;
@@ -2283,6 +2291,7 @@ cpufreq_hw: cpufreq@18591000 {
 			clock-names = "xo", "alternate";
 
 			#freq-domain-cells = <1>;
+			#clock-cells = <1>;
 		};
 
 		ufs_mem_hc: ufshc@1d84000 {
-- 
2.25.1

