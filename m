Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 11B8929627
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2019 12:43:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390752AbfEXKnI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 May 2019 06:43:08 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:33377 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390750AbfEXKnH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 May 2019 06:43:07 -0400
Received: by mail-pf1-f194.google.com with SMTP id z28so5116941pfk.0
        for <devicetree@vger.kernel.org>; Fri, 24 May 2019 03:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nP3yWdSdOBguUQvL1Rluu0V+blq5lMGRtGXamF3bLkw=;
        b=Umf6KdVJ9NBQr824CkR3whnBByI3We6uojHAy4ZHN7aGThpcSheG/NUEteAhmo4BZr
         Tv3iTdzkL3hZ1221FRM9gKTC009LNKGhRQd/2Sb66A6bKtWHwQKYuaOlJstrgROIkLqy
         D/raVHojoJ6xnSPJKnpRe1QKrLqYeYrXcqEw8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nP3yWdSdOBguUQvL1Rluu0V+blq5lMGRtGXamF3bLkw=;
        b=qp99LZ08bOO1sQ5HRDZOWe1Pitx0Vn4sNYVnBwgOGP14PgFVmIptPUdVBvyCxmuj4v
         41PEoWLzP7K+J5BsDBhg2TGLyzynEkvsMPSH0BuKmpquiin471DMtveFPYPXpPBy45V+
         9o1VJv4AzTHVuYoGGUu6dr5iifGUnWBZpxzyxGpdVh71wd2DY1Ym9kNCMcFC1cOUjdnF
         U0dgoImKJdK0xJV048vGstL6H/GalJay7M3x9fiMWKt4A6u0aCJX1uUO5skbD7Yi3fTq
         3wY3bcLG9h7FzNuZbmZYtsoYG+JkmpDY7f4wf1UU7m0aliRvhpjYFNAO9qwHB8mJioMH
         h+xw==
X-Gm-Message-State: APjAAAVXoq7ZCOAa3q7cka9xDdiCjYByV5MKh9K/E5kxd/VHrlrGeFcu
        w6oHKtF8VjfnWKvBjvaGnlIUXw==
X-Google-Smtp-Source: APXvYqxrirpUHWJCS4XTsorLCGVLEXohr/Hu6n159kHS43nSAQBPXQ2rskeSgI2M8selLJJyC1lBrA==
X-Received: by 2002:a63:225b:: with SMTP id t27mr18104506pgm.25.1558694587171;
        Fri, 24 May 2019 03:43:07 -0700 (PDT)
Received: from localhost.localdomain ([183.82.227.60])
        by smtp.gmail.com with ESMTPSA id u1sm2176028pfh.85.2019.05.24.03.43.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 May 2019 03:43:06 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Andrzej Hajda <a.hajda@samsung.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     Michael Trimarchi <michael@amarulasolutions.com>,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@googlegroups.com, linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [DO NOT MERGE] [PATCH v2 2/6] ARM: dts: sun8i: bananapi-m2m: Enable Bananapi S070WV20-CT16 DSI panel
Date:   Fri, 24 May 2019 16:12:52 +0530
Message-Id: <20190524104252.20236-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch add support for Bananapi S070WV20-CT16 DSI panel to
BPI-M2M board.

DSI panel connected via board DSI port with,
- DCDC1 as VCC-DSI supply
- PL5 gpio for lcd reset gpio pin
- PB7 gpio for lcd enable gpio pin
- PL4 gpio for backlight enable pin

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/boot/dts/sun8i-r16-bananapi-m2m.dts | 59 ++++++++++++++++++++
 1 file changed, 59 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-r16-bananapi-m2m.dts b/arch/arm/boot/dts/sun8i-r16-bananapi-m2m.dts
index e1c75f7fa3ca..762d4cfcff01 100644
--- a/arch/arm/boot/dts/sun8i-r16-bananapi-m2m.dts
+++ b/arch/arm/boot/dts/sun8i-r16-bananapi-m2m.dts
@@ -44,6 +44,7 @@
 #include "sun8i-a33.dtsi"
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pwm/pwm.h>
 
 / {
 	model = "BananaPi M2 Magic";
@@ -61,6 +62,14 @@
 		stdout-path = "serial0:115200n8";
 	};
 
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		pwms = <&pwm 0 50000 PWM_POLARITY_INVERTED>;
+		brightness-levels = <1 2 4 8 16 32 64 128 255>;
+		default-brightness-level = <8>;
+		enable-gpios = <&r_pio 0 4 GPIO_ACTIVE_HIGH>; /* LCD-BL-EN: PL4 */
+	};
+
 	leds {
 		compatible = "gpio-leds";
 
@@ -122,6 +131,46 @@
 	status = "okay";
 };
 
+&de {
+	status = "okay";
+};
+
+&dphy {
+	status = "okay";
+};
+
+&dsi {
+	vcc-dsi-supply = <&reg_dcdc1>;		/* VCC-DSI */
+	status = "okay";
+
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		dsi_out: port@0 {
+			reg = <0>;
+
+			dsi_out_panel: endpoint {
+				remote-endpoint = <&panel_out_dsi>;
+			};
+		};
+	};
+
+	panel@0 {
+		compatible = "bananapi,s070wv20-ct16-icn6211";
+		reg = <0>;
+		enable-gpios = <&pio 1 7 GPIO_ACTIVE_HIGH>; /* LCD-PWR-EN: PB7 */
+		reset-gpios = <&r_pio 0 5 GPIO_ACTIVE_HIGH>; /* LCD-RST: PL5 */
+		backlight = <&backlight>;
+
+		port {
+			panel_out_dsi: endpoint {
+				remote-endpoint = <&dsi_out_panel>;
+			};
+		};
+	};
+};
+
 &ehci0 {
 	status = "okay";
 };
@@ -157,6 +206,12 @@
 	status = "okay";
 };
 
+&pwm {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm0_pin>;
+	status = "okay";
+};
+
 &r_rsb {
 	status = "okay";
 
@@ -269,6 +324,10 @@
 	status = "okay";
 };
 
+&tcon0 {
+	status = "okay";
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_pb_pins>;
-- 
2.18.0.321.gffc6fa0e3

