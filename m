Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D60A2638CA0
	for <lists+devicetree@lfdr.de>; Fri, 25 Nov 2022 15:43:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230255AbiKYOnx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Nov 2022 09:43:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230250AbiKYOnb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Nov 2022 09:43:31 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E777513F1C
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 06:42:40 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id bp15so7163117lfb.13
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 06:42:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vtJgE6MWCE5V0elIry10gNbluU3jvcOlEuD6Tikbpp0=;
        b=b1bGq5cMWzkplo64/4Ti7ZcT4wKln5rH9e2Ni774iFTVjrNgSZ2zHJ09cNNgkEVY9G
         JBRBo1492iESvGfswJWzmSGSgQnP83VFM+cewz8Jf13cf2hLQn62vtL2fgXfU9lKLwdy
         FLUfrtHqWt1XCfVgK3oZPmGI91fBfNnYyYFL54DgrmEKFhp+GS62UYqWIdSaVh8lI6BN
         V9rcsXNt3RGcv3Rs+HuaWA2aBF5bQyFSmyBqeWWkPg60VoNbLDu4VJlUC9AZXn5ugoMR
         Jt7mELn7d/aOLH+K7MhrM4f2SwNN5A5DWro51PZM1pwSzugmLLAutMUmX54Erbmo+sFO
         gWGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vtJgE6MWCE5V0elIry10gNbluU3jvcOlEuD6Tikbpp0=;
        b=PxeYuTUTasrf3dGHlZAAM/4O97OwEPhL3LKP3cKvU0rVTxd+Syb6ciQDbvvjw4sbz0
         Q61UbeCfUjQci37WDNnilT0PyaErGkW4+In96VdoMRo27pNIdpIIt73vW6Z7HqiQTTuT
         xLy8y9oGS14uPwRDtSY7ayskAjJ0rZ5gjfUvIOCv/vQy3ihWm0NEOqsarEGzgrZFxPuN
         84t/plePd+I5ZYYXOcoJ8xx2m4CmTjPqbtu2nTsBHUpOGmYvLIVqOaX0x0ALRbX3jnzh
         2b0Bnm2oY/l6Ar7F0GSXfuv0DuCIWzNweAhlwyTQnPHcQNkhRlccChtFt3z7uLHEFjO8
         whTw==
X-Gm-Message-State: ANoB5pm1XBGkYdaP06W+B3IcCwCudOxK+6BfvZvaJlSsANdQvD2ywM65
        s2Frxin8+5tKB8w2IcoHTRt8sA==
X-Google-Smtp-Source: AA0mqf4f3vsezwBCExl1EUkQRm74wuffmF4JK7mwpUCmMAvayljaeo6eu7Bro4/XwNiVbCjOgGvnrQ==
X-Received: by 2002:a05:6512:2087:b0:4a6:c596:7000 with SMTP id t7-20020a056512208700b004a6c5967000mr12277342lfr.104.1669387358872;
        Fri, 25 Nov 2022 06:42:38 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id b16-20020a056512071000b004a8b9c68735sm415940lfs.102.2022.11.25.06.42.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Nov 2022 06:42:38 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Dinh Nguyen <dinguyen@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] ARM: dts: socfpga: align LED node names with dtschema
Date:   Fri, 25 Nov 2022 15:42:36 +0100
Message-Id: <20221125144236.477416-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221125144236.477416-1-krzysztof.kozlowski@linaro.org>
References: <20221125144236.477416-1-krzysztof.kozlowski@linaro.org>
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

The node names should be generic and DT schema expects certain pattern:

  socfpga_arria5_socdk.dtb: leds: 'hps0', 'hps1', 'hps2', 'hps3' do not match any of the regexes: '(^led-[0-9a-f]$|led)', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/socfpga_arria5_socdk.dts          | 8 ++++----
 arch/arm/boot/dts/socfpga_cyclone5_de0_nano_soc.dts | 2 +-
 arch/arm/boot/dts/socfpga_cyclone5_socdk.dts        | 8 ++++----
 3 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/socfpga_arria5_socdk.dts b/arch/arm/boot/dts/socfpga_arria5_socdk.dts
index 7f5458d8fccc..c48385702a85 100644
--- a/arch/arm/boot/dts/socfpga_arria5_socdk.dts
+++ b/arch/arm/boot/dts/socfpga_arria5_socdk.dts
@@ -29,22 +29,22 @@ aliases {
 
 	leds {
 		compatible = "gpio-leds";
-		hps0 {
+		led-hps0 {
 			label = "hps_led0";
 			gpios = <&porta 0 1>;
 		};
 
-		hps1 {
+		led-hps1 {
 			label = "hps_led1";
 			gpios = <&portb 11 1>;
 		};
 
-		hps2 {
+		led-hps2 {
 			label = "hps_led2";
 			gpios = <&porta 17 1>;
 		};
 
-		hps3 {
+		led-hps3 {
 			label = "hps_led3";
 			gpios = <&porta 18 1>;
 		};
diff --git a/arch/arm/boot/dts/socfpga_cyclone5_de0_nano_soc.dts b/arch/arm/boot/dts/socfpga_cyclone5_de0_nano_soc.dts
index c8f051fb2bf6..bedf577cb056 100644
--- a/arch/arm/boot/dts/socfpga_cyclone5_de0_nano_soc.dts
+++ b/arch/arm/boot/dts/socfpga_cyclone5_de0_nano_soc.dts
@@ -33,7 +33,7 @@ regulator_3_3v: regulator {
 
 	leds {
 		compatible = "gpio-leds";
-		hps0 {
+		led-hps0 {
 			label = "hps_led0";
 			gpios = <&portb 24 0>;
 			linux,default-trigger = "heartbeat";
diff --git a/arch/arm/boot/dts/socfpga_cyclone5_socdk.dts b/arch/arm/boot/dts/socfpga_cyclone5_socdk.dts
index b2241205c7a9..c7f5fa0ba0f2 100644
--- a/arch/arm/boot/dts/socfpga_cyclone5_socdk.dts
+++ b/arch/arm/boot/dts/socfpga_cyclone5_socdk.dts
@@ -29,22 +29,22 @@ aliases {
 
 	leds {
 		compatible = "gpio-leds";
-		hps0 {
+		led-hps0 {
 			label = "hps_led0";
 			gpios = <&portb 15 1>;
 		};
 
-		hps1 {
+		led-hps1 {
 			label = "hps_led1";
 			gpios = <&portb 14 1>;
 		};
 
-		hps2 {
+		led-hps2 {
 			label = "hps_led2";
 			gpios = <&portb 13 1>;
 		};
 
-		hps3 {
+		led-hps3 {
 			label = "hps_led3";
 			gpios = <&portb 12 1>;
 		};
-- 
2.34.1

