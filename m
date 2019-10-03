Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BD8F0C9888
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2019 08:46:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728119AbfJCGqa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Oct 2019 02:46:30 -0400
Received: from mail-pl1-f195.google.com ([209.85.214.195]:46821 "EHLO
        mail-pl1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725879AbfJCGq3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Oct 2019 02:46:29 -0400
Received: by mail-pl1-f195.google.com with SMTP id q24so1002474plr.13
        for <devicetree@vger.kernel.org>; Wed, 02 Oct 2019 23:46:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=iobrvkxDT6nYXsPnTycSKoAi+/ZUGwRhXcWR3t2hhKA=;
        b=BbR+yL4/NsJS6oq8dISWlmaxqoJMqhGGQQrHj/DXx0JxzwaRpUMfB67TpNUdfMxSRQ
         Y5jAi2gX0HtVv2AzJ9/rhyF1R8Tg8UjZPUZVId+PWfKDV7x39UZd8tfqQ9jdB3f4ekFE
         1SWwRZxEpM2V8SKNccS20fxk03vYwq9NPBNnc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=iobrvkxDT6nYXsPnTycSKoAi+/ZUGwRhXcWR3t2hhKA=;
        b=f3nKrPk3cOG9G2ixYsae9fFr+06yXUASR7oarooBVize0tbr0TewhQNTn6Hky5Jpqy
         MPXwCJJCjvv60RzUji+5WyhjEBYTSEoQ/JoK7D9gdv+jgis0aDd19sNtVPPb3exkMLaN
         hlU9vyzV38q98fwWDW2c3k5gol04MhMtw1kVN1WIcZBiz0QU6hRRhG1xy72F3m/l4z3L
         rvuJXfnhWWOF7NUvF1IEWASAAyGWab+HX8y5EH7lNjAffbxxQTUP0S43SmAx40427jmI
         GPk5K103ciqOMpvHwwOdkO9lCvhptxwzgNKEL13LrpzNcPya1qlm3ZwDOrIpmtxIjIAz
         bX/Q==
X-Gm-Message-State: APjAAAVjUTDsL0DRsh3rqc8x/j9bxMvdrxVc9cqJxMfYF1G7QIoWsicf
        ItdHRULusziiMdClT0AZkpfQOg==
X-Google-Smtp-Source: APXvYqwKEdQV435b9tSwO3qAvnE6681+TvxHs5yQQv8hXNnuD+sMc/trfjszHwABt44RSpWlAeprZg==
X-Received: by 2002:a17:902:8f88:: with SMTP id z8mr8195034plo.232.1570085188176;
        Wed, 02 Oct 2019 23:46:28 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.121])
        by smtp.gmail.com with ESMTPSA id b18sm1423294pfi.157.2019.10.02.23.46.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Oct 2019 23:46:27 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>
Cc:     michael@amarulasolutions.com, Icenowy Zheng <icenowy@aosc.io>,
        linux-sunxi <linux-sunxi@googlegroups.com>,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v11 7/7] ARM: dts: sun8i: bananapi-m2m: Enable Bananapi S070WV20-CT16 DSI panel
Date:   Thu,  3 Oct 2019 12:15:27 +0530
Message-Id: <20191003064527.15128-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191003064527.15128-1-jagan@amarulasolutions.com>
References: <20191003064527.15128-1-jagan@amarulasolutions.com>
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
- DLDO1 as VDD supply
- PL5 gpio for lcd reset gpio pin
- PB7 gpio for lcd enable gpio pin
- PL4 gpio for backlight enable pin

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/boot/dts/sun8i-r16-bananapi-m2m.dts | 40 ++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-r16-bananapi-m2m.dts b/arch/arm/boot/dts/sun8i-r16-bananapi-m2m.dts
index e1c75f7fa3ca..4e71e81d2bad 100644
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
 
@@ -122,6 +131,27 @@
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
+	vcc-dsi-supply = <&reg_dcdc1>;		/* VCC3V3-DSI */
+	status = "okay";
+
+	panel@0 {
+		compatible = "bananapi,s070wv20-ct16-icn6211";
+		reg = <0>;
+		enable-gpios = <&pio 1 7 GPIO_ACTIVE_HIGH>; /* LCD-PWR-EN: PB7 */
+		reset-gpios = <&r_pio 0 5 GPIO_ACTIVE_HIGH>; /* LCD-RST: PL5 */
+		backlight = <&backlight>;
+	};
+};
+
 &ehci0 {
 	status = "okay";
 };
@@ -157,6 +187,12 @@
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
 
@@ -269,6 +305,10 @@
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

