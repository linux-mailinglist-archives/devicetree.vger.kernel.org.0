Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D93FA54D665
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 02:58:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350505AbiFPAys (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 20:54:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350502AbiFPAyb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 20:54:31 -0400
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EB7C579B2
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 17:54:20 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id 3-20020a17090a174300b001e426a02ac5so370494pjm.2
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 17:54:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=tGTPqf53Lj9/8GsMg13z01n1z5EhrPKNzDb0BXUNfys=;
        b=imzLz7hkw0xDQ5bcaTiu6NBK7dS+wL7BA/wi7ulf/eXucrkRhXVhbM4BdsvGl3IAO8
         PJrV3SA+qkkoTiO6q3tbzzXPxqjiTbZ3WbROwx9OSiCsw9y9PJJnTG27IfM1RkLBBcTQ
         yN9t6CQKy7ISP1XE1qlQaHQGHdWr8MGgdLm1t53YYuFcuPU/ZzPQPIvWggH0bCUhcecT
         59mIgU4kcTRsq35trroqJBaw1HVmg/UEsqxPDy678LwW0xFoDUm7pw0E+HL/t+aZ72by
         46CYYGwekKxmiHiuoyJfpSy2794/RPZuGwdZDyaKL8uK0N1hrXRuVm2oqcysdp7wd2yq
         Infg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tGTPqf53Lj9/8GsMg13z01n1z5EhrPKNzDb0BXUNfys=;
        b=IHstHU8qZikQn2jDdKYMLkqRtf4HIyVULe1hBkGMhWNg9z30qhvyuyxkpa9IXLGz//
         8Xo/EMR+Ccfj4AJj+6OzItzxW0f23xW3bDxmfYFGaeJcZucBwSxhV5boUcSEWhBjEWPq
         zP0alYZsQ5vee/WwFegfntN1PO3eXxaCWpSredBmb50uf9XHOGFbrd+8DcY9aYKJahVp
         p4W+KwDwky0DOjkDcZhsefFoLmYgnt83llnrZz9gMuuYt4s6KGtSKEB0B43T2BNc7zPd
         wG369tut37NVJa5FreyVcC7rvnThLapvOoB2SwU3lUFCDOjpqG/k2zLogT+Jd6ZOelhr
         1xdA==
X-Gm-Message-State: AJIora9rHdPFMy2GbqBtSa02F6qcvnhFIfpAhVdPLHSIOVmpLhX81t5W
        zzgS2duWqGvUgt3FMAU8ZntFRA==
X-Google-Smtp-Source: AGRyM1tAUWMoTe1+UGuqnfRFsdpszLuSA8ql6hYeutqISeJUosITT+V0GIs9M5h7ypRYxwPnRvVZAA==
X-Received: by 2002:a17:902:d4cd:b0:167:4fa1:44b6 with SMTP id o13-20020a170902d4cd00b001674fa144b6mr2159478plg.15.1655340859523;
        Wed, 15 Jun 2022 17:54:19 -0700 (PDT)
Received: from krzk-bin.. ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id p4-20020a170902780400b0016760c06b76sm233660pll.194.2022.06.15.17.54.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jun 2022 17:54:19 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     arm@kernel.org, soc@kernel.org, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 18/40] ARM: dts: mediatek: align gpio-key node names with dtschema
Date:   Wed, 15 Jun 2022 17:53:11 -0700
Message-Id: <20220616005333.18491-18-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220616005224.18391-1-krzysztof.kozlowski@linaro.org>
References: <20220616005224.18391-1-krzysztof.kozlowski@linaro.org>
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

The node names should be generic and DT schema expects certain pattern
(e.g. with key/button/switch).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/mt7623a-rfb-emmc.dts        | 4 ++--
 arch/arm/boot/dts/mt7623a-rfb-nand.dts        | 4 ++--
 arch/arm/boot/dts/mt7623n-bananapi-bpi-r2.dts | 4 ++--
 arch/arm/boot/dts/mt7623n-rfb-emmc.dts        | 4 ++--
 arch/arm/boot/dts/mt7629-rfb.dts              | 4 ++--
 5 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boot/dts/mt7623a-rfb-emmc.dts b/arch/arm/boot/dts/mt7623a-rfb-emmc.dts
index 13c86936d1c8..e8b4b6d30d19 100644
--- a/arch/arm/boot/dts/mt7623a-rfb-emmc.dts
+++ b/arch/arm/boot/dts/mt7623a-rfb-emmc.dts
@@ -45,13 +45,13 @@ gpio-keys {
 		pinctrl-names = "default";
 		pinctrl-0 = <&key_pins_a>;
 
-		factory {
+		button-factory {
 			label = "factory";
 			linux,code = <BTN_0>;
 			gpios = <&pio 256 GPIO_ACTIVE_LOW>;
 		};
 
-		wps {
+		button-wps {
 			label = "wps";
 			linux,code = <KEY_WPS_BUTTON>;
 			gpios = <&pio 257 GPIO_ACTIVE_HIGH>;
diff --git a/arch/arm/boot/dts/mt7623a-rfb-nand.dts b/arch/arm/boot/dts/mt7623a-rfb-nand.dts
index 88d8f0b2f4c2..61f5da68d4b0 100644
--- a/arch/arm/boot/dts/mt7623a-rfb-nand.dts
+++ b/arch/arm/boot/dts/mt7623a-rfb-nand.dts
@@ -45,13 +45,13 @@ gpio-keys {
 		pinctrl-names = "default";
 		pinctrl-0 = <&key_pins_a>;
 
-		factory {
+		button-factory {
 			label = "factory";
 			linux,code = <BTN_0>;
 			gpios = <&pio 256 GPIO_ACTIVE_LOW>;
 		};
 
-		wps {
+		button-wps {
 			label = "wps";
 			linux,code = <KEY_WPS_BUTTON>;
 			gpios = <&pio 257 GPIO_ACTIVE_HIGH>;
diff --git a/arch/arm/boot/dts/mt7623n-bananapi-bpi-r2.dts b/arch/arm/boot/dts/mt7623n-bananapi-bpi-r2.dts
index 027c1b0c6a98..5008115d2494 100644
--- a/arch/arm/boot/dts/mt7623n-bananapi-bpi-r2.dts
+++ b/arch/arm/boot/dts/mt7623n-bananapi-bpi-r2.dts
@@ -91,13 +91,13 @@ gpio-keys {
 		pinctrl-names = "default";
 		pinctrl-0 = <&key_pins_a>;
 
-		factory {
+		button-factory {
 			label = "factory";
 			linux,code = <BTN_0>;
 			gpios = <&pio 256 GPIO_ACTIVE_LOW>;
 		};
 
-		wps {
+		button-wps {
 			label = "wps";
 			linux,code = <KEY_WPS_BUTTON>;
 			gpios = <&pio 257 GPIO_ACTIVE_HIGH>;
diff --git a/arch/arm/boot/dts/mt7623n-rfb-emmc.dts b/arch/arm/boot/dts/mt7623n-rfb-emmc.dts
index 1b9b9a8145a7..bf67a8e9be59 100644
--- a/arch/arm/boot/dts/mt7623n-rfb-emmc.dts
+++ b/arch/arm/boot/dts/mt7623n-rfb-emmc.dts
@@ -60,13 +60,13 @@ gpio-keys {
 		pinctrl-names = "default";
 		pinctrl-0 = <&key_pins_a>;
 
-		factory {
+		button-factory {
 			label = "factory";
 			linux,code = <BTN_0>;
 			gpios = <&pio 256 GPIO_ACTIVE_LOW>;
 		};
 
-		wps {
+		button-wps {
 			label = "wps";
 			linux,code = <KEY_WPS_BUTTON>;
 			gpios = <&pio 257 GPIO_ACTIVE_HIGH>;
diff --git a/arch/arm/boot/dts/mt7629-rfb.dts b/arch/arm/boot/dts/mt7629-rfb.dts
index eb536cbebd9b..84e14bee7235 100644
--- a/arch/arm/boot/dts/mt7629-rfb.dts
+++ b/arch/arm/boot/dts/mt7629-rfb.dts
@@ -23,13 +23,13 @@ chosen {
 	gpio-keys {
 		compatible = "gpio-keys";
 
-		reset {
+		button-reset {
 			label = "factory";
 			linux,code = <KEY_RESTART>;
 			gpios = <&pio 60 GPIO_ACTIVE_LOW>;
 		};
 
-		wps {
+		button-wps {
 			label = "wps";
 			linux,code = <KEY_WPS_BUTTON>;
 			gpios = <&pio 58 GPIO_ACTIVE_LOW>;
-- 
2.34.1

