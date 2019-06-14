Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 66295464B1
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2019 18:44:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726603AbfFNQoW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jun 2019 12:44:22 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:44090 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726598AbfFNQoW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jun 2019 12:44:22 -0400
Received: by mail-pg1-f196.google.com with SMTP id n2so1847671pgp.11
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2019 09:44:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=51aUrymmYRWhKwkwNUN7n3u+csGBwL1xctf+8Q7+DLA=;
        b=hUMZo4w/SMniB83kfAUVnrA1RyVuTWWVAwfEKLY87uPojuFk9UA3Vy/cV9xC+ppKpk
         h0M34u+54Q/wpDfLPPMp9cBRSyRxmEdcUOY/CyweTSAfzIv897kg3mVeMK/JE6GHuRxl
         KRyA05ziGi47yqSHGfgpH6GNszW5S1XRVp9f8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=51aUrymmYRWhKwkwNUN7n3u+csGBwL1xctf+8Q7+DLA=;
        b=TggJzGV4GSglY2VbfAlIohER0sZC54dMsNZWlxJ5RgEKR/pCWdrwgvz8s3mO+Amp1w
         h2dIp5mLxPzKPT4ODNDIQbrZecLjAHkXhjHPu3s3ex2MBEN7Ax2Fwnj7YYED+VO1/X76
         MBEoSK62zqfaRNjemXK0o27A/njMHY5sO+w6ixcXHzQ3IpeuIeGrVL4w5S8x1pCDDN5Y
         6Ig+BOpPHpGAVd8C8d9h8wB0qvgrjkc1x3uJuYOOlSalTdsNRvne7LXJuxAR9ZI911wy
         +xHfTr6JlVDDpFT3bfZH/fTdm1O6cTUZtJtntugiJeViaJEjdA8kkSvQdOv1RnNTe0tS
         2VAA==
X-Gm-Message-State: APjAAAXLaPZbWk5Z68XNPVrTmkyXScPnpYCDohUT/LOLEPJ+g66/DFsl
        5IL+e2S3O25E9ub7fNTNsKGJBg==
X-Google-Smtp-Source: APXvYqxIEAB3TnJlinO1JuDerapMhy6++MPoYsHomBgVQizAape63nc5jsF4hTcfUAlwbUSy7R0Mjg==
X-Received: by 2002:a63:894a:: with SMTP id v71mr28214299pgd.302.1560530657663;
        Fri, 14 Jun 2019 09:44:17 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
        by smtp.gmail.com with ESMTPSA id 85sm1639583pfv.130.2019.06.14.09.44.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Jun 2019 09:44:17 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Maxime Ripard <maxime.ripard@bootlin.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Jernej Skrabec <jernej.skrabec@siol.net>
Cc:     Michael Trimarchi <michael@amarulasolutions.com>,
        linux-sunxi@googlegroups.com, linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [DO NOT MERGE] [PATCH v2 9/9] ARM: dts: sun8i-r40: bananapi-m2-ultra: Enable Bananapi S070WV20-CT16 DSI panel
Date:   Fri, 14 Jun 2019 22:13:24 +0530
Message-Id: <20190614164324.9427-10-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190614164324.9427-1-jagan@amarulasolutions.com>
References: <20190614164324.9427-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch add support for Bananapi S070WV20-CT16 DSI panel to
BPI-M2U board.

DSI panel connected via board DSI port with,
- DCDC1 as VCC-DSI supply
- PH18 gpio for lcd enable pin
- PD17 gpio for lcd reset pin
- PD16 gpio for backlight enable pin

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../boot/dts/sun8i-r40-bananapi-m2-ultra.dts  | 36 +++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-r40-bananapi-m2-ultra.dts b/arch/arm/boot/dts/sun8i-r40-bananapi-m2-ultra.dts
index c488aaacbd68..5f39317b783e 100644
--- a/arch/arm/boot/dts/sun8i-r40-bananapi-m2-ultra.dts
+++ b/arch/arm/boot/dts/sun8i-r40-bananapi-m2-ultra.dts
@@ -45,6 +45,7 @@
 #include "sun8i-r40.dtsi"
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pwm/pwm.h>
 
 / {
 	model = "Banana Pi BPI-M2-Ultra";
@@ -55,6 +56,14 @@
 		serial0 = &uart0;
 	};
 
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		pwms = <&pwm 0 50000 PWM_POLARITY_INVERTED>;
+		brightness-levels = <1 2 4 8 16 32 64 128 255>;
+		default-brightness-level = <8>;
+		enable-gpios = <&pio 7 16 GPIO_ACTIVE_HIGH>; /* LCD-BL-EN: PH16 */
+	};
+
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
@@ -117,6 +126,23 @@
 	status = "okay";
 };
 
+&dphy {
+	status = "okay";
+};
+
+&dsi {
+	vcc-dsi-supply = <&reg_dcdc1>;		/* VCC-DSI */
+	status = "okay";
+
+	panel@0 {
+		compatible = "bananapi,s070wv20-ct16-icn6211";
+		reg = <0>;
+		enable-gpio = <&pio 7 18 GPIO_ACTIVE_HIGH>; /* LCD-PWR-EN: PH18 */
+		reset-gpios = <&pio 7 17 GPIO_ACTIVE_HIGH>; /* LCD-RST: PH17 */
+		backlight = <&backlight>;
+	};
+};
+
 &ehci1 {
 	status = "okay";
 };
@@ -203,6 +229,12 @@
 	pinctrl-0 = <&clk_out_a_pin>;
 };
 
+&pwm {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm_pins>;
+	status = "okay";
+};
+
 &reg_aldo2 {
 	regulator-always-on;
 	regulator-min-microvolt = <2500000>;
@@ -290,6 +322,10 @@
 	regulator-name = "vdd1v2-sata";
 };
 
+&tcon_lcd0 {
+	status = "okay";
+};
+
 &tcon_tv0 {
 	status = "okay";
 };
-- 
2.18.0.321.gffc6fa0e3

