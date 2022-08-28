Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 14BF75A3CCF
	for <lists+devicetree@lfdr.de>; Sun, 28 Aug 2022 10:47:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233670AbiH1IoR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 28 Aug 2022 04:44:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233470AbiH1IoJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 28 Aug 2022 04:44:09 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 118EE2E9EA
        for <devicetree@vger.kernel.org>; Sun, 28 Aug 2022 01:43:58 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id z6so7361896lfu.9
        for <devicetree@vger.kernel.org>; Sun, 28 Aug 2022 01:43:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=w46QTzHiliFXMgbuwtIv8+OqfbhHs2gqUEaLL/ymU0k=;
        b=vHaG3zjD5j+7XpGoP0dGNrXSCEXv1+8DxvjWCGF7yB7+ZJ/ABSyzSPLTKlg9cF4TcZ
         jlKGYtWONeXUtYjJRpwqy0Vz7fhi+iZhADJpQ2HivtzIFS1/ZiEU6ynRKt041qWoehCE
         /Lr6GMVFTgZdNefYtgu/4zzH1SE+NK6yLxUTOcGIiABOhU2o2DfbGuGaAMLl2X3xoWfj
         7wy+po5qIbYdRM4ayZE71TTfWKnnIPADGKgyRezkY+UqJ29XlKTOXn7vVgpFs5El2EO8
         TB7U1n5Q5k51oEUKcrXrnK1RVq6EGsYxUiwntVGQnVD+AP4ScZdJpwW3E61TDfY8Mm/w
         bI+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=w46QTzHiliFXMgbuwtIv8+OqfbhHs2gqUEaLL/ymU0k=;
        b=L23c0XRLcBqI+ZUmSYDBH0r3+GFxTVEnU+o69Xf9QXLJ6Qdf0uN2/xANjSF3fjt8N/
         MuFm4lGZaR1FhraLcieklldZ6OktI6sH9issCNrSjIB+m6ZQNoZsrjdtEmg01bfNLRRq
         an7n+Gvg+fxnMfg24MSk0rQIHxGNWzwzU2mihDNIckc3nc5Ec3Q1mYaUtQxJ1hueF6UE
         WDRerkDyaG7/j155eQJ54sQLgprvj5ldgN+l9BaalN74gCSFgn1vuxssvCWWnhpDaetq
         /+XEN/aG+yQh3GhnrETBv+a7wuVI6ijb13d4XXatY5wgegyQp1PhfOYjSjvyxp52Ftfo
         /2VA==
X-Gm-Message-State: ACgBeo3nU43QvbXQwJZ/Enuhm4sROicaFQ/XGJNlWi1Zyx3LZ0tfk3ak
        mz9ytjLWo6xkAHLz10RtipigqQ==
X-Google-Smtp-Source: AA6agR6vJ7epFCfbZJvz8TimxpKRLS/McwkvBhIJ3uhYnlAZbRWvnq2J/ciaL/x/GLIhtM2ioNoRpw==
X-Received: by 2002:ac2:4f02:0:b0:481:43a8:e368 with SMTP id k2-20020ac24f02000000b0048143a8e368mr4597736lfr.65.1661676238293;
        Sun, 28 Aug 2022 01:43:58 -0700 (PDT)
Received: from krzk-bin.starman.ee (82.131.98.15.cable.starman.ee. [82.131.98.15])
        by smtp.gmail.com with ESMTPSA id c6-20020ac25f66000000b0048afe02c925sm890114lfc.219.2022.08.28.01.43.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Aug 2022 01:43:57 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        David Heidelberg <david@ixit.cz>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 11/14] arm64: dts: qcom: sc7280-idp: correct ADC channel node name and unit address
Date:   Sun, 28 Aug 2022 11:43:38 +0300
Message-Id: <20220828084341.112146-12-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220828084341.112146-1-krzysztof.kozlowski@linaro.org>
References: <20220828084341.112146-1-krzysztof.kozlowski@linaro.org>
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

Correct SPMI PMIC VADC channel node name:
1. Use hyphens instead of underscores,
2. Add missing unit address.

This fixes `make dtbs_check` warnings like:

  qcom/sc7280-idp.dtb: pmic@0: adc@3100: 'pmk8350_die_temp', 'pmr735a_die_temp' do not match any of the regexes: '^.*@[0-9a-f]+$', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7280-idp.dts  | 2 +-
 arch/arm64/boot/dts/qcom/sc7280-idp.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dts b/arch/arm64/boot/dts/qcom/sc7280-idp.dts
index 6d3ff80582ae..e2e37a0292ad 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-idp.dts
+++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dts
@@ -78,7 +78,7 @@ &nvme_3v3_regulator {
 };
 
 &pmk8350_vadc {
-	pmr735a_die_temp {
+	pmr735a-die-temp@403 {
 		reg = <PMR735A_ADC7_DIE_TEMP>;
 		label = "pmr735a_die_temp";
 		qcom,pre-scaling = <1 1>;
diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
index a74e0b730db6..27c47ddbdf02 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
@@ -264,7 +264,7 @@ &pcie1_phy {
 };
 
 &pmk8350_vadc {
-	pmk8350_die_temp {
+	pmk8350-die-temp@3 {
 		reg = <PMK8350_ADC7_DIE_TEMP>;
 		label = "pmk8350_die_temp";
 		qcom,pre-scaling = <1 1>;
-- 
2.34.1

