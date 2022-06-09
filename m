Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 458B5544A6E
	for <lists+devicetree@lfdr.de>; Thu,  9 Jun 2022 13:39:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234156AbiFILjl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Jun 2022 07:39:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242565AbiFILjd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Jun 2022 07:39:33 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4165193224
        for <devicetree@vger.kernel.org>; Thu,  9 Jun 2022 04:39:31 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id 25so30535203edw.8
        for <devicetree@vger.kernel.org>; Thu, 09 Jun 2022 04:39:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=moyo8KWDYD1Sw7v39IoJtDJxVuleCUkjc8zzaL8h67s=;
        b=aY58Eyp/oD4ErEbOY4zHZiaIvRUCdLzGhe26XILJWGeJ5qA1isPZOhDq5/RqXtUQZf
         XBklI52EapnvH2OPYq9DNGaULO94GxSobSDDq7clP59LhTHITTlvxzMBoYMMs04H3p4C
         HiHcYqoiY6nBx91Zb/DGOhgCNr03qzvP5M0mgdJTQJaG3xSPwOT193YOXoHqmd2d0NLU
         4ZIHD0jukYdjF774IvCk3cwq6giHMxc7EHu+B2DPGoB4H+BoiH9GmflcLkSplsPLMgIY
         t1abRppSqVEzXBJJ6aVnT5Zvy8xf2ZqcMaZVfkM/ssdp8i3XHlvkA6eMbccro8MbW3w0
         vMjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=moyo8KWDYD1Sw7v39IoJtDJxVuleCUkjc8zzaL8h67s=;
        b=m4w9Hei3zFR4iITd0SAACczy3tcayekn3F+JtaJnyQ2b51unTlWNGHPKGEY5VkG370
         xn8cvLJi30rLaQPDTcuQrrR/zA315kNv/NnLZb3Ju+UABjcLNS4mh2J6HSC5kRAPrHlo
         0GUsGejjU8/Sq71gTPRW+jyX1i9AMlI4cHRgnoIvvjPaLf8eer9Vta+x/cPjtbVDHsH+
         3+O4/HyfogcCLqwN3e2HleMpmWCvXspn1+PNzKp67ijdbMUY2hThR6aBZ4oWvsDwBCHN
         yNxH8uClJASezixjleXkqFXUGo48jC20FR1ZbYOjMEqcSU10gteVI37zhMdITMjRNMcb
         QasA==
X-Gm-Message-State: AOAM531m+18/sF5xMdcSU/IWLLwVrzJFx5AaRymoow2rmol5i/Z8I9Pq
        rWpCs9AL4gN1RDj8KRddwfEJOQ==
X-Google-Smtp-Source: ABdhPJxNWpQCygCIS3enUIsR+XqOJyd9NdAUtnRSVKLoNE/vwqCX3MSchbBiqeaPMSb5jXkyLlQBhg==
X-Received: by 2002:a05:6402:5212:b0:42e:2fa:41a7 with SMTP id s18-20020a056402521200b0042e02fa41a7mr44238163edd.22.1654774770535;
        Thu, 09 Jun 2022 04:39:30 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id u14-20020aa7d54e000000b0042e21f8c412sm11898495edr.42.2022.06.09.04.39.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 04:39:30 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        arm@kernel.org, soc@kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 08/48] arm64: dts: amlogic: align gpio-key node names with dtschema
Date:   Thu,  9 Jun 2022 13:39:10 +0200
Message-Id: <20220609113911.380368-7-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220609113721.379932-1-krzysztof.kozlowski@linaro.org>
References: <20220609113721.379932-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The node names should be generic and DT schema expects certain pattern
(e.g. with key/button/switch).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
index a5d79f2f7c19..603337ca5608 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
@@ -48,7 +48,7 @@ emmc_pwrseq: emmc-pwrseq {
 	gpio-keys {
 		compatible = "gpio-keys";
 
-		key1 {
+		key-1 {
 			label = "A";
 			linux,code = <BTN_0>;
 			gpios = <&gpio GPIOH_6 GPIO_ACTIVE_LOW>;
@@ -56,7 +56,7 @@ key1 {
 			interrupts = <34 IRQ_TYPE_EDGE_BOTH>;
 		};
 
-		key2 {
+		key-2 {
 			label = "B";
 			linux,code = <BTN_1>;
 			gpios = <&gpio GPIOH_7 GPIO_ACTIVE_LOW>;
@@ -64,7 +64,7 @@ key2 {
 			interrupts = <35 IRQ_TYPE_EDGE_BOTH>;
 		};
 
-		key3 {
+		key-3 {
 			label = "C";
 			linux,code = <BTN_2>;
 			gpios = <&gpio_ao GPIOAO_2 GPIO_ACTIVE_LOW>;
@@ -72,7 +72,7 @@ key3 {
 			interrupts = <2 IRQ_TYPE_EDGE_BOTH>;
 		};
 
-		mic_mute {
+		key-mic-mute {
 			label = "MicMute";
 			linux,code = <SW_MUTE_DEVICE>;
 			linux,input-type = <EV_SW>;
@@ -81,7 +81,7 @@ mic_mute {
 			interrupts = <99 IRQ_TYPE_EDGE_BOTH>;
 		};
 
-		power_key {
+		key-power {
 			label = "PowerKey";
 			linux,code = <KEY_POWER>;
 			gpios = <&gpio_ao GPIOAO_3 GPIO_ACTIVE_LOW>;
-- 
2.34.1

