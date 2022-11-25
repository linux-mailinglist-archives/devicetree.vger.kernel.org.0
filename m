Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CE674638C9A
	for <lists+devicetree@lfdr.de>; Fri, 25 Nov 2022 15:43:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230100AbiKYOnh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Nov 2022 09:43:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230217AbiKYOnQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Nov 2022 09:43:16 -0500
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FEC1DA9
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 06:42:27 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id p8so7187875lfu.11
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 06:42:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bBqSMPejKvSd3O0NO9j72RSijnFvL/UkPRBmai1ZQaA=;
        b=nKi6npi0deHo4cjopDvhYMmfDH4zi4a2NGCuQL0hrfb3u3LH2ixig4h+po3eQ7Zzr0
         u4mJoQYBMVuGocp3P9LLko6KJ3s/XUh3j/PB7G5rZS99AC/NT/790vIf458TMF7QqQrj
         5F0eWOCXwWXb0m0ZkzOIOrQFv2NHk21raukTxM1/LYgZqEvWlRIsSYXbluk67vl92WJ0
         +qwi3Mm3nzoJ/KXxqr4X2rKt/VTP+h1fp7FIGdUc+PE7wGJjqoa5CYBSTEBzxc6UKgxj
         aKARVBcD+zUP2rSpDxMu0HDXtIg3Ep8Fr/E1/jjCOeAlNN7GrQuKO7kCWkikD05ChzoR
         FStg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bBqSMPejKvSd3O0NO9j72RSijnFvL/UkPRBmai1ZQaA=;
        b=jvHnWyYaKOWjEJocMmgHRwrkRFklHAVsZML8Ef5llsGa9+R2pn1AoLMggovOOTAFXT
         NaujKTgoHYEFRLYVxedPfPPUShwBT/mOjlnT/ju0ETzdKoLxvFbi/7URZ+KJvsJMYHQM
         A3+n8mQ1mz8IJLdsTJfkd4tWweo1EQ0+CmHWyGSs/gn6j5Q9Bn5IxO30fVir2hWm7AvO
         lDwM0olwOnO9ZroBjm3FSr1zuobzZOF1rtF26cqtj9ev6SQEyJtE8MVPc2hB00BJPRox
         9CkAz4jdF+k0gIMaLmtGE9DFtwvVX2XjDhQGZ5Y9LSys/CQle33P8QHNBveAK1Jti3x5
         dmTw==
X-Gm-Message-State: ANoB5pkD9LhKcrhcCfbTGOUnJ72YBFmj7Kzni7jH2YkTCGbdRy/1FeZ1
        zBDfE2vqNoze+2MJNYXzOV5kXA==
X-Google-Smtp-Source: AA0mqf42yfEtbY3LuOosYdphUyoNCaRQNzlTDPWWiqFP3LP+vSG7eMVTQTmh32xBRdYPkxtdDnlJfQ==
X-Received: by 2002:a19:4f02:0:b0:4a2:1d18:45d8 with SMTP id d2-20020a194f02000000b004a21d1845d8mr12673301lfb.330.1669387345521;
        Fri, 25 Nov 2022 06:42:25 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id c3-20020a056512074300b004aa0870b5e5sm548322lfs.147.2022.11.25.06.42.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Nov 2022 06:42:25 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Stefan Agner <stefan@agner.ch>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/3] arm64: dts: imx: align LED node names with dtschema
Date:   Fri, 25 Nov 2022 15:42:21 +0100
Message-Id: <20221125144223.477376-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

The node names should be generic and DT schema expects certain pattern:

  freescale/imx8mm-emcon-avari.dtb: leds: 'green', 'red' do not match any of the regexes: '(^led-[0-9a-f]$|led)', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/freescale/imx8mm-emcon.dtsi         | 4 ++--
 arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-emcon.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-emcon.dtsi
index 0dbdc9ec3fe5..3d859a350bd5 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-emcon.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-emcon.dtsi
@@ -18,14 +18,14 @@ som_leds: leds {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_gpio_led>;
 
-		green {
+		led-green {
 			label = "som:green";
 			gpios = <&gpio3 4 GPIO_ACTIVE_HIGH>;
 			default-state = "on";
 			linux,default-trigger = "heartbeat";
 		};
 
-		red {
+		led-red {
 			label = "som:red";
 			gpios = <&gpio5 10 GPIO_ACTIVE_HIGH>;
 			default-state = "off";
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
index 4c8904fba1c1..7605802f294d 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
@@ -64,7 +64,7 @@ button-3 {
 	leds {
 		compatible = "pwm-leds";
 
-		led1 {
+		led-1 {
 			function = LED_FUNCTION_STATUS;
 			color = <LED_COLOR_ID_RED>;
 			max-brightness = <248>;
-- 
2.34.1

