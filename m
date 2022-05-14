Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 38D795273A0
	for <lists+devicetree@lfdr.de>; Sat, 14 May 2022 21:02:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234839AbiENTB4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 May 2022 15:01:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234819AbiENTBx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 14 May 2022 15:01:53 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 217A62873C
        for <devicetree@vger.kernel.org>; Sat, 14 May 2022 12:01:50 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id u23so19681326lfc.1
        for <devicetree@vger.kernel.org>; Sat, 14 May 2022 12:01:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PIPhrHSX0vDaE6umAr6Uz83mLWrCmZ9TxDaxz4FKhdY=;
        b=H65mzVaNr4iujB5hGdwVwcYPUMtX/2aAm83Q+G7uP5nqE5K+t3zzjXnookoIQeG3fz
         R3R5HzC97wdEZxpnaHEh/nshQn2FI1K8M7EZKakNCd4hS3MSGZqPuNwcMzPnWdIaEglC
         uBxF4dU7BQCoR/WQn5+0JAzwaQXAMrDhMH6ZyH/sMz/2Le09asz4hmzOUQaYspoJOKDM
         h/REjJy1/aPi8FOOzAiRHfA698vBg3V1w8pXa44CWNF7k/w42cTEVniACWcdlk0Fs8lg
         j/g3oL7Ia2QuV3UQcKBic3WHCm2G36PiDRtIQhY7Kkno6e7tS9RnA26wsej6eyr9AzZE
         Pbvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PIPhrHSX0vDaE6umAr6Uz83mLWrCmZ9TxDaxz4FKhdY=;
        b=nGoxgphgocXFtq6RpCiboYhTR+0Ms2QXuwB+HwJV141Z8VBfulIf107ZWDFKpp4+MR
         R7KFcMMGVu43uL/g+Q/u9m7j3hq2oxeBjSciQ4x72KJwI+r0sguU6GyzzAuKTzfYnU8w
         LkPS6E9GkR8a5I2UhH8J7lBjoXsyhmy27BJcDjxlHmvRA1CaTQGfeQfSWjpzcxDfNhAV
         Ujj9VL5xqwsmL16lfoW+D2NZLrs48BV10BU55/0aWt3CVVqTLbboN7Vvi5gGmxQVIqmG
         nwi/80w/MqYlju3iBjczcJqDIMLoKALt0jzlGMyZkKrPjHaEZB9PCEfDxnJf/R34ETzt
         BcCQ==
X-Gm-Message-State: AOAM532QYPXDH/4apIVqB+GjkRzCGdefiA58359DWg4Q1Aec/OBmremA
        3Ve3wNk7RuPvmUKPFGR8pN+1Cg==
X-Google-Smtp-Source: ABdhPJw2+9H0WcICaEej/Et96byTHp3ZFLBRw7qtWFETU8N1ScIAUYX0ncTH+9qwOYAda4rQiapHew==
X-Received: by 2002:a19:6a06:0:b0:472:100:47c6 with SMTP id u6-20020a196a06000000b00472010047c6mr7552953lfu.307.1652554908338;
        Sat, 14 May 2022 12:01:48 -0700 (PDT)
Received: from eriador.lumag.spb.ru ([93.92.200.201])
        by smtp.gmail.com with ESMTPSA id y26-20020ac255ba000000b0047255d210f4sm787427lfg.35.2022.05.14.12.01.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 May 2022 12:01:47 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Marijn Suijten <marijn.suijten@somainline.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v5 10/12] arm64: dts: qcom: sdm660: move SDHC2 card detect pinconf to board files
Date:   Sat, 14 May 2022 22:01:36 +0300
Message-Id: <20220514190138.3179964-11-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220514190138.3179964-1-dmitry.baryshkov@linaro.org>
References: <20220514190138.3179964-1-dmitry.baryshkov@linaro.org>
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

This results in dts duplication, but per mutual agreement card detect
pin configuration belongs to the board files. Move it from the SoC
dtsi to the board DT files.

Suggested-by: Marijn Suijten <marijn.suijten@somainline.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../boot/dts/qcom/sdm630-sony-xperia-nile.dtsi   | 16 ++++++++++++++++
 arch/arm64/boot/dts/qcom/sdm630.dtsi             | 12 ------------
 .../boot/dts/qcom/sdm660-xiaomi-lavender.dts     | 16 ++++++++++++++++
 3 files changed, 32 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi b/arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi
index 00baacf28c63..ccde9951e4fb 100644
--- a/arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi
@@ -549,6 +549,22 @@ vreg_l19a_3p3: l19 {
 	};
 };
 
+&sdc2_state_on {
+	sd-cd {
+		pins = "gpio54";
+		bias-pull-up;
+		drive-strength = <2>;
+	};
+};
+
+&sdc2_state_off {
+	sd-cd {
+		pins = "gpio54";
+		bias-disable;
+		drive-strength = <2>;
+	};
+};
+
 &sdhc_1 {
 	status = "okay";
 	supports-cqe;
diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
index 44f048934fc6..e6f06a548011 100644
--- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
@@ -983,12 +983,6 @@ data {
 					bias-pull-up;
 					drive-strength = <10>;
 				};
-
-				sd-cd {
-					pins = "gpio54";
-					bias-pull-up;
-					drive-strength = <2>;
-				};
 			};
 
 			sdc2_state_off: sdc2-off {
@@ -1009,12 +1003,6 @@ data {
 					bias-pull-up;
 					drive-strength = <2>;
 				};
-
-				sd-cd {
-					pins = "gpio54";
-					bias-disable;
-					drive-strength = <2>;
-				};
 			};
 		};
 
diff --git a/arch/arm64/boot/dts/qcom/sdm660-xiaomi-lavender.dts b/arch/arm64/boot/dts/qcom/sdm660-xiaomi-lavender.dts
index 9280c1f0c334..2b1216502eb0 100644
--- a/arch/arm64/boot/dts/qcom/sdm660-xiaomi-lavender.dts
+++ b/arch/arm64/boot/dts/qcom/sdm660-xiaomi-lavender.dts
@@ -363,6 +363,22 @@ vreg_l19a_3p3: l19 {
 	};
 };
 
+&sdc2_state_on {
+	sd-cd {
+		pins = "gpio54";
+		bias-pull-up;
+		drive-strength = <2>;
+	};
+};
+
+&sdc2_state_off {
+	sd-cd {
+		pins = "gpio54";
+		bias-disable;
+		drive-strength = <2>;
+	};
+};
+
 &sdhc_1 {
 	status = "okay";
 	supports-cqe;
-- 
2.35.1

