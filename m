Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A58B54D69B
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 02:58:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354038AbiFPAz4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 20:55:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350754AbiFPAzV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 20:55:21 -0400
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4927E5839D
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 17:54:44 -0700 (PDT)
Received: by mail-pf1-x42f.google.com with SMTP id w21so138162pfc.0
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 17:54:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ouHToTpfN91IdC1bQjCsmRZ9s0XMaKvgoUPDfBZdkoE=;
        b=eTXdnaUwhzo9kXPhguu9D3DUUGikVbQltlkxpd3bNBqjlbVPE9rDJuWopEEQFOIKQQ
         FAJ/nG7vLIJX0i/BzyWGtp4988gGMYzs760xhCChCb7FZZrfmfdZFSmW4UhBm68uucQd
         kgCuGxThR/vdsfYnV9vbUTQO38EooKHKBHhLGS1M0XujGGlRqPEwJ6kgZtBEzRdxGEXp
         1Lb//lM9H4gukp8g0JO7H/NvBlHzU6Iu31u36d7+/hXQdWEO0wZHTiEL+oM9OZaSYSYm
         Di9RAg90nYEQhrRP/ilX8lp85wYUHKClYZYxwttPQw4X7txhbrfC9rBWpw/ZMjWtAQxw
         yweg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ouHToTpfN91IdC1bQjCsmRZ9s0XMaKvgoUPDfBZdkoE=;
        b=5vcgG240q5vnqAkg12T6BgvA/vJdFnEdfjflw/YloNthlfEH95MSYkh13ME7IhlHgd
         SFaY1R3AfAVxEe1hhQNToO/pADHzWiTX77FNbXA7qqnBdw4VswP/+FORNYjK3fUalZC+
         VXvP+ljuXbfKasIy/RCXB9GgbsQ8zDLvZmbIbQ43JryHLj+MVuEpt9YvZkaWGMQltECW
         gFOCm6uPyPJAilj9yEuxYiZWWwloS101XwtfxDFTt86ATbR+dXrvIvOCop2loyitPMzI
         2dJEFiMbGPYDBbhDvh8+eWtGodarcAjKdszlydxCuSDygZIWWdbQ9/OOUpoZZ7arACWd
         gQ9Q==
X-Gm-Message-State: AJIora+p4usJYTkyLYIYFLo7r+P/2fvFUQ9E0zskL83fprhxvIO8jJkb
        Dw8NhpjAMep9L2c7SMhT5Yg26A==
X-Google-Smtp-Source: AGRyM1shJqjBNqPwm8ZmASifevUrtaqHedZ6chas4eh4BAG7FBncurDDJ/aqtyLhutQ4EiRtLcE3tQ==
X-Received: by 2002:a65:668b:0:b0:3f6:4026:97cd with SMTP id b11-20020a65668b000000b003f6402697cdmr2146963pgw.420.1655340884020;
        Wed, 15 Jun 2022 17:54:44 -0700 (PDT)
Received: from krzk-bin.. ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id p4-20020a170902780400b0016760c06b76sm233660pll.194.2022.06.15.17.54.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jun 2022 17:54:43 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     arm@kernel.org, soc@kernel.org, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 34/40] ARM: dts: animeo: align gpio-key node names with dtschema
Date:   Wed, 15 Jun 2022 17:53:27 -0700
Message-Id: <20220616005333.18491-34-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220616005224.18391-1-krzysztof.kozlowski@linaro.org>
References: <20220616005224.18391-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The node names should be generic and DT schema expects certain pattern
(e.g. with key/button/switch).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/animeo_ip.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/animeo_ip.dts b/arch/arm/boot/dts/animeo_ip.dts
index 7da718abbd85..3fa3db2d9d02 100644
--- a/arch/arm/boot/dts/animeo_ip.dts
+++ b/arch/arm/boot/dts/animeo_ip.dts
@@ -168,26 +168,26 @@ tx_red {
 		};
 	};
 
-	gpio_keys {
+	gpio-keys {
 		compatible = "gpio-keys";
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		keyswitch_in {
+		key-switch-in {
 			label = "keyswitch_in";
 			gpios = <&pioB 1 GPIO_ACTIVE_HIGH>;
 			linux,code = <28>;
 			wakeup-source;
 		};
 
-		error_in {
+		key-error-in {
 			label = "error_in";
 			gpios = <&pioB 2 GPIO_ACTIVE_HIGH>;
 			linux,code = <29>;
 			wakeup-source;
 		};
 
-		btn {
+		key-s {
 			label = "btn";
 			gpios = <&pioC 23 GPIO_ACTIVE_HIGH>;
 			linux,code = <31>;
-- 
2.34.1

