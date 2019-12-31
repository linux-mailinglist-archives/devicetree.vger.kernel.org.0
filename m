Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6C1DD12D8CA
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2019 14:06:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727075AbfLaNG2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 Dec 2019 08:06:28 -0500
Received: from mail-pf1-f196.google.com ([209.85.210.196]:43784 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727233AbfLaNG2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 Dec 2019 08:06:28 -0500
Received: by mail-pf1-f196.google.com with SMTP id x6so18640078pfo.10
        for <devicetree@vger.kernel.org>; Tue, 31 Dec 2019 05:06:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fxRlGBthrDx9tpHcl7NzfKEhaXjVuy3iPazdjbs07eE=;
        b=rWDBjcTP7vdTmVKjqBqJDjfL/KLqpJi6y1PVUoahrxz+jJ5QENHuCIdL5ySphVYxl6
         529D2vpGPkc9u8jeoUmmdiKzi6unJwe9iqHOy+vBniKnoBJ+vDmORXZWNBzyufo6kWmx
         6tulMUwFmnl8PorHxLP0K+IrBi62D2W9ng2LQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fxRlGBthrDx9tpHcl7NzfKEhaXjVuy3iPazdjbs07eE=;
        b=oUrCvFEK0RpYOxzX4LoLEOjsz5QIp3W8SJQiuD+b/lskqptUTh4x7PBGX25dTPT8Mv
         vVdnpSEcCwRON702416ifxORjTYJTQ5rtppC756reM6mEsqNZsb3fIJ28fDVCWjka0Wf
         7J/Jqt8gaI3Yne2mzb8xsIlGBUSZOs6KATMU/HIT29iW8pRRHTz7Eqv53+8plTFArdkG
         bOxqbJKTU6OR610K7kzT8ur92gk6Hk4pPSrCr5jQRKjgpOUkpCOi/k6YIFr54mkA3cxf
         3D8xuLLOozNsukDTHZqpa6TtcU6Ruupim6MtaVl0Ue15dWWEUIDWiqY94hQcSREv3Wi+
         zIog==
X-Gm-Message-State: APjAAAVykQmThZUzHgpkuEBKS4PcbuVnXRqTavSRXwYpsznRnbrz9vC6
        qR03y0Q9AbUu6y/EEQ6QI1FVPHWNaKY=
X-Google-Smtp-Source: APXvYqzDVAb6YX9p2RJMeAlQW3kT2tWCf16EKKLyWJx6VENrFJl3/7ECaNvRha01ZbHs+/sF1cTm0A==
X-Received: by 2002:a63:1110:: with SMTP id g16mr56093805pgl.84.1577797587194;
        Tue, 31 Dec 2019 05:06:27 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.115])
        by smtp.gmail.com with ESMTPSA id i3sm55204089pfg.94.2019.12.31.05.06.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Dec 2019 05:06:26 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Rob Herring <robh+dt@kernel.org>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Mark Rutland <mark.rutland@arm.com>,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        linux-sunxi <linux-sunxi@googlegroups.com>,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [DO NOT MERGE] [PATCH v3 9/9] ARM: dts: sun8i-r40: bananapi-m2-ultra: Enable Bananapi S070WV20-CT16
Date:   Tue, 31 Dec 2019 18:35:28 +0530
Message-Id: <20191231130528.20669-10-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191231130528.20669-1-jagan@amarulasolutions.com>
References: <20191231130528.20669-1-jagan@amarulasolutions.com>
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
Changes for v3:
- none

 .../boot/dts/sun8i-r40-bananapi-m2-ultra.dts  | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-r40-bananapi-m2-ultra.dts b/arch/arm/boot/dts/sun8i-r40-bananapi-m2-ultra.dts
index 42d62d1ba1dc..99f84e6f15ce 100644
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
+		default-brightness-level = <2>;
+		enable-gpios = <&pio 7 16 GPIO_ACTIVE_HIGH>; /* LCD-BL-EN: PH16 */
+	};
+
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
@@ -117,6 +126,24 @@
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
+		vdd-supply = <&reg_dcdc1>;
+		backlight = <&backlight>;
+	};
+};
+
 &ehci1 {
 	status = "okay";
 };
@@ -209,6 +236,12 @@
 	vcc-pg-supply = <&reg_dldo1>;
 };
 
+&pwm {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm0_pin>;
+	status = "okay";
+};
+
 &reg_aldo2 {
 	regulator-min-microvolt = <2500000>;
 	regulator-max-microvolt = <2500000>;
@@ -295,6 +328,10 @@
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

