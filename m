Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2151D7836F8
	for <lists+devicetree@lfdr.de>; Tue, 22 Aug 2023 02:15:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231863AbjHVAPR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Aug 2023 20:15:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231826AbjHVAOD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Aug 2023 20:14:03 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71CD71AA
        for <devicetree@vger.kernel.org>; Mon, 21 Aug 2023 17:13:57 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-50087d47d4dso934778e87.1
        for <devicetree@vger.kernel.org>; Mon, 21 Aug 2023 17:13:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692663235; x=1693268035;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ii+ERiIP/+rN5/93TQF2YXZBm9/0F6AmtInKGYg6uG8=;
        b=X4vHwIj3OWCgBneAbXzCeie+I6fy8btM/pKM43CfnX5RCd84+Qpo+l27ESmO+yy361
         fkDmCnCEPK48a7338v36s1llDT6lBQBPsVlBCbcWNYJqX7Ug9TWSW13PxD6IXHnxkVxC
         TeOxvmWIf7jNhzoHkXG756AHEVhKmFPs68fJKl7VqLXA7fKBEY1ZpjmchtJIhzJoF6zc
         47bytSNidu6zJWxWKfxVAGIk3Y/VWgZoj1LuZJoXvBR22yzk2FDk5B+ihiqHDy67qAjE
         E+KJDdyc5ItUFd0qE1kQLGEZ8JU1GS/uCfH51ALIghrb5l6y4+7H9tYsZGoPmta6bLuM
         2Riw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692663236; x=1693268036;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ii+ERiIP/+rN5/93TQF2YXZBm9/0F6AmtInKGYg6uG8=;
        b=QGChgb5tN3E97JKL6eIgUtdKzGucYOXm5xnAi2GxmUqsMrBmAOQW6C5x5HFYZNtWrA
         z6wpCeQNwBXmAFrmbkdfodWpb28csHZEgYcWT6USK4aMr3NWDRMZhZUG940UKqBxEFam
         /uhgpEVWXvT34eYvm1VmqYVvr0MErohwliW9pRIDf1K4zEz35wKDVzzbf2YaYraZEiSV
         WhFt5OkBUjG2g2yDM/rKn71mBmsHd1OpnvpfddNFU2EAIUPCOd+yq8ErytG6HOrfsNUj
         gPtBkVhAuQSNWm2Ydatrt52yhyKrsut3ptLr+d6qUrYaX7s18zJnYu+j2NwO5NRXrD/f
         55gg==
X-Gm-Message-State: AOJu0YxZ7L688F2lEaTxg1xoJnEO+SwqjIAnWD62/515d/41JEoj9Cws
        EXLTvfDj3MberTcv1lW0cXlDMA==
X-Google-Smtp-Source: AGHT+IEQB66ExTcrHYnGsEpRPJGoRv0XObQZt73ANLO9TENxuzX0KDWaLDo4ov/+MRkwY00vEV3Uig==
X-Received: by 2002:a05:6512:1587:b0:4fd:d470:203b with SMTP id bp7-20020a056512158700b004fdd470203bmr7025196lfb.69.1692663235798;
        Mon, 21 Aug 2023 17:13:55 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id er23-20020a05651248d700b004fe36e673b8sm912024lfb.178.2023.08.21.17.13.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Aug 2023 17:13:55 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-input@vger.kernel.org
Subject: [PATCH v3 05/32] ARM: dts: qcom: msm8960: introduce label for PMIC keypad
Date:   Tue, 22 Aug 2023 03:13:22 +0300
Message-Id: <20230822001349.899298-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230822001349.899298-1-dmitry.baryshkov@linaro.org>
References: <20230822001349.899298-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

To simplify MSM8960 CDP board file, add label to PMIC keypad node.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-msm8960-cdp.dts | 20 +++++++++-----------
 arch/arm/boot/dts/qcom/qcom-msm8960.dtsi    |  2 +-
 2 files changed, 10 insertions(+), 12 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-msm8960-cdp.dts b/arch/arm/boot/dts/qcom/qcom-msm8960-cdp.dts
index 6c1bc3818883..4641b4f2195d 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8960-cdp.dts
+++ b/arch/arm/boot/dts/qcom/qcom-msm8960-cdp.dts
@@ -88,17 +88,15 @@ clk-pins {
 	};
 };
 
-&pmicintc {
-	keypad@148 {
-		linux,keymap = <
-			MATRIX_KEY(0, 0, KEY_VOLUMEUP)
-			MATRIX_KEY(0, 1, KEY_VOLUMEDOWN)
-			MATRIX_KEY(0, 2, KEY_CAMERA_FOCUS)
-			MATRIX_KEY(0, 3, KEY_CAMERA)
-			>;
-		keypad,num-rows = <1>;
-		keypad,num-columns = <5>;
-	};
+&pm8921_keypad {
+	linux,keymap = <
+		MATRIX_KEY(0, 0, KEY_VOLUMEUP)
+		MATRIX_KEY(0, 1, KEY_VOLUMEDOWN)
+		MATRIX_KEY(0, 2, KEY_CAMERA_FOCUS)
+		MATRIX_KEY(0, 3, KEY_CAMERA)
+		>;
+	keypad,num-rows = <1>;
+	keypad,num-columns = <5>;
 };
 
 &rpm {
diff --git a/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi b/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
index d13080fcbeea..a34fda93d6a4 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
@@ -283,7 +283,7 @@ pwrkey@1c {
 					pull-up;
 				};
 
-				keypad@148 {
+				pm8921_keypad: keypad@148 {
 					compatible = "qcom,pm8921-keypad";
 					reg = <0x148>;
 					interrupt-parent = <&pmicintc>;
-- 
2.39.2

