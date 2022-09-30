Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 493EA5F11E2
	for <lists+devicetree@lfdr.de>; Fri, 30 Sep 2022 20:52:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232193AbiI3Sws (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Sep 2022 14:52:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232305AbiI3Swp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Sep 2022 14:52:45 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E92F3166489
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 11:52:42 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id c2so1833391lfb.10
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 11:52:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=bYvyrx502JPo44GeHBfFy0QvT0IcEb2Aq/9zmHErgC0=;
        b=HKKzpzV5Jd9bYB+rYHiYmGCfKB0sd97rr4Rm6Pv30nTDJHErHOt6EJ3tyw1h7+OnEA
         /XFU+j5sQ1PJ+qCjC2I3BYHN0Af32DI6haTbNFs+iL0lLd5hNSYT1dNSK7zVMYIkcxdP
         QwHmBI6nOc1NGxnRCLmC1IH/lJNhHbhVRAMGLcXnq6cq5Uqx7FpPBrHrGVBwY9Dt8FMG
         ovJG5wxdSAcN4ELwe72uCEBDXAOJM9mOcU0BNKeFbluPZkhp5x3PCQOMs2Kg2m0Wbec6
         aeiZQ/CYigbl9EmjANEDaT4cDHG+OyjBAElu6E0flBD+2vjR3hXq/8EERWA+qIavjqnT
         wrKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=bYvyrx502JPo44GeHBfFy0QvT0IcEb2Aq/9zmHErgC0=;
        b=AXTToTD3lROm1XT2QQOgofP/H0i+Tbau1lgJ5eFmnUuv6JP1d9qEQzzK6F4MM5AR2h
         SSVt6f96h/97iIzuLguS5jWPHxEOPlPH88GWTXxVVvkkyIXlpFXKwyUiIf5cfXER9GUS
         IQdtmJ0h7LsBuojltwEu/3WstjRXDA8YjFSO7C4Umt5viTtsMvYlfHN3lD4MQMIDFMjK
         xVk57anOIZV6y23uuFzKCtp6hhhsexBqlJdwKnwL1XCyuyu7z5qC9mHtWnvdElxObRBb
         Ad7nqVJMkfBB+ZcI9KLu6yYuxT2OEjtyFrE5fa6FB/HPRAUfb+fr1qQvQTTiTWapvgsr
         me8w==
X-Gm-Message-State: ACrzQf2WVSFCPB5Bf8q4v1ji3E9BWWerTHhzRJhJ7c2HJ9dWToSrSJcQ
        Ce1AIz3orqvNcilUpbARvn/8PA==
X-Google-Smtp-Source: AMsMyM5G/MoQ1++6qrW8x7KAx0IwTxNJhraeMI7YU2Y/1AJVGoaIBU8Wdr5mRRqvGQ2WYcU6o6tCHg==
X-Received: by 2002:a05:6512:3da8:b0:499:b714:5cde with SMTP id k40-20020a0565123da800b00499b7145cdemr3605025lfv.656.1664563961304;
        Fri, 30 Sep 2022 11:52:41 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id i8-20020a056512006800b00492cfecf1c0sm374703lfo.245.2022.09.30.11.52.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Sep 2022 11:52:40 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 05/23] ARM: dts: qcom: apq8064-ifc6410: pull SDCC pwrseq node up one level
Date:   Fri, 30 Sep 2022 21:52:18 +0300
Message-Id: <20220930185236.867655-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220930185236.867655-1-dmitry.baryshkov@linaro.org>
References: <20220930185236.867655-1-dmitry.baryshkov@linaro.org>
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

There are no need to add additional simple-bus nodes just to populate
a single pwrseq device. Pull it up one level into /. While we are at it
also fix node name replacing underscore with dash.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom-apq8064-ifc6410.dts | 18 +++++++-----------
 1 file changed, 7 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boot/dts/qcom-apq8064-ifc6410.dts b/arch/arm/boot/dts/qcom-apq8064-ifc6410.dts
index 610fb8d652c3..96307550523a 100644
--- a/arch/arm/boot/dts/qcom-apq8064-ifc6410.dts
+++ b/arch/arm/boot/dts/qcom-apq8064-ifc6410.dts
@@ -22,17 +22,6 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
-	pwrseq {
-		compatible = "simple-bus";
-
-		sdcc4_pwrseq: sdcc4_pwrseq {
-			pinctrl-names = "default";
-			pinctrl-0 = <&wlan_default_gpios>;
-			compatible = "mmc-pwrseq-simple";
-			reset-gpios = <&pm8921_gpio 43 GPIO_ACTIVE_LOW>;
-		};
-	};
-
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
@@ -57,6 +46,13 @@ hdmi_con: endpoint {
 		};
 	};
 
+	sdcc4_pwrseq: pwrseq-sdcc4 {
+		pinctrl-names = "default";
+		pinctrl-0 = <&wlan_default_gpios>;
+		compatible = "mmc-pwrseq-simple";
+		reset-gpios = <&pm8921_gpio 43 GPIO_ACTIVE_LOW>;
+	};
+
 	ext_3p3v: regulator-ext-3p3v {
 		compatible = "regulator-fixed";
 		regulator-min-microvolt = <3300000>;
-- 
2.35.1

