Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 300EA12BD4
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2019 12:48:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727018AbfECKsR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 May 2019 06:48:17 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:46297 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726047AbfECKsQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 May 2019 06:48:16 -0400
Received: by mail-pl1-f196.google.com with SMTP id bi2so2516833plb.13
        for <devicetree@vger.kernel.org>; Fri, 03 May 2019 03:48:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=flSGHj+m/Po54A3Jce083UtgM5nOT0MXPFx0OmO6SII=;
        b=mk7OvXbbGeUyH1WZq1/qThCy74/8Yv5d77I2f0XPsCx2ixEpJoQHgWdflcsIBWrL7x
         lBoYeWtcgGcN7Q1y5s9StOO688lTeBcW6zNlQRJI6DFbXfK7Qyp+IwHlCqp1BOgdrTar
         /sFRsnWDltDB8yucgBEb9DQYppUgV/D3205T8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=flSGHj+m/Po54A3Jce083UtgM5nOT0MXPFx0OmO6SII=;
        b=A8c8IOQ4jFKRr4qOblu+/kFnQq3rnsQTiafvSDv1K/+z0x8NTxtocw/zRKSaf3eOg8
         eWLukIQfA7J2VUufpQeskADPSOr9NkbyJnMVMQ1SH64AwjfOvcKa2Fz+qgYGZe3Jk+Zk
         aOksZlCKnXiQ66WlPhJQPXxkjtsWCV0Tufv+zV3EiFHV3sszQomdxVgmIx+1F1GJ3M7w
         dhmcJt5clLV6M9shpW7+m1Cc+U5928XAqVKmhBpcklT3Bsk4iguG3ziSmoKYxf49dunT
         Hye2cNfD7qyX0pN7rqYIkcW2q29KGeDh1uYnBqQr2Yd+BR8V6c1IagBSM1k2CjBrUtqb
         MDFw==
X-Gm-Message-State: APjAAAWx4QhrNi54JGUmteH+m2evyavn3WuDm8z8RG031vXuruBUiCsP
        qELJuhLE6t/ztm07ZccIfsnL1A==
X-Google-Smtp-Source: APXvYqwsEO5di+FruExa3qzMpSy+Ts+JTNBFka/GPxR6G61ZTiT2ZDzTv73v6LBbLEX9l+AaHs/1ZA==
X-Received: by 2002:a17:902:22f:: with SMTP id 44mr9254610plc.175.1556880496050;
        Fri, 03 May 2019 03:48:16 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.165])
        by smtp.gmail.com with ESMTPSA id k9sm1965479pga.22.2019.05.03.03.48.10
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 May 2019 03:48:15 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Maxime Ripard <maxime.ripard@bootlin.com>,
        Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     Michael Trimarchi <michael@amarulasolutions.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com,
        linux-sunxi@googlegroups.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v5 2/3] arm64: dts: allwinner: a64-amarula-relic: Add GT5663 CTP node
Date:   Fri,  3 May 2019 16:17:52 +0530
Message-Id: <20190503104753.27562-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190503104753.27562-1-jagan@amarulasolutions.com>
References: <20190503104753.27562-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add Goodix GT5663 capacitive touch controller node on
Amarula A64-Relic board.

The CTP connected to board with,
- SDA, SCK from i2c1
- GPIO-LD0 as AVDD28 supply
- PH4 gpio as interrupt pin
- PH8 gpio as reset pin
- X axis is inverted
- Y axis is inverted

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v5:
- none
Changes for v4:
- drop i2c1 pinctrl
Changes for v3:
- Use 2.8v for reg_ldo_io0
Changes for v2:
- drop i2c1, bias-pull-up

 .../allwinner/sun50i-a64-amarula-relic.dts    | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-amarula-relic.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-amarula-relic.dts
index c41131c03231..5634245d11db 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-amarula-relic.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-amarula-relic.dts
@@ -97,6 +97,22 @@
 	bias-pull-up;
 };
 
+&i2c1 {
+	status = "okay";
+
+	touchscreen@5d {
+		compatible = "goodix,gt5663";
+		reg = <0x5d>;
+		AVDD28-supply = <&reg_ldo_io0>;			/* VCC-CTP: GPIO0-LDO */
+		interrupt-parent = <&pio>;
+		interrupts = <7 4 IRQ_TYPE_EDGE_FALLING>;
+		irq-gpios = <&pio 7 4 GPIO_ACTIVE_HIGH>;	/* CTP-INT: PH4 */
+		reset-gpios = <&pio 7 8 GPIO_ACTIVE_HIGH>;	/* CTP-RST: PH8 */
+		touchscreen-inverted-x;
+		touchscreen-inverted-y;
+	};
+};
+
 &mmc1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&mmc1_pins>;
@@ -260,6 +276,13 @@
 	regulator-name = "vdd-cpus";
 };
 
+&reg_ldo_io0 {
+	regulator-min-microvolt = <2800000>;
+	regulator-max-microvolt = <2800000>;
+	regulator-name = "vcc-ctp";
+	status = "okay";
+};
+
 &reg_rtc_ldo {
 	regulator-name = "vcc-rtc";
 };
-- 
2.18.0.321.gffc6fa0e3

