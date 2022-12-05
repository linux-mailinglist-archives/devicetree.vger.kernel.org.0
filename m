Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 187476429EB
	for <lists+devicetree@lfdr.de>; Mon,  5 Dec 2022 14:53:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232481AbiLENxA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Dec 2022 08:53:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232479AbiLENwQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Dec 2022 08:52:16 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3663317E38
        for <devicetree@vger.kernel.org>; Mon,  5 Dec 2022 05:52:13 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id y16so18701495wrm.2
        for <devicetree@vger.kernel.org>; Mon, 05 Dec 2022 05:52:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3uc9R8Uf/pCe2qvKF4aFF/8KuZBFNDVNUUa6PyIFKSQ=;
        b=RkjkX1iZ5R0Yaqz0WAQr37pobuFT+aJMIBmxyWhCn6lx6BNIMq1ZuMmZIi5eq7x44P
         fI58BD0j/5M2j/PhK/mv6zK5XSPQDLjr6cFSQp7/290ryoDIthzp7GH6pCqbcq33Czws
         tu72Agr5scZe48h6R/exhLO7qC5J7LJHAdfIpgHSs/TOAB91haaBQlcCdornhma56CwQ
         ycTatCKwkajBhUQxSrgwuayQvqRmJiKpekpHKYhpb1GxoDvybMyrHy6uIu+xb5lkoK2+
         FovoXA66R3UESptREd5ICtcrnTOQjuIuFFfqsAAV8nHpPZfoa2l91ZG/fM1sUtWdxAEz
         1lXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3uc9R8Uf/pCe2qvKF4aFF/8KuZBFNDVNUUa6PyIFKSQ=;
        b=Ef/bzOBIIriV9IesMgTBKXao8b4gfR5xhmwl4p3Wgy0Sm+FBEYIL52ToTsjaX/nhlh
         XCyLF7wgfbhLYtuhqC3GWzLDsgf+6MBBC6WlLZBPiKh/p/vwufYgZYaaSQvTLfBtbns8
         NOvNrjqE9IQnL69svtVkA6v5k8BpKH/fVyv2/bx2yyDN3stacsWfMZwUSMWfA0seq/rh
         uJSnYxeJU7L/w04aMa3vQwuklxqcycBaBceGGpmbcQXwjEarG+WyrHVHeWFHVc1dZccU
         jT4PvyfaxQLBJ3KMbWtWKH5ew1CVTcQvFL/DmB6zGELHa55WohmGxaES0t/ghmtxSm5t
         jALg==
X-Gm-Message-State: ANoB5pk2k6ip8q8uMeH/X+44iTredr6d1gxDW/RWwyXsfijOl8kXaSiq
        iFp9a4txsbnDJT1CBcK95lxTWFK/qXz64J/6cRl5yg==
X-Google-Smtp-Source: AA0mqf5FPRwt19PLh2T1fJ+ixYYqormZd+LI8rffdiI7G4LLSJQHjGxKOWRYJ5cKOJWEYhztpWv1xA==
X-Received: by 2002:adf:fec6:0:b0:242:4697:d828 with SMTP id q6-20020adffec6000000b002424697d828mr8422358wrs.494.1670248331460;
        Mon, 05 Dec 2022 05:52:11 -0800 (PST)
Received: from predatorhelios.baylibre (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id a3-20020adffac3000000b0024245e543absm9012700wrs.88.2022.12.05.05.52.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Dec 2022 05:52:11 -0800 (PST)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com,
        krzysztof.kozlowski@linaro.org, matthias.bgg@gmail.com,
        angelogioacchino.delregno@collabora.com, khilman@baylibre.com,
        linux-gpio@vger.kernel.org
Subject: [PATCH v4 3/3] ARM: dts: stm32: Remove the pins-are-numbered property
Date:   Mon,  5 Dec 2022 14:51:58 +0100
Message-Id: <20221205135158.1842465-4-bero@baylibre.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221205135158.1842465-1-bero@baylibre.com>
References: <20221205135158.1842465-1-bero@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Remove the pins-are-numbered property from STM32 DeviceTrees

Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
---
 arch/arm/boot/dts/stm32f4-pinctrl.dtsi | 1 -
 arch/arm/boot/dts/stm32f7-pinctrl.dtsi | 1 -
 arch/arm/boot/dts/stm32h743.dtsi       | 1 -
 arch/arm/boot/dts/stm32mp131.dtsi      | 1 -
 arch/arm/boot/dts/stm32mp151.dtsi      | 2 --
 5 files changed, 6 deletions(-)

diff --git a/arch/arm/boot/dts/stm32f4-pinctrl.dtsi b/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
index 500bcc302d422..4523c63475e4c 100644
--- a/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
@@ -51,7 +51,6 @@ pinctrl: pinctrl@40020000 {
 			ranges = <0 0x40020000 0x3000>;
 			interrupt-parent = <&exti>;
 			st,syscfg = <&syscfg 0x8>;
-			pins-are-numbered;
 
 			gpioa: gpio@40020000 {
 				gpio-controller;
diff --git a/arch/arm/boot/dts/stm32f7-pinctrl.dtsi b/arch/arm/boot/dts/stm32f7-pinctrl.dtsi
index 8f37aefa73150..c8e6c52fb248e 100644
--- a/arch/arm/boot/dts/stm32f7-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32f7-pinctrl.dtsi
@@ -15,7 +15,6 @@ pinctrl: pinctrl@40020000 {
 			ranges = <0 0x40020000 0x3000>;
 			interrupt-parent = <&exti>;
 			st,syscfg = <&syscfg 0x8>;
-			pins-are-numbered;
 
 			gpioa: gpio@40020000 {
 				gpio-controller;
diff --git a/arch/arm/boot/dts/stm32h743.dtsi b/arch/arm/boot/dts/stm32h743.dtsi
index 28e3deb20e1e1..f30796f7adf36 100644
--- a/arch/arm/boot/dts/stm32h743.dtsi
+++ b/arch/arm/boot/dts/stm32h743.dtsi
@@ -588,7 +588,6 @@ pinctrl: pinctrl@58020000 {
 			ranges = <0 0x58020000 0x3000>;
 			interrupt-parent = <&exti>;
 			st,syscfg = <&syscfg 0x8>;
-			pins-are-numbered;
 
 			gpioa: gpio@58020000 {
 				gpio-controller;
diff --git a/arch/arm/boot/dts/stm32mp131.dtsi b/arch/arm/boot/dts/stm32mp131.dtsi
index accc3824f7e98..6b86e031f60e6 100644
--- a/arch/arm/boot/dts/stm32mp131.dtsi
+++ b/arch/arm/boot/dts/stm32mp131.dtsi
@@ -547,7 +547,6 @@ pinctrl: pinctrl@50002000 {
 			ranges = <0 0x50002000 0x8400>;
 			interrupt-parent = <&exti>;
 			st,syscfg = <&exti 0x60 0xff>;
-			pins-are-numbered;
 
 			gpioa: gpio@50002000 {
 				gpio-controller;
diff --git a/arch/arm/boot/dts/stm32mp151.dtsi b/arch/arm/boot/dts/stm32mp151.dtsi
index 5491b6c4dec20..4e437d3f2ed66 100644
--- a/arch/arm/boot/dts/stm32mp151.dtsi
+++ b/arch/arm/boot/dts/stm32mp151.dtsi
@@ -1660,7 +1660,6 @@ pinctrl: pinctrl@50002000 {
 			ranges = <0 0x50002000 0xa400>;
 			interrupt-parent = <&exti>;
 			st,syscfg = <&exti 0x60 0xff>;
-			pins-are-numbered;
 
 			gpioa: gpio@50002000 {
 				gpio-controller;
@@ -1789,7 +1788,6 @@ pinctrl_z: pinctrl@54004000 {
 			#size-cells = <1>;
 			compatible = "st,stm32mp157-z-pinctrl";
 			ranges = <0 0x54004000 0x400>;
-			pins-are-numbered;
 			interrupt-parent = <&exti>;
 			st,syscfg = <&exti 0x60 0xff>;
 
-- 
2.38.1

