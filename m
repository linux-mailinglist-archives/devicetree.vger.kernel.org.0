Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D93755F6672
	for <lists+devicetree@lfdr.de>; Thu,  6 Oct 2022 14:47:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231461AbiJFMre (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Oct 2022 08:47:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230518AbiJFMrR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Oct 2022 08:47:17 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29146A285A
        for <devicetree@vger.kernel.org>; Thu,  6 Oct 2022 05:47:10 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id a29so2562888lfo.1
        for <devicetree@vger.kernel.org>; Thu, 06 Oct 2022 05:47:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=S8p9f8npWVzLL+xxIGq+LPGJqP+UsFdvXgAaWjNbjvo=;
        b=ZQl6sc1Z5+iMiY2gchqm8S6xTWI+jW1mT5aCUTfvMnim5LGUkTR3FDJbhRPJ46R/Xu
         DarEIClYwON26S+FWr7jNVvsBKotzlggUY0I3Dl4nBJm0WPP5hsk1nVd0MZ7a+EnLMi0
         cVSFxVC7BOutgHRPpk4W41ahdg/9FAgpypK94sHfr+8+TZkyGJMtF7/qS0PNSuYT6feQ
         aq1FNnysBCI93oqWFstrbw0DCZIvkhSGCCG9AUCpTtEJLkPs+2nhUPy7mJWfIfiju8rR
         XAKo7kwyGZr5FUFZVL5PkOy52EitdQ0u0NbsvXGYGTe7QLcmeUbRUmFd9BpdOmTUPxDD
         eh3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=S8p9f8npWVzLL+xxIGq+LPGJqP+UsFdvXgAaWjNbjvo=;
        b=jv7yJ0ubzRYUcNojQHMnga/H49jY+Y9oQ0PJVg/b/9ct/YE0dW0tjikuPlhWEuA7Ez
         1G5wBXbEJMXDr/IewhmhuUKJYy+Q+UXC1LPgL2oLOHWZTx7Ettmy0nrpc6vvGOh3d4rQ
         HMjUKOwRvF7ZWJh+pCA+AuQ2sP5+oCJ1hqRrtuR6iBLT9MAcsYl4W/wT16wKJvoPg4cS
         /4p6xy+mHa76V1rk4g+ekSro6BKMy+zOhi1Ox756I/AqjyIRQ3E/aCXogdFoI/6IeahM
         LwDrgnG6KePrxTG1CiayxzjpqG2A6CIPigf+52uVXgUa0ld9jwrN8WVHrl0IYYpYbUbd
         RTuA==
X-Gm-Message-State: ACrzQf3i4VXNyRfeMjo/zHZagqoYGjWHQDY14/t0nWvuobe5FqK7CRMB
        qqo+fEmfnru82ZZVHZcvRfn/Qg==
X-Google-Smtp-Source: AMsMyM6GJkachmBXCsZZ+1BiT/IkJvvODP1yneccEIVK9DpoFZhxN8uU0usiSUk2Etn/hNbX+kl7zw==
X-Received: by 2002:a05:6512:3da2:b0:4a2:6f93:2895 with SMTP id k34-20020a0565123da200b004a26f932895mr1631991lfv.437.1665060428994;
        Thu, 06 Oct 2022 05:47:08 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id br32-20020a056512402000b00497a3e2a191sm2687659lfb.112.2022.10.06.05.47.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Oct 2022 05:47:08 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Shawn Guo <shawn.guo@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        krishna Lanka <quic_vamslank@quicinc.com>,
        Sivaprakash Murugesan <sivaprak@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 06/34] ARM: dts: qcom: msm8974: align TLMM pin configuration with DT schema
Date:   Thu,  6 Oct 2022 14:46:31 +0200
Message-Id: <20221006124659.217540-7-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221006124659.217540-1-krzysztof.kozlowski@linaro.org>
References: <20221006124659.217540-1-krzysztof.kozlowski@linaro.org>
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
Reviewed-by: Bjorn Andersson <andersson@kernel.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>
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

