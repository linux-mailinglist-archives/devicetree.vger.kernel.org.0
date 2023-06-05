Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0548A721DDE
	for <lists+devicetree@lfdr.de>; Mon,  5 Jun 2023 08:11:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229527AbjFEGLP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Jun 2023 02:11:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229459AbjFEGLP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Jun 2023 02:11:15 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4D6CD3
        for <devicetree@vger.kernel.org>; Sun,  4 Jun 2023 23:11:13 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2b1b66a8fd5so28091541fa.0
        for <devicetree@vger.kernel.org>; Sun, 04 Jun 2023 23:11:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685945472; x=1688537472;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=v7BLH6cbhWXqLiz7l0KXmxD4+0MvlCE4iDNA20WYaLY=;
        b=ZjkjfeciV7W2+XQdX2MjC1fT91pn4bA6OuMH6f9GRZIBCFow1wN7ewQXbjGm6kj6CX
         rPraEiUYJ0yVHlHWzIvymNjXovWE3AaJdPLZ1nWzii4Qv7QsPfJ5i4t3R8tGaEdmN75g
         VtLAxTq8r+WqhXBg35ZGJjYXBZW8XwTvTdgew/oCqC2QZzndn2cO84W+jLfWJ2001K6X
         cnVX8+zJXgrNhjtv6maASdMcFXwZ3CIxh/cMidPIA1i3cW0rP6Jr6pqPdc7VYGiHkNHP
         n5Yc+N2Tttd0mbCUlZkXOYR8ZKKehvwn32Qy6nycfD56nqdF0BEBv9RrhMANeFITRaYG
         xWKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685945472; x=1688537472;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v7BLH6cbhWXqLiz7l0KXmxD4+0MvlCE4iDNA20WYaLY=;
        b=NAcYb+plKH4ZjRiUCrNBy/MbIrezB8XByuAu5fadtzXQmymdFiUhdb1j3xlUfwxWJl
         YvDlkMTiri2bcrJ0PVad3giz3gFO2yTm5eJrv48aKdjryOrT4/KZ6+B1Qrb0sB6Aj+lJ
         1S8js4YWUY1mVXezaz0BHLM6klnbLCNE06dydmEtJYMeva8GHWuACY3kCjE4MxOx0Qhp
         uiBlrKLjYclmjQe3Q62QUKbgkl6MYztUhwbFqrnw3P5zHconE0kTIggCuF0Sn9fyRRBM
         TFJk+VqI1W1Usd34YobapNggigmKrLrb0m/kGZKcgqD3NwkUqGL1pF3cnbkdK/cbxKWC
         K7Ew==
X-Gm-Message-State: AC+VfDwvEYmDHjqFJHujd1mRcW3dNP8sLVcppPaYSCwdDFo2bnwDTACe
        ubgPnnHqEmC7yTpRoiCFwOU/nl69t3w=
X-Google-Smtp-Source: ACHHUZ4aOnw1F1bFlaIHMsvynm5HA9+GuEZhuh5Lw+5yXbSxJy6dpKXn+UwIrbdN/+vbF/6U3q+xwg==
X-Received: by 2002:a2e:a0c7:0:b0:2b1:ead6:9f58 with SMTP id f7-20020a2ea0c7000000b002b1ead69f58mr62768ljm.32.1685945471626;
        Sun, 04 Jun 2023 23:11:11 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id d4-20020a2e8904000000b002b1bb9a3febsm934889lji.74.2023.06.04.23.11.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Jun 2023 23:11:11 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
        Christian Lamparter <chunkeey@gmail.com>
Subject: [PATCH] ARM: dts: BCM5301X: Relicense Christian's code to the GPL 2.0+ / MIT
Date:   Mon,  5 Jun 2023 08:10:49 +0200
Message-Id: <20230605061049.16136-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

Move code added by Christian to the bcm-ns.dtsi which uses dual
licensing. That syncs more Northstar code to be based on the same
licensing schema.

Cc: Christian Lamparter <chunkeey@gmail.com>
Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
Florian: we need to ask & wait for Christian's Acked-by before applying
this one.
---
 arch/arm/boot/dts/bcm-ns.dtsi   | 21 +++++++++++++++++++++
 arch/arm/boot/dts/bcm5301x.dtsi | 23 -----------------------
 2 files changed, 21 insertions(+), 23 deletions(-)

diff --git a/arch/arm/boot/dts/bcm-ns.dtsi b/arch/arm/boot/dts/bcm-ns.dtsi
index 793891f1f260..d9455b33adee 100644
--- a/arch/arm/boot/dts/bcm-ns.dtsi
+++ b/arch/arm/boot/dts/bcm-ns.dtsi
@@ -182,6 +182,10 @@ pcie1: pcie@13000 {
 			reg = <0x00013000 0x1000>;
 		};
 
+		pcie2: pcie@14000 {
+			reg = <0x00014000 0x1000>;
+		};
+
 		usb2: usb2@21000 {
 			reg = <0x00021000 0x1000>;
 
@@ -274,6 +278,14 @@ gmac3: ethernet@27000 {
 		};
 	};
 
+	pwm: pwm@18002000 {
+		compatible = "brcm,iproc-pwm";
+		reg = <0x18002000 0x28>;
+		clocks = <&osc>;
+		#pwm-cells = <3>;
+		status = "disabled";
+	};
+
 	mdio: mdio@18003000 {
 		compatible = "brcm,iproc-mdio";
 		reg = <0x18003000 0x8>;
@@ -299,6 +311,15 @@ ports {
 		};
 	};
 
+	uart2: serial@18008000 {
+		compatible = "ns16550a";
+		reg = <0x18008000 0x20>;
+		clocks = <&iprocslow>;
+		interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
+		reg-shift = <2>;
+		status = "disabled";
+	};
+
 	dmu-bus@1800c000 {
 		compatible = "simple-bus";
 		ranges = <0 0x1800c000 0x1000>;
diff --git a/arch/arm/boot/dts/bcm5301x.dtsi b/arch/arm/boot/dts/bcm5301x.dtsi
index 0f40812eb5a4..600a1b54f2ae 100644
--- a/arch/arm/boot/dts/bcm5301x.dtsi
+++ b/arch/arm/boot/dts/bcm5301x.dtsi
@@ -69,20 +69,6 @@ periph_clk: periph_clk {
 		};
 	};
 
-	axi@18000000 {
-		pcie2: pcie@14000 {
-			reg = <0x00014000 0x1000>;
-		};
-	};
-
-	pwm: pwm@18002000 {
-		compatible = "brcm,iproc-pwm";
-		reg = <0x18002000 0x28>;
-		clocks = <&osc>;
-		#pwm-cells = <3>;
-		status = "disabled";
-	};
-
 	mdio-mux@18003000 {
 		compatible = "mdio-mux-mmioreg", "mdio-mux";
 		mdio-parent-bus = <&mdio>;
@@ -110,15 +96,6 @@ usb3_dmp: syscon@18105000 {
 		reg = <0x18105000 0x1000>;
 	};
 
-	uart2: serial@18008000 {
-		compatible = "ns16550a";
-		reg = <0x18008000 0x20>;
-		clocks = <&iprocslow>;
-		interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
-		reg-shift = <2>;
-		status = "disabled";
-	};
-
 	i2c0: i2c@18009000 {
 		compatible = "brcm,iproc-i2c";
 		reg = <0x18009000 0x50>;
-- 
2.35.3

