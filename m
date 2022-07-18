Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 131015780BE
	for <lists+devicetree@lfdr.de>; Mon, 18 Jul 2022 13:29:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233585AbiGRL3g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jul 2022 07:29:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51396 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232593AbiGRL3f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jul 2022 07:29:35 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70F052DE4
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 04:29:34 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id ss3so20578648ejc.11
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 04:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6O5i3ntxRQ/5uk2892tL5Q2BEnCxX2K7uNSIvV3aXdM=;
        b=qXufyB4vm2be9Kvh3olRjewNt9R0iNr84yupOs4eY/cIFtHf5GX6hxkwpdLq/RTag9
         6EmzGUiMC7xx/dPbd1ZT/5LsDVO3o4olFeBmBHNwZJ23ge3f4W5cXhU0hgK+6XmvMmRP
         kl9/2ZFM0rWTpAOiN0MYquColfDVDANGkY7yA4RMQO0vaN1qvf9a2HUxbxZFiGgM1M0Q
         w0PSCiuFjXKEUUJLWj8ScCkJbkmOUKQ7MuWpZ9MF/QXEWmtNYWWKA6CsWc7mDhGhT9kf
         XnZaHzVp+enPTEGBW1OnBR64vMx13zPFHZI+PUbWkn5YbQ7NHc+MEujTL/hsdjWo2X5o
         2QvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6O5i3ntxRQ/5uk2892tL5Q2BEnCxX2K7uNSIvV3aXdM=;
        b=cz6pVfs3dJdwHwR8ZL0fn+RercnV0Hj6Xiw9YKC6/nsHtU99Y+hNYlLKeevNygy7MC
         rmlqgeVVjcKWTndJ/72oegx3jM72VXJoBgTAMH5s/0gX0BuThN2nLhgnJzgpOzotkdhe
         tRNXt99pXLj8QwdFz29QCKf+01/sn+jAh50XdBBElSOWRh9nflbWAckyRZoBdFv8mEhA
         LZ+RtCobC0NPUzzdnkfp2PwSST93bdv8+mj1q5YH+VMqxeQBfOyItkeT+IkWAvFGT0wn
         9okdyXw6mZvpMVHlT/3aMtvFHyVDM6cXPyj0FeDUenn2a07otzAkpQSb4OAjdkaMIFU3
         Xhrw==
X-Gm-Message-State: AJIora8knnsEHudFwhk3H3ncVepKpJ4PtgeVJTHn6A15id8wYu6HQZ6D
        8M0FY+hA3APULSWxdJiCOTA=
X-Google-Smtp-Source: AGRyM1sRkDvsT9EzY7A9x1Ehuz+1OUkb6JCbRQpUe9fxdT91nhRfbp1Of2iS2uGaUSrImBls1uXiig==
X-Received: by 2002:a17:907:2bf1:b0:72b:5cc3:79cf with SMTP id gv49-20020a1709072bf100b0072b5cc379cfmr1007986ejc.382.1658143773028;
        Mon, 18 Jul 2022 04:29:33 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id vp21-20020a17090712d500b006feba31171bsm5452210ejb.11.2022.07.18.04.29.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Jul 2022 04:29:32 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 3/3] arm64: dts: broadcom: bcm4908: add Asus GT-AC5300 LEDs
Date:   Mon, 18 Jul 2022 13:29:23 +0200
Message-Id: <20220718112923.5500-3-zajec5@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220718112923.5500-1-zajec5@gmail.com>
References: <20220718112923.5500-1-zajec5@gmail.com>
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
 .../bcm4908/bcm4908-asus-gt-ac5300.dts        | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts
index 169fbb7cfd34..aeba73cbb793 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts
@@ -118,6 +118,53 @@ ethernet-phy@3 {
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
+	led-power@12 {
+		reg = <0x12>;
+		function = LED_FUNCTION_WAN;
+		color = <LED_COLOR_ID_RED>;
+		active-low;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pins_led_18_a>;
+	};
+
+	led-power@14 {
+		reg = <0x14>;
+		function = LED_FUNCTION_WPS;
+		color = <LED_COLOR_ID_WHITE>;
+		active-low;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pins_led_20_a>;
+	};
+
+	led-power@15 {
+		reg = <0x15>;
+		function = LED_FUNCTION_WAN;
+		color = <LED_COLOR_ID_WHITE>;
+		active-low;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pins_led_21_a>;
+	};
+
+	led-power@19 {
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

