Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1345D73F06F
	for <lists+devicetree@lfdr.de>; Tue, 27 Jun 2023 03:24:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230154AbjF0BYk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jun 2023 21:24:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230175AbjF0BYg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jun 2023 21:24:36 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2DAE173B
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 18:24:33 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-4f875b267d9so5579954e87.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 18:24:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687829072; x=1690421072;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NukkNRThqa1IjvPrEw9VD8AjaUF0mEJEuUkvxw9mAdw=;
        b=x2tDKxLytWnQ5lQAT05Tl14BnwmxgtI01mKdAjgsP3xPFDYSZAvCTovSgXZyUWpF29
         Ll74m+OLfr/sQvwriFAxLAD92BgmLBNJzC9kDKEgr3iC7Qu0+20jwoyikJtUOWBfngu5
         xiH10u094nI3j8XxYHY448+2d3NVvyK1DbMBDFGiMMQcXJ2OKJB+lAVfsZ+O0j86dTYJ
         fL6qaSZpuBZX0w9ojQBPqM7HNR9dk5A5HmfyMDR5aG+xa4xiKLWyZR3WJb+OjFBjbWXx
         YZoSOTCt6QOHckI2p29yHF1Pp7mZ/hwZiGGZf0qw7BTMhEdxRvfSI81RzDwPOlf95221
         6dMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687829072; x=1690421072;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NukkNRThqa1IjvPrEw9VD8AjaUF0mEJEuUkvxw9mAdw=;
        b=OrirmEYBn8tmcLPSrgTekk5Fa+B0Eh9EvZRSozmsTGPqw+zneFRcuzHF7Vv9SZjhJP
         7kmSpmq2xul5uVG9sl/3xbqwtCvoMq8DqqqXXsU2tg4U9YUlPlvW//tLIh5xB9EBacNT
         qhsIx1ia6s2UGuQ+Wo5hRNoLMHZyau8bPfTGbv7wuwcXpAhQdU6EjcnBObtYF4ZofrqP
         cx3XVEhcfNsBcVUyxRFl9WVhjrtsgHgEw5r5WdEfDfrMU2S79cftGRuSaQkAROTlMmtS
         0LjT2SbYfUCRjs+ALzd8iKZgAAK+fahmqPyB0RpEOU1Rbo6TOs48m7MhSKkUZQzJtiF8
         mdzA==
X-Gm-Message-State: AC+VfDzXwO1ebK9e9RiEA6IyLB9pPDRqFTzEc19XVRpepG5aLIN0emic
        JHgEM0+vVnBur1K6vNMRxlXpwQ==
X-Google-Smtp-Source: ACHHUZ4PUOMaiH/IRsQLnCytDWvXuafNOprdbMGcQQoJK1dwlAyybjBd8AeYts0abjIS4EviaQt1Bg==
X-Received: by 2002:a05:6512:31d1:b0:4fb:73b5:e1cf with SMTP id j17-20020a05651231d100b004fb73b5e1cfmr3289472lfe.64.1687829072248;
        Mon, 26 Jun 2023 18:24:32 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id z7-20020ac24187000000b004cc9042c9cfsm1331301lfh.158.2023.06.26.18.24.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jun 2023 18:24:31 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 11/15] ARM: dts: qcom: msm8974: move vreg-boost GPIO to board files
Date:   Tue, 27 Jun 2023 04:24:18 +0300
Message-Id: <20230627012422.206077-12-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230627012422.206077-1-dmitry.baryshkov@linaro.org>
References: <20230627012422.206077-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The controlling GPIO for the regulator (even if it is unified by design)
is not a property of SoC, so move it to board files.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-msm8974-lge-nexus5-hammerhead.dts | 4 ++++
 arch/arm/boot/dts/qcom/qcom-msm8974-sony-xperia-rhine.dtsi    | 4 ++++
 arch/arm/boot/dts/qcom/qcom-msm8974.dtsi                      | 1 -
 arch/arm/boot/dts/qcom/qcom-msm8974pro-fairphone-fp2.dts      | 4 ++++
 arch/arm/boot/dts/qcom/qcom-msm8974pro-oneplus-bacon.dts      | 4 ++++
 .../dts/qcom/qcom-msm8974pro-sony-xperia-shinano-castor.dts   | 4 ++++
 6 files changed, 20 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-msm8974-lge-nexus5-hammerhead.dts b/arch/arm/boot/dts/qcom/qcom-msm8974-lge-nexus5-hammerhead.dts
index da99f770d4f5..eccd8f536bce 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8974-lge-nexus5-hammerhead.dts
+++ b/arch/arm/boot/dts/qcom/qcom-msm8974-lge-nexus5-hammerhead.dts
@@ -694,3 +694,7 @@ &usb_hs1_phy {
 
 	qcom,init-seq = /bits/ 8 <0x1 0x64>;
 };
+
+&vreg_boost {
+	gpio = <&pm8941_gpios 21 GPIO_ACTIVE_HIGH>;
+};
diff --git a/arch/arm/boot/dts/qcom/qcom-msm8974-sony-xperia-rhine.dtsi b/arch/arm/boot/dts/qcom/qcom-msm8974-sony-xperia-rhine.dtsi
index 23ae474698aa..c8f914c4ebc4 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8974-sony-xperia-rhine.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-msm8974-sony-xperia-rhine.dtsi
@@ -493,3 +493,7 @@ &usb_hs1_phy {
 	extcon = <&smbb>;
 	qcom,init-seq = /bits/ 8 <0x1 0x64>;
 };
+
+&vreg_boost {
+	gpio = <&pm8941_gpios 21 GPIO_ACTIVE_HIGH>;
+};
diff --git a/arch/arm/boot/dts/qcom/qcom-msm8974.dtsi b/arch/arm/boot/dts/qcom/qcom-msm8974.dtsi
index aeca504918a0..a8f1c5d76bcd 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8974.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-msm8974.dtsi
@@ -2387,7 +2387,6 @@ vreg_boost: vreg-boost {
 		regulator-always-on;
 		regulator-boot-on;
 
-		gpio = <&pm8941_gpios 21 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
 
 		pinctrl-names = "default";
diff --git a/arch/arm/boot/dts/qcom/qcom-msm8974pro-fairphone-fp2.dts b/arch/arm/boot/dts/qcom/qcom-msm8974pro-fairphone-fp2.dts
index 24f9521a0be6..ba94186792d5 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8974pro-fairphone-fp2.dts
+++ b/arch/arm/boot/dts/qcom/qcom-msm8974pro-fairphone-fp2.dts
@@ -461,3 +461,7 @@ &usb_hs1_phy {
 	extcon = <&smbb>;
 	qcom,init-seq = /bits/ 8 <0x1 0x64>;
 };
+
+&vreg_boost {
+	gpio = <&pm8941_gpios 21 GPIO_ACTIVE_HIGH>;
+};
diff --git a/arch/arm/boot/dts/qcom/qcom-msm8974pro-oneplus-bacon.dts b/arch/arm/boot/dts/qcom/qcom-msm8974pro-oneplus-bacon.dts
index c0ca264d8140..b95fd5f2a481 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8974pro-oneplus-bacon.dts
+++ b/arch/arm/boot/dts/qcom/qcom-msm8974pro-oneplus-bacon.dts
@@ -510,3 +510,7 @@ &usb_hs1_phy {
 	extcon = <&smbb>;
 	qcom,init-seq = /bits/ 8 <0x1 0x64>;
 };
+
+&vreg_boost {
+	gpio = <&pm8941_gpios 21 GPIO_ACTIVE_HIGH>;
+};
diff --git a/arch/arm/boot/dts/qcom/qcom-msm8974pro-sony-xperia-shinano-castor.dts b/arch/arm/boot/dts/qcom/qcom-msm8974pro-sony-xperia-shinano-castor.dts
index efe21289c9fe..09514324d444 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8974pro-sony-xperia-shinano-castor.dts
+++ b/arch/arm/boot/dts/qcom/qcom-msm8974pro-sony-xperia-shinano-castor.dts
@@ -672,3 +672,7 @@ &usb_hs1_phy {
 	extcon = <&smbb>;
 	qcom,init-seq = /bits/ 8 <0x1 0x64>;
 };
+
+&vreg_boost {
+	gpio = <&pm8941_gpios 21 GPIO_ACTIVE_HIGH>;
+};
-- 
2.39.2

