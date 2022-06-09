Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 860CB544A85
	for <lists+devicetree@lfdr.de>; Thu,  9 Jun 2022 13:41:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243004AbiFILlT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Jun 2022 07:41:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243952AbiFILkn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Jun 2022 07:40:43 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EC1B1E225B
        for <devicetree@vger.kernel.org>; Thu,  9 Jun 2022 04:40:15 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id b8so14140994edj.11
        for <devicetree@vger.kernel.org>; Thu, 09 Jun 2022 04:40:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=tGTPqf53Lj9/8GsMg13z01n1z5EhrPKNzDb0BXUNfys=;
        b=kitaKtvp0SE7mSBoE2pXSTHt21w7Sr98N1rPkBMLXtlzrxPFs3C6pPpgiO8TUgB5vu
         ags+20VIXPW3rq3v27384LQ/XV1dfIlYL/DZFDHhjmcdv1PtEMpkOCYlbQ7XhlYfTJxs
         z39Yc1n9es73zxZmEtVBqZWhy/+MtxCRhL0sZ3gC+G8gP7xJswe7PeHEdmzjkb3Ne2Gf
         NdqBkE8GNjb1x9+Cx82ia4JYKGgYI3mqzKMqY0uQvMCMsLOIWNz1E5r3+U2N2mUr5ZxD
         GOYLb2cKpNPTPsYDWdah6SdXoe33L/XdONnGsx2ILtmTadzAgTcN6XeuVtn7/91xd1BU
         wi4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tGTPqf53Lj9/8GsMg13z01n1z5EhrPKNzDb0BXUNfys=;
        b=pPWrAFa4LNjTIGNm+wiuA7wmzQIbbRpfprsO0/19RcyIDmwn0+lN33mzDnVPXUZMc1
         taC20tsk8/Dee0gBW25dx/IZYzQWtCs4zpMZfamG6LlfQWGc1lVr2mqx4PyHB75Uj8mh
         4FvmjxHvn9CgZKnw+ViCJciiAjWcG1gwYGmWG7B0Wu86zemH9hnokBLw7JozOr9CT+Gq
         WlS1eYl1BI2yl3zhQ5TjqL0/+vMaClvlTnCqFSqMS4+RHX5BMDCNde0+LTy/wsPbeMCY
         oBz0iPKtny2kA01oh3V9Zk3fSOwmK5gxDlkx/tTgtNfPtoIdKTWenhmHbkNMdbpcm0rA
         H0jw==
X-Gm-Message-State: AOAM530B7diFNRy8XoxLwIA32BKxYBEorF/NRf1gTWpDH9jMJbvByvuK
        BKBVitzGQaS+6dMzqXV5dSBg8Q==
X-Google-Smtp-Source: ABdhPJwzVf4vg45Ge9eQ2e4ZvQucxMpqgoHucsajxGzyvrMmlr/roydrDvsgVFKB6iuVuc/JneEgRg==
X-Received: by 2002:a05:6402:34cc:b0:431:67ed:96a0 with SMTP id w12-20020a05640234cc00b0043167ed96a0mr21782473edc.372.1654774814117;
        Thu, 09 Jun 2022 04:40:14 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id q1-20020a170906360100b006ff59151e34sm10638441ejb.39.2022.06.09.04.40.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 04:40:13 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        arm@kernel.org, soc@kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 24/48] ARM: dts: mediatek: align gpio-key node names with dtschema
Date:   Thu,  9 Jun 2022 13:39:57 +0200
Message-Id: <20220609114002.380563-5-krzysztof.kozlowski@linaro.org>
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

