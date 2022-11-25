Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2E94C638CA1
	for <lists+devicetree@lfdr.de>; Fri, 25 Nov 2022 15:43:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230121AbiKYOnx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Nov 2022 09:43:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230174AbiKYOn2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Nov 2022 09:43:28 -0500
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E42591AD93
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 06:42:39 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id p8so7188699lfu.11
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 06:42:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hIDtJg6AVc8MDq9EJhxblYU764Kz9jP/oJ2QO0gSk84=;
        b=iVxpihDRgi3W2qyEp7dZh0RHGGtcrPQHf/FUEgF8kSs/OyqXtsBxbLXQoQq/deLpUI
         7E/RS3EUV4m7wmhJl3KxHNfuFanzfNGLuSTFIReCOLX01rCWToX6IUURZHhHKjdn00Oi
         fUt9Z7Q69RRzLLeoMSlfy9SP5Zw4u5nYf66GeYjw4oPmEIfXqM1he4wHLBibaCZBZXHN
         uoa9U5BYvHvtsvFp72FwjdPdCWsbrOKZuExAkjF1LfB9nmZdqg3oIjX3/K7F9RBRHqmu
         Zo4xJa/aI4BlI+rH4dNwamwah0V5/oMFPHL1xojWMaqqiZy5H4fhBrVJNFCEsAQgh4AF
         GjNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hIDtJg6AVc8MDq9EJhxblYU764Kz9jP/oJ2QO0gSk84=;
        b=iqGvSH6GU3ySNiZm0jmFFmckCA2E3nSkjfmewawO0keSgrQYg7vpWYJ0IuZrbecHa6
         B7t9YapPGXLyrtkURW9ll0i6FJr+pRYXIDcomWXJH82dprtKIQ2GfA22WBnEJR6rjsOg
         baIHPX+W4Eyn3dZ5yEVqBbZ0gBflpi01L3T6Mr3Nm1GANbGuq4ry3FywDV2KLrtNeKRs
         TljQ6QvlyyBCbUukYPO4xoVIIe2ILVRjB7Eb8N52zry5jYOR9m1qzMs7FBboKqB+IrsY
         8CnocjAoruxJZdgDg7l3KtyigZdfRBDREiukpMWOuRrbJ/KW+xBNSvWE/TVD9C6U3Y4Y
         ykQg==
X-Gm-Message-State: ANoB5pmYKQxP1OynfQlbXvMT+aqxNZ/Xou7y0Gb4KkWWxlmtmWt/k4nT
        LmcWr0ZCYCCmJSAuWcX42DOZLQ==
X-Google-Smtp-Source: AA0mqf5Z+xFnVkbNrAoybasK3G3eIYlMNbs/bKtlPWp6unBWjYfdKot0dqAgT44tf1d753K/TGtIaw==
X-Received: by 2002:ac2:5618:0:b0:4a2:455c:622a with SMTP id v24-20020ac25618000000b004a2455c622amr6254776lfd.508.1669387358006;
        Fri, 25 Nov 2022 06:42:38 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id b16-20020a056512071000b004a8b9c68735sm415940lfs.102.2022.11.25.06.42.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Nov 2022 06:42:37 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Dinh Nguyen <dinguyen@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] arm64: dts: altera: align LED node names with dtschema
Date:   Fri, 25 Nov 2022 15:42:35 +0100
Message-Id: <20221125144236.477416-1-krzysztof.kozlowski@linaro.org>
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

  altera/socfpga_stratix10_socdk.dtb: leds: 'hps0', 'hps1', 'hps2' do not match any of the regexes: '(^led-[0-9a-f]$|led)', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts      | 6 +++---
 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts | 6 +++---
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
index 48424e459f12..dd2b41350412 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
@@ -22,17 +22,17 @@ chosen {
 
 	leds {
 		compatible = "gpio-leds";
-		hps0 {
+		led-hps0 {
 			label = "hps_led0";
 			gpios = <&portb 20 GPIO_ACTIVE_HIGH>;
 		};
 
-		hps1 {
+		led-hps1 {
 			label = "hps_led1";
 			gpios = <&portb 19 GPIO_ACTIVE_HIGH>;
 		};
 
-		hps2 {
+		led-hps2 {
 			label = "hps_led2";
 			gpios = <&portb 21 GPIO_ACTIVE_HIGH>;
 		};
diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts
index 847a7c01f5af..ede99dcc0558 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts
@@ -22,17 +22,17 @@ chosen {
 
 	leds {
 		compatible = "gpio-leds";
-		hps0 {
+		led-hps0 {
 			label = "hps_led0";
 			gpios = <&portb 20 GPIO_ACTIVE_HIGH>;
 		};
 
-		hps1 {
+		led-hps1 {
 			label = "hps_led1";
 			gpios = <&portb 19 GPIO_ACTIVE_HIGH>;
 		};
 
-		hps2 {
+		led-hps2 {
 			label = "hps_led2";
 			gpios = <&portb 21 GPIO_ACTIVE_HIGH>;
 		};
-- 
2.34.1

