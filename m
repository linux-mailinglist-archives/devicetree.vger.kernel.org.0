Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 21191578393
	for <lists+devicetree@lfdr.de>; Mon, 18 Jul 2022 15:21:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231367AbiGRNVN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jul 2022 09:21:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235365AbiGRNVM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jul 2022 09:21:12 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C880C1FCF9
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 06:21:11 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id os14so21207759ejb.4
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 06:21:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=hDE8wVHcgS4PiR4IlLv3X0XtE6N6NIiTILa2X41hjNg=;
        b=ZZxK+dHUsP5q3LzDPnisIkEKbk8vN4o5lyIU3yMx4esBBWp6cvdIy4xg0aI399Iko1
         b9ZD2GWOMHNJ7BhPMLY/yM0tOmVhQ3EhMD8eRXceKsnqvzRe0SPi3KFyzX6b4aQSFRs9
         XSxqunMPI+2fPXEoMC4M0bJZZ4kwAA+UfQ2+n6AcOwtCQ+r4Crn23WYJ0kg8wLX3EIVv
         xG2DYAnLYgfEaW+o06btcX0YnmDpaN6omok1wASrv41jydlqV709teXcXgwKFozTnZIX
         xMTel+PYLhnEiCc5YcGInkEiouawHWX5i3MKZpIVo+P9f4C1wGBCAV3cRjj+5eYuA54k
         YjyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=hDE8wVHcgS4PiR4IlLv3X0XtE6N6NIiTILa2X41hjNg=;
        b=lYYLdYQ2K8/rzAeDy9yamOqWKWIY29oLNhr48KKYi3LXqhN2JvIZiucfFslG2dtnud
         MonyuebUV7RRGGKO3ZKegP9C/phNxHa3nqo/mpARWAf+Q1h3y7kGZGhPiNDDm6ZxQ6nZ
         3A1bQZ68bBHV7fLu/unKOr4dEl9m31XizBlktotEx+nVp0EvqxXaldEVv+jVDIai6AyE
         vFZMlpL9uO08WTc8mEy+xsMdqeRzNnt8QTQ3oXCxoxymeDUKJyHeUcCMfNmSG36EdrzK
         55+ON8EDzZNzXTxRsj8PKHlaxyVu0AzBT8Vig63QINC7FUEuBfQ9J1bTUVz4ZQ8sxxcH
         iFRw==
X-Gm-Message-State: AJIora+hBd8tE7PKOSh8C9Utv87IeVA+9RoMjAb5Xeij7gAIrua3+o8i
        aZcKWTH4E5sL/ocg4IJ0GrM=
X-Google-Smtp-Source: AGRyM1thQDd/tO11WO9jZ1SlovmXXoJO93T8HhQhVSR4XuQsFPNtzuRJdB3PopAe2ed0rGK5Ih+vZQ==
X-Received: by 2002:a17:907:3f29:b0:72b:91df:2c4b with SMTP id hq41-20020a1709073f2900b0072b91df2c4bmr25560614ejc.206.1658150470423;
        Mon, 18 Jul 2022 06:21:10 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id i8-20020a50fd08000000b0043a554818afsm8678537eds.42.2022.07.18.06.21.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Jul 2022 06:21:10 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH V2 3/3] arm64: dts: broadcom: bcm4908: add Asus GT-AC5300 LEDs
Date:   Mon, 18 Jul 2022 15:21:00 +0200
Message-Id: <20220718132100.13277-3-zajec5@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220718132100.13277-1-zajec5@gmail.com>
References: <20220718132100.13277-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

There are 5 software-controllable LEDs on PCB.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
V2: Include header & adjust nodes names
---
 .../bcm4908/bcm4908-asus-gt-ac5300.dts        | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts
index 169fbb7cfd34..5862db5cab2f 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts
@@ -2,6 +2,7 @@
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
 
 #include "bcm4908.dtsi"
 
@@ -118,6 +119,53 @@ ethernet-phy@3 {
 	};
 };
 
+&leds {
+	led-power@11 {
+		reg = <0x11>;
+		function = LED_FUNCTION_POWER;
+		color = <LED_COLOR_ID_WHITE>;
+		default-state = "on";
+		active-low;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pins_led_17_a>;
+	};
+
+	led-wan-red@12 {
+		reg = <0x12>;
+		function = LED_FUNCTION_WAN;
+		color = <LED_COLOR_ID_RED>;
+		active-low;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pins_led_18_a>;
+	};
+
+	led-wps@14 {
+		reg = <0x14>;
+		function = LED_FUNCTION_WPS;
+		color = <LED_COLOR_ID_WHITE>;
+		active-low;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pins_led_20_a>;
+	};
+
+	led-wan-white@15 {
+		reg = <0x15>;
+		function = LED_FUNCTION_WAN;
+		color = <LED_COLOR_ID_WHITE>;
+		active-low;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pins_led_21_a>;
+	};
+
+	led-lan@19 {
+		reg = <0x19>;
+		function = LED_FUNCTION_LAN;
+		color = <LED_COLOR_ID_WHITE>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pins_led_25_a>;
+	};
+};
+
 &nandcs {
 	nand-ecc-strength = <4>;
 	nand-ecc-step-size = <512>;
-- 
2.34.1

