Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 60BAE5E8981
	for <lists+devicetree@lfdr.de>; Sat, 24 Sep 2022 10:08:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233662AbiIXIFf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Sep 2022 04:05:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233628AbiIXIFZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Sep 2022 04:05:25 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9ACEE11DFC5
        for <devicetree@vger.kernel.org>; Sat, 24 Sep 2022 01:05:16 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id a2so3527519lfb.6
        for <devicetree@vger.kernel.org>; Sat, 24 Sep 2022 01:05:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=2SQmi2lgJlQQmepGaN3TdkXlKQrqpQ5shsgKmrI88Zw=;
        b=NtpudLGRDnzyPMtOFsTv4CpJvpK4iNb4FDcaotlQ7UN24Dfdg5f1qu02+XANNODwe0
         hHFFu7qKTO+KLRsn/NQsPu3Pci+HGJIXf5wCL9DNVG000yTpI/4fNwIXbMqH2N95F9Ag
         2B2NWq+2hpU+azqkE+xog1QW2c6OHnF5oI+dTL3sJrkEZezCprK/Zi5boU+rudTrfzXy
         T25OyrRnrb1l4ce70Psa5qRw8SUZbMW6hWUXGSIv9anxxMM+20ih41ywDiD88QhtC17p
         XYSkj0/MzozoPI+skokVkpoY5hweLr8GXt9I6D2azjivSV0j1SHomK2X+zB7n0jUCR+p
         +j5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=2SQmi2lgJlQQmepGaN3TdkXlKQrqpQ5shsgKmrI88Zw=;
        b=gjvrz4lZTSUVV1rtG2X52esql7NKMedFmb7M23+6xRZIDRzeuE/vRusGf0th4tKpJp
         QukM23WCUCDt/MTWHR2vCjJ1SVQnMvKxA6kjbiGfh1TF34pSZKyK+HiP81VoOIdrBiy+
         pwmPsNwBf1lFjthe4utoQuRHH7WG2/8wt4gioXZyoXm7387gjI+57jn9JWvtmKqVtMZo
         LlPligHHfRa4ZkYJ9fwzCHA83AAQSSifpBA9aLuE5alRDf/x9zdd8ajf0oWm2GW5kii7
         lsgkkDDE2awhSXWKheaqnYTRdssg/xlACwuU/ufES/7vLpfXzBPQeCPkNpu13nH+raaI
         9Vlw==
X-Gm-Message-State: ACrzQf1LhI6eXJsRwOXNYwzC5NOiPLoZEiOxUcVP8rUe2+CifnkmRT9o
        jtwDnIMtX7ifeniKgHQ/LFVPlQ==
X-Google-Smtp-Source: AMsMyM6ZA66X/TF+zcgrWpyJ7uQ9V5Ok1vcOS7zx0HebEDIz65e+UpM/H6cVFHRHi/tjEEjmsmwAkg==
X-Received: by 2002:a05:6512:c1c:b0:499:acb9:5788 with SMTP id z28-20020a0565120c1c00b00499acb95788mr4478702lfu.347.1664006714973;
        Sat, 24 Sep 2022 01:05:14 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id y2-20020a2e5442000000b0026c41574790sm1696668ljd.30.2022.09.24.01.05.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Sep 2022 01:05:14 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sricharan R <sricharan@codeaurora.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Shawn Guo <shawn.guo@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        krishna Lanka <quic_vamslank@quicinc.com>,
        Sivaprakash Murugesan <sivaprak@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 06/32] ARM: dts: qcom: msm8974: align TLMM pin configuration with DT schema
Date:   Sat, 24 Sep 2022 10:04:33 +0200
Message-Id: <20220924080459.13084-7-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220924080459.13084-1-krzysztof.kozlowski@linaro.org>
References: <20220924080459.13084-1-krzysztof.kozlowski@linaro.org>
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

DT schema expects TLMM pin configuration nodes to be named with
'-state' suffix and their optional children with '-pins' suffix.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../qcom-msm8974-lge-nexus5-hammerhead.dts    | 30 +++++++++----------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/arch/arm/boot/dts/qcom-msm8974-lge-nexus5-hammerhead.dts b/arch/arm/boot/dts/qcom-msm8974-lge-nexus5-hammerhead.dts
index 6daceaa87802..8138f37233aa 100644
--- a/arch/arm/boot/dts/qcom-msm8974-lge-nexus5-hammerhead.dts
+++ b/arch/arm/boot/dts/qcom-msm8974-lge-nexus5-hammerhead.dts
@@ -573,43 +573,43 @@ bcrmf@1 {
 };
 
 &tlmm {
-	sdc1_on: sdc1-on {
-		clk {
+	sdc1_on: sdc1-on-state {
+		clk-pins {
 			pins = "sdc1_clk";
 			drive-strength = <16>;
 			bias-disable;
 		};
 
-		cmd-data {
+		cmd-data-pins {
 			pins = "sdc1_cmd", "sdc1_data";
 			drive-strength = <10>;
 			bias-pull-up;
 		};
 	};
 
-	sdc2_on: sdc2-on {
-		clk {
+	sdc2_on: sdc2-on-state {
+		clk-pins {
 			pins = "sdc2_clk";
 			drive-strength = <6>;
 			bias-disable;
 		};
 
-		cmd-data {
+		cmd-data-pins {
 			pins = "sdc2_cmd", "sdc2_data";
 			drive-strength = <6>;
 			bias-pull-up;
 		};
 	};
 
-	mpu6515_pin: mpu6515 {
+	mpu6515_pin: mpu6515-state {
 		pins = "gpio73";
 		function = "gpio";
 		bias-disable;
 		input-enable;
 	};
 
-	touch_pin: touch {
-		int {
+	touch_pin: touch-state {
+		int-pins {
 			pins = "gpio5";
 			function = "gpio";
 
@@ -618,7 +618,7 @@ int {
 			input-enable;
 		};
 
-		reset {
+		reset-pins {
 			pins = "gpio8";
 			function = "gpio";
 
@@ -627,25 +627,25 @@ reset {
 		};
 	};
 
-	panel_pin: panel {
+	panel_pin: panel-state {
 		pins = "gpio12";
 		function = "mdp_vsync";
 		drive-strength = <2>;
 		bias-disable;
 	};
 
-	bt_pin: bt {
-		hostwake {
+	bt_pin: bt-state {
+		hostwake-pins {
 			pins = "gpio42";
 			function = "gpio";
 		};
 
-		devwake {
+		devwake-pins {
 			pins = "gpio62";
 			function = "gpio";
 		};
 
-		shutdown {
+		shutdown-pins {
 			pins = "gpio41";
 			function = "gpio";
 		};
-- 
2.34.1

