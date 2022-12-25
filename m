Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A514F655CFB
	for <lists+devicetree@lfdr.de>; Sun, 25 Dec 2022 12:58:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231164AbiLYL6w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 25 Dec 2022 06:58:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231133AbiLYL6v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 25 Dec 2022 06:58:51 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47EA22AE8
        for <devicetree@vger.kernel.org>; Sun, 25 Dec 2022 03:58:50 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id f34so12859777lfv.10
        for <devicetree@vger.kernel.org>; Sun, 25 Dec 2022 03:58:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2an1bgCCtYcqIGsotfvE1Sv5rmH79gSLi6R/WkJuKIg=;
        b=gvHSX3ucvanfV4Kp0KtGHb8KWQFxn/4MyXE5fe3Rgxiz8BzP7U/oitC3Zrki89zu10
         i7RqLSdeM64YqR8yazPsTp6Gbzfzj4zmbHRvw5ftJ3CGOKSrsosc+c1VTTzVhgInk3ab
         NN1AXAQCAk/oixxDEjI3at7NSKNFCUCl7ahiA1xTlCIxO1f5PihFQ9jmiDHFgOQWTL+C
         B4GmhRGKYzo9G8vLv71Za1RCMX0bl+i9b41dpZTbMqM5cCs/OzpOwpJLAOvN18TJ/M6N
         BrQZj9etorVVF01NELwMZXrnKCPD0Dv0PjCeUsJl0WiY6vb+AzHzL6RIa88IDhfMono8
         6+5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2an1bgCCtYcqIGsotfvE1Sv5rmH79gSLi6R/WkJuKIg=;
        b=3eO9YEnQce5XMRAdJSh6tRigR2lAEcyrXGT0wSgjjjZwCSGEX52QZ5VLco8rBp1ELa
         sUjfbunHSip+OZqVbIrmSRL+M9KEX2bU5SJw8OIvA8mC42ALVyVZjXpzwpD/5/r6stPZ
         f1qB7jxileRJTyqqICQvUOnZxRgNw+VMajuLVpiOTNY+9dOBaUQZrrIW+j54/PljnsMM
         3KkIM5+35ul0uCD9pJpOI+LC5yXTaTPMnsRjWNPcJ9KY1iOtGj3L048gdq9pN9JzN6Fp
         FUsPV6k1KVVaELMj1maYOp4GlMghOGbMoROaEU+xEpaU4SQwk+uchmYaXK7rvE9eeZLu
         OBJA==
X-Gm-Message-State: AFqh2koiW3i0vn1z2ixEF+bDhBJofKm28RRM9m1gbblBRLphX6jpc2PV
        MNTCWwXfLX/xpmyAtKyA1fwULg==
X-Google-Smtp-Source: AMrXdXtqk3GW7WeNQEZvOZ2gvsyKN2SV9KQ5bceewmw1vESVqYOWDb2B4MclzNv2BVKj94V1fjGmBg==
X-Received: by 2002:ac2:5327:0:b0:4b6:e64c:aec1 with SMTP id f7-20020ac25327000000b004b6e64caec1mr3757278lfh.53.1671969528647;
        Sun, 25 Dec 2022 03:58:48 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id c1-20020ac25301000000b004b5901b8011sm1318141lfh.105.2022.12.25.03.58.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Dec 2022 03:58:48 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/4] arm64: dts: qcom: align OPP table node name with DT schema
Date:   Sun, 25 Dec 2022 12:58:42 +0100
Message-Id: <20221225115844.55126-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221225115844.55126-1-krzysztof.kozlowski@linaro.org>
References: <20221225115844.55126-1-krzysztof.kozlowski@linaro.org>
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

Bindings expect OPP tables to start with "opp-table".

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996-v3.0.dtsi | 2 +-
 arch/arm64/boot/dts/qcom/sa8540p.dtsi      | 4 ++--
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi     | 6 +++---
 arch/arm64/boot/dts/qcom/sdm845.dtsi       | 2 +-
 4 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996-v3.0.dtsi b/arch/arm64/boot/dts/qcom/msm8996-v3.0.dtsi
index 5728583af41e..929bdcd45d02 100644
--- a/arch/arm64/boot/dts/qcom/msm8996-v3.0.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996-v3.0.dtsi
@@ -19,7 +19,7 @@ / {
   * features get enabled upstream.
   */
 
-gpu_opp_table_3_0: gpu-opp-table-30 {
+gpu_opp_table_3_0: opp-table-gpu30 {
 	compatible = "operating-points-v2";
 
 	opp-624000000 {
diff --git a/arch/arm64/boot/dts/qcom/sa8540p.dtsi b/arch/arm64/boot/dts/qcom/sa8540p.dtsi
index a88452c20d05..4a990fda8fc3 100644
--- a/arch/arm64/boot/dts/qcom/sa8540p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8540p.dtsi
@@ -10,7 +10,7 @@
 /delete-node/ &cpu4_opp_table;
 
 / {
-	cpu0_opp_table: cpu0-opp-table {
+	cpu0_opp_table: opp-table-cpu0 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
@@ -92,7 +92,7 @@ opp-2246400000 {
 		};
 	};
 
-	cpu4_opp_table: cpu4-opp-table {
+	cpu4_opp_table: opp-table-cpu4 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index 109c9d2b684d..89004cb657e0 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -33,7 +33,7 @@ sleep_clk: sleep-clk {
 		};
 	};
 
-	cpu0_opp_table: cpu0-opp-table {
+	cpu0_opp_table: opp-table-cpu0 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
@@ -123,7 +123,7 @@ opp-2438400000 {
 		};
 	};
 
-	cpu4_opp_table: cpu4-opp-table {
+	cpu4_opp_table: opp-table-cpu4 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
@@ -591,7 +591,7 @@ CLUSTER_PD: cpu-cluster0 {
 		};
 	};
 
-	qup_opp_table_100mhz: qup-100mhz-opp-table {
+	qup_opp_table_100mhz: opp-table-qup100mhz {
 		compatible = "operating-points-v2";
 
 		opp-75000000 {
diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 65032b94b46d..ba48adc01170 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -4619,7 +4619,7 @@ port@1 {
 					};
 				};
 
-				dp_opp_table: dp-opp-table {
+				dp_opp_table: opp-table {
 					compatible = "operating-points-v2";
 
 					opp-162000000 {
-- 
2.34.1

