Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A9606632952
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 17:22:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229965AbiKUQWf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 11:22:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229996AbiKUQWd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 11:22:33 -0500
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com [IPv6:2607:f8b0:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F22F6270E
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 08:22:31 -0800 (PST)
Received: by mail-ot1-x330.google.com with SMTP id m7-20020a9d6447000000b0066da0504b5eso7622788otl.13
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 08:22:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UuU5jNZ9ll6lvTgROCjhDnRGN/gMHARLmfggb3xRV4w=;
        b=pt15qk/5u57Jwqzxzk+C1nMmsX5E5RDqqBaU6OFguk83YOA5ao+UJdF5YUzWDhs7Ew
         dDWGZ4NbFrIfjDvZbidTUht+rQvsMxhbokHBWmeEYzZOHrZ+ygos6kGrjYXeWEzY+BoV
         gmxZUqR/0ec1gLHG1Fa22ofAVQ/kv6Y077Ht5EWSoyemW0ZGO2pFZQ8CX9iarK5Rb3gg
         kkwqWFn0TfAqucyS6Aofh+tesn89l3n66KjTb+A0w/ZqY2UbAIxY+M9NdHo2WelpRvIA
         fP1gmRv9IyVzxZ+xmWtbSicGJmjk30SkH+5ajU85FRqQqWsFb6Noj7yJKNGaghIkYU0c
         kzgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UuU5jNZ9ll6lvTgROCjhDnRGN/gMHARLmfggb3xRV4w=;
        b=BcDD7hjkwBPxP9cEi/eGh5NfUvFjdHUme4XqCc1/v4fx0neqA5DIWhZZ42afnZjT1t
         ep+D8h/8+CaqF/VVkQjP/j7zndhaTWpbpERqxgs1x+wsANquyN7OP1uPGxdPuETObINp
         wSmUyMfhEP1p7gIgj4qpGzoEArLIE2lBzjLWN7PzLygzn+rqHaOfjhHV9A1zbfXX4GNi
         SpqJAiULhLoG1MvEFXypRBnm2qzefdwGQMr3VqYZHkuHltoycc0jhrBzdw1WPxBCWpqj
         2DwPV8L5NpafmDrdTK6LmKr673iPLrUYL6pIQxgw9B1X1L6mwjsaTXXmJRtY09fso+97
         EKgQ==
X-Gm-Message-State: ANoB5pnb9MnfB8q2iMujgayuwh1QXsNL+pexo93Sp9NNXqgymSiVZPi/
        joeaFHCmAXcePhiWlZJq7aM0gMmxLjM=
X-Google-Smtp-Source: AA0mqf4wjuLWjvpmG+Ylbpw4QhwBnPc0UmR2hxjpe1sjRW8rNz6bYRhCcExHvsff1ecivLIt5B93dw==
X-Received: by 2002:a9d:6206:0:b0:659:d9e4:b8f with SMTP id g6-20020a9d6206000000b00659d9e40b8fmr1787210otj.182.1669047751212;
        Mon, 21 Nov 2022 08:22:31 -0800 (PST)
Received: from localhost.localdomain ([2804:14c:485:4b69:5204:9130:9b29:a926])
        by smtp.gmail.com with ESMTPSA id h22-20020a9d61d6000000b006619295af60sm4935222otk.70.2022.11.21.08.22.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Nov 2022 08:22:30 -0800 (PST)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 2/2] ARM: dts: imx7d-pico: Use 'clock-frequency'
Date:   Mon, 21 Nov 2022 13:22:16 -0300
Message-Id: <20221121162216.2375833-2-festevam@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221121162216.2375833-1-festevam@gmail.com>
References: <20221121162216.2375833-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

'clock_frequency' is not a valid property.

Use the correct 'clock-frequency' instead.

Fixes: 8b646cfb84c3 ("ARM: dts: imx7d-pico: Add support for the dwarf baseboard")
Fixes: 6418fd92417f ("ARM: dts: imx7d-pico: Add support for the nymph baseboard")
Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/imx7d-pico-dwarf.dts | 4 ++--
 arch/arm/boot/dts/imx7d-pico-nymph.dts | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/imx7d-pico-dwarf.dts b/arch/arm/boot/dts/imx7d-pico-dwarf.dts
index 5162fe227d1e..fdc10563f147 100644
--- a/arch/arm/boot/dts/imx7d-pico-dwarf.dts
+++ b/arch/arm/boot/dts/imx7d-pico-dwarf.dts
@@ -32,7 +32,7 @@ sys_mclk: clock-sys-mclk {
 };
 
 &i2c1 {
-	clock_frequency = <100000>;
+	clock-frequency = <100000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_i2c1>;
 	status = "okay";
@@ -52,7 +52,7 @@ pressure-sensor@60 {
 };
 
 &i2c4 {
-	clock_frequency = <100000>;
+	clock-frequency = <100000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_i2c1>;
 	status = "okay";
diff --git a/arch/arm/boot/dts/imx7d-pico-nymph.dts b/arch/arm/boot/dts/imx7d-pico-nymph.dts
index 104a85254adb..5afb1674e012 100644
--- a/arch/arm/boot/dts/imx7d-pico-nymph.dts
+++ b/arch/arm/boot/dts/imx7d-pico-nymph.dts
@@ -43,7 +43,7 @@ sys_mclk: clock-sys-mclk {
 };
 
 &i2c1 {
-	clock_frequency = <100000>;
+	clock-frequency = <100000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_i2c1>;
 	status = "okay";
@@ -64,7 +64,7 @@ adc@52 {
 };
 
 &i2c2 {
-	clock_frequency = <100000>;
+	clock-frequency = <100000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_i2c2>;
 	status = "okay";
-- 
2.25.1

