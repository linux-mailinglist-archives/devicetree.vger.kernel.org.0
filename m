Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B5F7A544AE3
	for <lists+devicetree@lfdr.de>; Thu,  9 Jun 2022 13:46:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244260AbiFILp1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Jun 2022 07:45:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244568AbiFILms (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Jun 2022 07:42:48 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A19B21DF114
        for <devicetree@vger.kernel.org>; Thu,  9 Jun 2022 04:41:03 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id fu3so45398406ejc.7
        for <devicetree@vger.kernel.org>; Thu, 09 Jun 2022 04:41:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=a7AVzyUmsqVPd91IAsbJZXPj8ozhTONPXm6ECNLQgio=;
        b=bzsQQpQMea7pB37AbYmp+iBb7tzYIqsnIH+vEjHsewmVTalQt/P9huDagHIU1AoTzX
         IuAnjSxsWyyjGE/U4REcA9LfcCp5Yv9++0CLm3752tv8d90EK1HXsBRLn58XM9/i4Lht
         b2nw/fa9JlAoV2BL80uH0iM6BOxSJSKR6bdw5DE2PDIGUiWJya6jHOoDONihw/AK4onp
         ECCmAa5j2ewt/2OdlndAjdq0mjXnw+FHVUWq+PYy1OaF/lgsWz858DmZreIkbqTmwQJE
         AM2CEKeqoIoiJg3UleZwjMSiD81bQizM47IhZjeCLLg+D6BXZ62wwTyl4UyIOxHhw1+B
         E0tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=a7AVzyUmsqVPd91IAsbJZXPj8ozhTONPXm6ECNLQgio=;
        b=bq4yrlD5x4hWZsIA7xve2lSyHwje1h5AnUtI+xQqyZpuxDzP0EKVhLmUDRpfx7Lwx1
         dnE2XSbptCmEHcHN5DXwE0cx7w2Hj8JEmi23zjiKcNhJnxAL+HA4WRMTJfD/+bKuOxuP
         Zzoim7wIkJQmislno+Pre8qVDPJG40oA0kc4t1K/VZIqykztC8RPgEkftUHjE7NzOb2a
         PbBTPTinzHj/NwHz6GylR7ySk6MEbJ1lAMVS7pimJWSQsjwDjvAjoXgJKq+EQZV1FRHr
         9bzxKRsm7iN0RIUdht3RwQDVEHRWwP902xc/dI7H4vMCZx+0pum8wdTeJwLZEj36w3N6
         XqOQ==
X-Gm-Message-State: AOAM532y4R5yTx5z5RyfGq9Im/5uY+JTF0lC4XY7Wu0RA63kPSsI+Q6G
        +vizYqLEZTMktnD+VhgvEEWK1Q==
X-Google-Smtp-Source: ABdhPJyWwogLsE1DiHbVVqhQ4XJnLO8mzMs5f7M6JmVUARXRdLSDMkAYFuzgelKC5xtHU6wFcSHc0Q==
X-Received: by 2002:a17:907:968e:b0:6f4:d80f:f0c3 with SMTP id hd14-20020a170907968e00b006f4d80ff0c3mr33787314ejc.145.1654774862082;
        Thu, 09 Jun 2022 04:41:02 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id bk2-20020a170906b0c200b006fef557bb7asm10498662ejb.80.2022.06.09.04.41.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 04:41:01 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        arm@kernel.org, soc@kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Claudiu Beznea <claudiu.beznea@microchip.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 46/48] ARM: dts: at91: drop unneeded status from gpio-keys
Date:   Thu,  9 Jun 2022 13:40:45 +0200
Message-Id: <20220609114047.380793-7-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220609113721.379932-1-krzysztof.kozlowski@linaro.org>
References: <20220609113721.379932-1-krzysztof.kozlowski@linaro.org>
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

Nodes do not need explicit status=okay.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/at91-sam9x60ek.dts          | 1 -
 arch/arm/boot/dts/at91-sama5d27_wlsom1_ek.dts | 1 -
 arch/arm/boot/dts/at91-sama5d2_icp.dts        | 1 -
 3 files changed, 3 deletions(-)

diff --git a/arch/arm/boot/dts/at91-sam9x60ek.dts b/arch/arm/boot/dts/at91-sam9x60ek.dts
index 7bf99bdbafcf..ade07b9eb101 100644
--- a/arch/arm/boot/dts/at91-sam9x60ek.dts
+++ b/arch/arm/boot/dts/at91-sam9x60ek.dts
@@ -80,7 +80,6 @@ gpio-keys {
 		compatible = "gpio-keys";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_key_gpio_default>;
-		status = "okay";
 
 		switch-1 {
 			label = "SW1";
diff --git a/arch/arm/boot/dts/at91-sama5d27_wlsom1_ek.dts b/arch/arm/boot/dts/at91-sama5d27_wlsom1_ek.dts
index d5652c974748..bd5422495306 100644
--- a/arch/arm/boot/dts/at91-sama5d27_wlsom1_ek.dts
+++ b/arch/arm/boot/dts/at91-sama5d27_wlsom1_ek.dts
@@ -31,7 +31,6 @@ gpio-keys {
 
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_key_gpio_default>;
-		status = "okay";
 
 		switch-4 {
 			label = "USER BUTTON";
diff --git a/arch/arm/boot/dts/at91-sama5d2_icp.dts b/arch/arm/boot/dts/at91-sama5d2_icp.dts
index d7b59e16a081..0023b9d74651 100644
--- a/arch/arm/boot/dts/at91-sama5d2_icp.dts
+++ b/arch/arm/boot/dts/at91-sama5d2_icp.dts
@@ -47,7 +47,6 @@ gpio-keys {
 
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_key_gpio_default>;
-		status = "okay";
 
 		switch-4 {
 			label = "USER_PB1";
-- 
2.34.1

