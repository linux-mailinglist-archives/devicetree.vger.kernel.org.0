Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 51DA5659A54
	for <lists+devicetree@lfdr.de>; Fri, 30 Dec 2022 17:02:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235380AbiL3QCP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Dec 2022 11:02:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235389AbiL3QBv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Dec 2022 11:01:51 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34ACDE08C
        for <devicetree@vger.kernel.org>; Fri, 30 Dec 2022 08:01:50 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id 1so32234051lfz.4
        for <devicetree@vger.kernel.org>; Fri, 30 Dec 2022 08:01:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pllbBh5k3s3WnAvY6E7FolG6ZQajmtIaJ+/Mr0bUYm0=;
        b=EmoHFYlMs9hdzhxoDYd2Z4UKQvagKJ+8aN9R3HZI4/MYN1CuIsRsqDSd/izCAZXt84
         KGG6TJDjNsX8TfQkni5Ipyd/429Mwaaipw89jnt7aSPcAa5C4P+QDwkBwSQTInaJVodv
         QKw5ng7VrOvn0nTNuDmipEw4wt8+gsWY0RWDQtBaXxyNlQRbfm1xzAkejThXfKayP+/d
         3NNWm1ggmQpwsKubMAIeqFBsyW34aTOp0/ihcLbcDoNetinBfHW+e6VwseyIhgv5JBb/
         P7H4tewnRg144w5lLx56b9EiF7TMmH5GuIkBzA9KNN5BUAE4T+JtSk9eCaOK/w/3y/33
         OqqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pllbBh5k3s3WnAvY6E7FolG6ZQajmtIaJ+/Mr0bUYm0=;
        b=jYDNcWjLptYx1is+W0cUB3qZeRApwrq7zJcBwPKF8ZVfl6TUir1lRYH0emgxZm8Bzf
         S3Vkw+irLZqVeVxJ6Idw2c5K4Kk45L0szNGXNoJ979aFDNnd3k2I1AAoZ2drQTac7DpG
         LARV6bQ4k4D2HWNOJ8rutXQkabjqJ45T3NlZfqjWwg/ZL2ETbA5waXJ1y4eWHJr5MnI2
         s+ufJeidbRPidQLksr6Q10qd5n7fZ7r3yFbCtNAHItfvZGRZxY1bxKJFOwGbYnolRHbM
         KtPa/BqBMwVk+EPpwMFTAtgKm0mmD9owqdSkO6Hty9qMct2yqeqMXqfE/cydSV+C0iXM
         zXQw==
X-Gm-Message-State: AFqh2kqezGaeOSxXNBOqfJosMUrmwkgUQ/GY3YfKnRqq1sfnhhY17/bk
        3qJMk/QCaCeS/JWbGhBqwAObuA==
X-Google-Smtp-Source: AMrXdXuUerX2c1HYYTDveeYwTVRRZfLrggq6WWcCLFBZgsKuV7YnQNaRLp7fzojNfkuqYUNkDoiKZQ==
X-Received: by 2002:a05:6512:3d94:b0:4a4:68b8:f4f4 with SMTP id k20-20020a0565123d9400b004a468b8f4f4mr11730876lfv.58.1672416109789;
        Fri, 30 Dec 2022 08:01:49 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id p1-20020ac24ec1000000b004b15bc0ff63sm3520874lfr.277.2022.12.30.08.01.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Dec 2022 08:01:49 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 7/7] arm64: dts: qcom: sm8450: align PSCI domain names with DT schema
Date:   Fri, 30 Dec 2022 17:01:03 +0100
Message-Id: <20221230160103.250996-7-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221230160103.250996-1-krzysztof.kozlowski@linaro.org>
References: <20221230160103.250996-1-krzysztof.kozlowski@linaro.org>
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

Bindings expect power domains to follow generic naming pattern:

  sm8450-qrd.dtb: psci: 'cpu-cluster0', 'cpu0', 'cpu1', 'cpu2', 'cpu3', 'cpu4', 'cpu5', 'cpu6',
    'cpu7' do not match any of the regexes: '^power-domain-', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 33db6b6c4123..5530bdee6f25 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -311,55 +311,55 @@ psci {
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
 			domain-idle-states = <&CLUSTER_SLEEP_0>, <&CLUSTER_SLEEP_1>;
 		};
-- 
2.34.1

