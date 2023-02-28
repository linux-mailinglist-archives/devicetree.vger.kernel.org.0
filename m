Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B65B86A5AFD
	for <lists+devicetree@lfdr.de>; Tue, 28 Feb 2023 15:44:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229509AbjB1Oom (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Feb 2023 09:44:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229471AbjB1Ool (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Feb 2023 09:44:41 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C09DA1CF4F
        for <devicetree@vger.kernel.org>; Tue, 28 Feb 2023 06:44:40 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id bi9so13552933lfb.2
        for <devicetree@vger.kernel.org>; Tue, 28 Feb 2023 06:44:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DmzBz7NB7zquvO4C89dxC07p/dlgjznxZJStXyBHdzk=;
        b=idZCfTxuU+hZAJ9gylO4iiuEY+lJtmXekJd+p7YG7pPOcYyltyFPMUOGos1VcR/yzs
         tYEcE3sf8nTZqIs5CL5GtWGHj3ceKD+V2V26+SCBIoynE/+O14oIa9a46O0cwIUGNYpY
         avZ0NqKDYBafrSDJGllYG3divYBiMCCLrSX30kcODHRKOWIYsnQRkXmkuQrLV/ushxdX
         2wwIKcdi63SIjqi9OOy3cpBoC9aK8F/vGXE9H9Tv9DPBSPFzIWD1AfCSlEHE9oFMuDWX
         VyodxsHya4Y+jjNu0FGr9XlfmE53ZjQXKY1XQNTDkqbyc5wUsj9PSJzvz9Mx0MCK/GBa
         JtPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DmzBz7NB7zquvO4C89dxC07p/dlgjznxZJStXyBHdzk=;
        b=SZ9hN5f7RnrckzEYRt8tT+V7kU3HNvPEU7PT7DIER8VK40MfC2k6vVRuCBW+7qlALC
         wNIYpJyBcPgK0EqBmrr7smjRZ49aanc5eAiACkkOhBT6OiqL6f0ytnWCnfRH4mKNbd78
         vdqVEikbUWd4nbvMyI9Jwfw0MXwp4jeC9qjF1Lkib0XcqMqAXT5dRWAqQh+oI+iC+q/P
         4iNhBe9QVT/zxAoV0UcvwwEAWg360h6V0Vn32Ptxd0+NEt4/NH4VYZxwgToJgyALl0H3
         cvHRAxgq6oZgv5dFZI+Kl3bg7G4GxsNtfSep+f5e3mPTDTPfpqPgW2M1dCCeXNyCVDA/
         NTBw==
X-Gm-Message-State: AO0yUKU9/MULJWYD1UXG4AGWAVRr5+ZWdwEb67cDQWZWSiRU+lplHuT8
        D3LJ6twJTKafn7loVtfw8Ms=
X-Google-Smtp-Source: AK7set8sASwflS+zi2t2TfkAtb/el69p5IgOYEDQVuYs4rpXCOcnLoh8G0VBAgEvY3m+0URaMzVscA==
X-Received: by 2002:ac2:46f3:0:b0:4d5:8dd8:75f9 with SMTP id q19-20020ac246f3000000b004d58dd875f9mr780076lfo.24.1677595478928;
        Tue, 28 Feb 2023 06:44:38 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id b10-20020a056512024a00b00498f67cbfa9sm1365554lfo.22.2023.02.28.06.44.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Feb 2023 06:44:38 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        William Zhang <william.zhang@broadcom.com>,
        Anand Gore <anand.gore@broadcom.com>,
        Kursad Oney <kursad.oney@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Brian Norris <briannorris@chromium.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 2/3] arm64: dts: broadcom: bcmbca: bcm4908: fix LED nodenames
Date:   Tue, 28 Feb 2023 15:43:59 +0100
Message-Id: <20230228144400.21689-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230228144400.21689-1-zajec5@gmail.com>
References: <20230228144400.21689-1-zajec5@gmail.com>
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

This fixes:
arch/arm64/boot/dts/broadcom/bcmbca/bcm4908-asus-gt-ac5300.dtb: leds@800: 'led-lan@19', 'led-power@11', 'led-wan-red@12', 'led-wan-white@15', 'led-wps@14' do not match any of the regexes: '^led@[a-f0-9]+$', 'pinctrl-[0-9]+'
        From schema: Documentation/devicetree/bindings/leds/leds-bcm63138.yaml

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 .../dts/broadcom/bcmbca/bcm4908-asus-gt-ac5300.dts     | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908-asus-gt-ac5300.dts b/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908-asus-gt-ac5300.dts
index 839ca33178b0..d94a53d68320 100644
--- a/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908-asus-gt-ac5300.dts
+++ b/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908-asus-gt-ac5300.dts
@@ -120,7 +120,7 @@ ethernet-phy@3 {
 };
 
 &leds {
-	led-power@11 {
+	led@11 {
 		reg = <0x11>;
 		function = LED_FUNCTION_POWER;
 		color = <LED_COLOR_ID_WHITE>;
@@ -130,7 +130,7 @@ led-power@11 {
 		pinctrl-0 = <&pins_led_17_a>;
 	};
 
-	led-wan-red@12 {
+	led@12 {
 		reg = <0x12>;
 		function = LED_FUNCTION_WAN;
 		color = <LED_COLOR_ID_RED>;
@@ -139,7 +139,7 @@ led-wan-red@12 {
 		pinctrl-0 = <&pins_led_18_a>;
 	};
 
-	led-wps@14 {
+	led@14 {
 		reg = <0x14>;
 		function = LED_FUNCTION_WPS;
 		color = <LED_COLOR_ID_WHITE>;
@@ -148,7 +148,7 @@ led-wps@14 {
 		pinctrl-0 = <&pins_led_20_a>;
 	};
 
-	led-wan-white@15 {
+	led@15 {
 		reg = <0x15>;
 		function = LED_FUNCTION_WAN;
 		color = <LED_COLOR_ID_WHITE>;
@@ -157,7 +157,7 @@ led-wan-white@15 {
 		pinctrl-0 = <&pins_led_21_a>;
 	};
 
-	led-lan@19 {
+	led@19 {
 		reg = <0x19>;
 		function = LED_FUNCTION_LAN;
 		color = <LED_COLOR_ID_WHITE>;
-- 
2.34.1

