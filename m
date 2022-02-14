Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 58A5B4B43ED
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 09:20:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241957AbiBNIUH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 03:20:07 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:48220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241935AbiBNIUG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 03:20:06 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5298F25C48
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 00:19:58 -0800 (PST)
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com [209.85.218.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 1E8E1407DD
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 08:19:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644826797;
        bh=EbCeV0x/sMs+Jsxt5g9p8vtgK7tOVPzaf7TxkPV9Qwo=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=Wxz9SNfQ3zMKJNbxGxYOw1flUCXlwsHvjGxcxifZaLQSr3KprRlZpAu53RlrveXAD
         rtA9y2p9fvuDcch22FDIgbzTkZrJxVjYmKCv29v9Tee6EfFKrZ1uNcwwObRCLoTV0z
         6vYE7tDN2gFmMkwzKlmxCET3jwjBomIu9Jwnpt9uJ2F4qQIiuuMHuC89xLKmnhAD6N
         DY99OImexsZrPp17MraPRBdarsery4ecKg+P9Dv2sX+J/h8zPZAApjCS4+iT4IO6j1
         yRRj0lTlnWQjgICrfV1gYHPA3UVkImX2ASHOFnDPtfZf7IC9dYKKj8VovlDhxdMz1Y
         jYAXW1ktPU4Fw==
Received: by mail-ej1-f71.google.com with SMTP id 13-20020a170906328d00b006982d0888a4so5442030ejw.9
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 00:19:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=EbCeV0x/sMs+Jsxt5g9p8vtgK7tOVPzaf7TxkPV9Qwo=;
        b=jSQHb6wGD1g//yJf9ZEKNZFvKqRl8S30H1UxUGSPZUe5ONAiCprxCTh9f1GbmJ5YKZ
         udVxEmZgcfOWvV6BjqXvN21EpdJMu7rpUp6uo4H6oq6BFY4rMMpucDdiO7YFCUsVknOh
         +UEqRNcik2socjTEwsH+pAOnowz+A3EMhJfz7XM1eNa5pIrvZnodY+v4yn1M35DXUb1C
         i8/rIsZIx5GuGfjWfA3gUH44KKFiqv37io7uZpVtGtFz+9iPXMoQ24BjDShRZz71OuNw
         xsUT56ukVy48q7clW/tA9QmDD22Jn6V9alR9ZRbRJcm9OupnIEJWSqRPFNWycw9wj56B
         3HQg==
X-Gm-Message-State: AOAM530uuKmkrHl9JTU+hzTOvGD3sccYcHJkOJaPgb3GmiUxQQTyp2Z+
        jlsRyeuGksU2u7iwaok+BIi5QGpDjUt6+cJlKNa8PLAIVdJA2DvFcfXKCVuCNOGC6zmFwUyzN0u
        ucdOTtaGwdaUeeiJyS71OTgyi0C83BckRgar0MY8=
X-Received: by 2002:a17:907:608f:: with SMTP id ht15mr10447789ejc.498.1644826796188;
        Mon, 14 Feb 2022 00:19:56 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxuUtAFxe/AINzxrq5NNy+IKE6ovx3e9DkEU19VgsoD3pIeaS61uCEwn2sfqcNpphQUr0Ojgw==
X-Received: by 2002:a17:907:608f:: with SMTP id ht15mr10447762ejc.498.1644826796018;
        Mon, 14 Feb 2022 00:19:56 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id b20sm2022941ede.23.2022.02.14.00.19.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Feb 2022 00:19:55 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Douglas Anderson <dianders@chromium.org>,
        devicetree@vger.kernel.org, chrome-platform@lists.linux.dev,
        linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        linux-rockchip@lists.infradead.org
Subject: [PATCH 3/4] arm64: dts: qcom: align Google CROS EC PWM node name with dtschema
Date:   Mon, 14 Feb 2022 09:19:15 +0100
Message-Id: <20220214081916.162014-4-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214081916.162014-1-krzysztof.kozlowski@canonical.com>
References: <20220214081916.162014-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

dtschema expects PWM node name to be a generic "pwm".  This also matches
Devicetree specification requirements about generic node names.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi               | 2 +-
 arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r0.dts | 2 +-
 arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi             | 2 +-
 arch/arm64/boot/dts/qcom/sc7280-idp-ec-h1.dtsi             | 2 +-
 arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi                 | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
index 78296ed6fd29..732e1181af48 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
@@ -637,7 +637,7 @@ cros_ec: ec@0 {
 		pinctrl-0 = <&ap_ec_int_l>;
 		spi-max-frequency = <3000000>;
 
-		cros_ec_pwm: ec-pwm {
+		cros_ec_pwm: pwm {
 			compatible = "google,cros-ec-pwm";
 			#pwm-cells = <1>;
 		};
diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r0.dts b/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r0.dts
index af46a60b4b98..1779d96c30f6 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r0.dts
+++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r0.dts
@@ -705,7 +705,7 @@ cros_ec: ec@0 {
 		pinctrl-0 = <&ap_ec_int_l>;
 		spi-max-frequency = <3000000>;
 
-		cros_ec_pwm: ec-pwm {
+		cros_ec_pwm: pwm {
 			compatible = "google,cros-ec-pwm";
 			#pwm-cells = <1>;
 		};
diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
index 7c22f0b062be..dc17f2079695 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
@@ -421,7 +421,7 @@ cros_ec: ec@0 {
 		pinctrl-0 = <&ap_ec_int_l>;
 		spi-max-frequency = <3000000>;
 
-		cros_ec_pwm: ec-pwm {
+		cros_ec_pwm: pwm {
 			compatible = "google,cros-ec-pwm";
 			#pwm-cells = <1>;
 		};
diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp-ec-h1.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp-ec-h1.dtsi
index 0896a6151817..a7c346aa3b02 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-idp-ec-h1.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-idp-ec-h1.dtsi
@@ -20,7 +20,7 @@ cros_ec: ec@0 {
 		pinctrl-0 = <&ap_ec_int_l>;
 		spi-max-frequency = <3000000>;
 
-		cros_ec_pwm: ec-pwm {
+		cros_ec_pwm: pwm {
 			compatible = "google,cros-ec-pwm";
 			#pwm-cells = <1>;
 		};
diff --git a/arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi b/arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi
index 4a6285a25f77..e7e4cc5936aa 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi
@@ -708,7 +708,7 @@ cros_ec: ec@0 {
 		pinctrl-0 = <&ec_ap_int_l>;
 		spi-max-frequency = <3000000>;
 
-		cros_ec_pwm: ec-pwm {
+		cros_ec_pwm: pwm {
 			compatible = "google,cros-ec-pwm";
 			#pwm-cells = <1>;
 		};
-- 
2.32.0

