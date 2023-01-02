Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3422365AE70
	for <lists+devicetree@lfdr.de>; Mon,  2 Jan 2023 09:55:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232040AbjABIzF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Jan 2023 03:55:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232030AbjABIzB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Jan 2023 03:55:01 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 030B826FE
        for <devicetree@vger.kernel.org>; Mon,  2 Jan 2023 00:54:59 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id y25so40771651lfa.9
        for <devicetree@vger.kernel.org>; Mon, 02 Jan 2023 00:54:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pcU2EfIjdjE6j18lS367gtq2qcCZNTQKVHBpjNDjmW8=;
        b=EJ00pjf4cZ4lwJJDYstvELcw6ogsEHhCIZE/keG09GmqAyrAh2xdTAbqnfec5xG5cs
         +KWQ6AzNtPWu4BQiT/lPAbAytU0Y7hzffnXLbyGy3X0UF/K1UGSJZfiv1r2MHt7KLK5z
         Qm1Ys0ieZC1frHn7ZKt9s5sto+RSB8cF4zinfgJahbP0nQaUbJi8h+cKspfCRl8cVCgi
         l8Qd+WD0ikQ8QJS9kIio5rFBJemfirlwE73JjHOpcHU+ru8wPpIwvjH8T9X/8eFLbm2V
         zJiSP6/WOH85OTXFUnkRttONVk7VSmQ/Fjac/sCYpjRrhsaQl+hI4G06ZEdUw8OX8PJi
         XmVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pcU2EfIjdjE6j18lS367gtq2qcCZNTQKVHBpjNDjmW8=;
        b=CneZq3rbYTGeVELiB4moR1pz9ntt5FfKjb8x4cnmSfJL+JunAPxFpMAUlsns9vZeJv
         cdKZ8lCa/xkknA4ZZsIJm3z69F+p1oSFKjsbWJjrE5qstOZryF1JfyDj5Qby4GUSOn6q
         czCmwPu3AmcavEEvy6QWrVJTMEbMcmhVUpFXjiFwiYL2UHziJeloWvGank3fhCED45l1
         2F9oPb4vLS8XbPtZtqNhemM8YvA2OTgjM44ud6PjqSQS+2wiS5W1DZSmQgHz1OHPCCPD
         3GNhNM08zZO/4hY3v6zsuG394V7a4DsGKC88q6sy0+ZZZ2Ch3G8uqbW8tMVfxcaYt7rR
         s9MQ==
X-Gm-Message-State: AFqh2kpyNmpl0kioRVM0RgxJ135P9xvOJJuYw8LbKX/zk9Ig+9opTYZ/
        9ll5fOJj6AEw3OLV88b0O3pjCg==
X-Google-Smtp-Source: AMrXdXvCA1cV8X9N+d9cKvRsDbpACEYM7XQRBDefyd0W0U6dMM5oDUXFDvaY7eTjw0MiggKdJfhcvA==
X-Received: by 2002:a05:6512:6cb:b0:4a4:68b7:e71a with SMTP id u11-20020a05651206cb00b004a468b7e71amr12495114lff.4.1672649698327;
        Mon, 02 Jan 2023 00:54:58 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id q8-20020ac25108000000b004aac23e0dd6sm4408815lfb.29.2023.01.02.00.54.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Jan 2023 00:54:57 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 5/6] arm64: dts: qcom: sm8350: align PSCI domain names with DT schema
Date:   Mon,  2 Jan 2023 09:54:51 +0100
Message-Id: <20230102085452.10753-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230102085452.10753-1-krzysztof.kozlowski@linaro.org>
References: <20230102085452.10753-1-krzysztof.kozlowski@linaro.org>
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

Bindings expect power domains to follow generic naming pattern:

  sm8350-hdk.dtb: psci: 'cpu-cluster0', 'cpu0', 'cpu1', 'cpu2', 'cpu3', 'cpu4', 'cpu5', 'cpu6',
    'cpu7' do not match any of the regexes: '^power-domain-', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

---

Changes since v1:
1. Add Rb tag.
---
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index 0689af6a8353..2ad65f6c41d1 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -288,55 +288,55 @@ psci {
 		compatible = "arm,psci-1.0";
 		method = "smc";
 
-		CPU_PD0: cpu0 {
+		CPU_PD0: power-domain-cpu0 {
 			#power-domain-cells = <0>;
 			power-domains = <&CLUSTER_PD>;
 			domain-idle-states = <&LITTLE_CPU_SLEEP_0>;
 		};
 
-		CPU_PD1: cpu1 {
+		CPU_PD1: power-domain-cpu1 {
 			#power-domain-cells = <0>;
 			power-domains = <&CLUSTER_PD>;
 			domain-idle-states = <&LITTLE_CPU_SLEEP_0>;
 		};
 
-		CPU_PD2: cpu2 {
+		CPU_PD2: power-domain-cpu2 {
 			#power-domain-cells = <0>;
 			power-domains = <&CLUSTER_PD>;
 			domain-idle-states = <&LITTLE_CPU_SLEEP_0>;
 		};
 
-		CPU_PD3: cpu3 {
+		CPU_PD3: power-domain-cpu3 {
 			#power-domain-cells = <0>;
 			power-domains = <&CLUSTER_PD>;
 			domain-idle-states = <&LITTLE_CPU_SLEEP_0>;
 		};
 
-		CPU_PD4: cpu4 {
+		CPU_PD4: power-domain-cpu4 {
 			#power-domain-cells = <0>;
 			power-domains = <&CLUSTER_PD>;
 			domain-idle-states = <&BIG_CPU_SLEEP_0>;
 		};
 
-		CPU_PD5: cpu5 {
+		CPU_PD5: power-domain-cpu5 {
 			#power-domain-cells = <0>;
 			power-domains = <&CLUSTER_PD>;
 			domain-idle-states = <&BIG_CPU_SLEEP_0>;
 		};
 
-		CPU_PD6: cpu6 {
+		CPU_PD6: power-domain-cpu6 {
 			#power-domain-cells = <0>;
 			power-domains = <&CLUSTER_PD>;
 			domain-idle-states = <&BIG_CPU_SLEEP_0>;
 		};
 
-		CPU_PD7: cpu7 {
+		CPU_PD7: power-domain-cpu7 {
 			#power-domain-cells = <0>;
 			power-domains = <&CLUSTER_PD>;
 			domain-idle-states = <&BIG_CPU_SLEEP_0>;
 		};
 
-		CLUSTER_PD: cpu-cluster0 {
+		CLUSTER_PD: power-domain-cpu-cluster0 {
 			#power-domain-cells = <0>;
 			domain-idle-states = <&CLUSTER_SLEEP_0>;
 		};
-- 
2.34.1

