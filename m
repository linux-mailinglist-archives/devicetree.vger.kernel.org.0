Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A7163544A8B
	for <lists+devicetree@lfdr.de>; Thu,  9 Jun 2022 13:41:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243112AbiFILkl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Jun 2022 07:40:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243004AbiFILjw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Jun 2022 07:39:52 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2AD4A1DBD40
        for <devicetree@vger.kernel.org>; Thu,  9 Jun 2022 04:39:43 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id o7so13604990eja.1
        for <devicetree@vger.kernel.org>; Thu, 09 Jun 2022 04:39:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5cSlP87HZIroMFQjz/vmfO1yXb2dVVbYI7ALNnjKsu4=;
        b=enklcfx+xRNsl71eeOzYaL6+EZ4YcYjvBL9JTEliFZViBCfEgXZk05NA+a3vnLCm/T
         x90kLtSv9ZwZszLDXq+O5y6nFvhB5OsAyaOZNZ29HyWSWodl6V9hEOI1PF5//chAON8C
         bNaB3S+cHf+gKBAH4jZ/PCpJuEWSqEyxJI6MnJPgpHlgI2XoouOpbdg5Ln0Vwwg3Ug7T
         qWDtoE6to+8XjOpO3/yITnuWd6awIgNFPFWbZyIwlt3VQcD3lz85kfAs28Ykdd2uqTjM
         x/ZbWZHXBjE5ksyQELNP9KDO2JWqJkWK0uOZoFzyqmpN80Bw5VLjlPg1VPNyfeqWkFyH
         HrOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5cSlP87HZIroMFQjz/vmfO1yXb2dVVbYI7ALNnjKsu4=;
        b=drkliwXf1awohzzEZZOXRyQ2LGAFV73s+cZW9ZUeDT+cMLBkXKyIU6QK3lIKQT5i3Y
         vfk7lE3ctqeXAkC74ruDY+vMluum+9QoFpIANdng9mSOvRBuRjiPmYg5Llpw64I5laWd
         wqNgrUeF/NHl/ZbRJg5FFIG3kh44uoP67c6c1LmGj8pYD1I2PJxTMz4Bpg+k47R/9oii
         FstGc8JL3jBcOoymJKFlYB/KGYSMbYBg/s8pZh0CZVPrgcMmT0SmuLmPi2/riK9MGpH4
         ci+RAo+Bcl9GE26Exp9KFlfZF6ANufrAmjek6q6A4PCiXJF+sQWUyikGOd2wj2Fuw11i
         mtlQ==
X-Gm-Message-State: AOAM530DFhxd1TSzBx7oiw3x82IliHV8mF840UXzB+7so1hPUejAph0S
        r0fVxK/QgnD74rZvRxE+RsTD8Q==
X-Google-Smtp-Source: ABdhPJzbtDmMYGs5XyaYrA/HvXC2c45Gr8YCbQa6XbqGLvXtb8Jyb8dukWQr6y1esYHzmAPKuvPYGg==
X-Received: by 2002:a17:906:51cd:b0:711:f4ee:6582 with SMTP id v13-20020a17090651cd00b00711f4ee6582mr7625174ejk.591.1654774781573;
        Thu, 09 Jun 2022 04:39:41 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id c10-20020a170906528a00b0070a80f03a44sm9460415ejm.119.2022.06.09.04.39.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 04:39:41 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        arm@kernel.org, soc@kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 10/48] arm64: dts: broadcom: align gpio-key node names with dtschema
Date:   Thu,  9 Jun 2022 13:39:29 +0200
Message-Id: <20220609113938.380466-1-krzysztof.kozlowski@linaro.org>
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

The node names should be generic and DT schema expects certain pattern
(e.g. with key/button/switch).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../broadcom/bcm4908/bcm4906-tplink-archer-c2300-v1.dts   | 8 ++++----
 .../boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts  | 8 ++++----
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-tplink-archer-c2300-v1.dts b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-tplink-archer-c2300-v1.dts
index b63eefab48bd..064f7f549665 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-tplink-archer-c2300-v1.dts
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-tplink-archer-c2300-v1.dts
@@ -83,25 +83,25 @@ gpio-keys-polled {
 		compatible = "gpio-keys-polled";
 		poll-interval = <100>;
 
-		brightness {
+		key-brightness {
 			label = "LEDs";
 			linux,code = <KEY_BRIGHTNESS_ZERO>;
 			gpios = <&gpio0 18 GPIO_ACTIVE_LOW>;
 		};
 
-		wps {
+		key-wps {
 			label = "WPS";
 			linux,code = <KEY_WPS_BUTTON>;
 			gpios = <&gpio0 21 GPIO_ACTIVE_LOW>;
 		};
 
-		wifi {
+		key-wifi {
 			label = "WiFi";
 			linux,code = <KEY_RFKILL>;
 			gpios = <&gpio0 22 GPIO_ACTIVE_LOW>;
 		};
 
-		restart {
+		key-restart {
 			label = "Reset";
 			linux,code = <KEY_RESTART>;
 			gpios = <&gpio0 23 GPIO_ACTIVE_LOW>;
diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts
index 169fbb7cfd34..04f8524b5335 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts
@@ -18,25 +18,25 @@ gpio-keys-polled {
 		compatible = "gpio-keys-polled";
 		poll-interval = <100>;
 
-		wifi {
+		key-wifi {
 			label = "WiFi";
 			linux,code = <KEY_RFKILL>;
 			gpios = <&gpio0 28 GPIO_ACTIVE_LOW>;
 		};
 
-		wps {
+		key-wps {
 			label = "WPS";
 			linux,code = <KEY_WPS_BUTTON>;
 			gpios = <&gpio0 29 GPIO_ACTIVE_LOW>;
 		};
 
-		restart {
+		key-restart {
 			label = "Reset";
 			linux,code = <KEY_RESTART>;
 			gpios = <&gpio0 30 GPIO_ACTIVE_LOW>;
 		};
 
-		brightness {
+		key-brightness {
 			label = "LEDs";
 			linux,code = <KEY_BRIGHTNESS_ZERO>;
 			gpios = <&gpio0 31 GPIO_ACTIVE_LOW>;
-- 
2.34.1

