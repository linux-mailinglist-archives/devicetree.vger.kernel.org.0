Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 37BE12DB30
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2019 12:57:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726911AbfE2K5N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 May 2019 06:57:13 -0400
Received: from mail-pl1-f193.google.com ([209.85.214.193]:45230 "EHLO
        mail-pl1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726038AbfE2K5N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 May 2019 06:57:13 -0400
Received: by mail-pl1-f193.google.com with SMTP id a5so896081pls.12
        for <devicetree@vger.kernel.org>; Wed, 29 May 2019 03:57:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2ZQ8G0W1S9OmrPavif11lWWMbohgMuBG92FhjQ0hCpY=;
        b=gdGxlLlLsfXGohWiydB6LjurSsdfuFwPeks8QxffA0jURX8ULCrSOR2YiO7hgtpsji
         pRmU5gTaS68DtWTDZ+9jgfF86+uStkqc1uiYAY/md8Bxjem8cy01t+D3dbrvS2sRyZYA
         bx3Xe8a04d+GpRGxmn/E53y2kaBxnnVJcM0zs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2ZQ8G0W1S9OmrPavif11lWWMbohgMuBG92FhjQ0hCpY=;
        b=Myd2+uN1Qc8rZMaTNPJv+5a2oc1ESYhQllsrKu0luleGZJQce5AYBNNyMsiqPQRrc0
         8DPD2PTKy5tSvLhCa5ppbFsxl+3vFpkJFUPoaEz82+a/kNwdXbHjARXYqlxF/AWSQrsu
         sLSEjUJBr9pADz6g1+yiPY7pzVuKGjSKdS0eRZPTYge7rRWeVMEvBf6KqZPpxtC/ZMml
         5dwZs5WIb79c+ItGhX2m/k8ahn+ipVshHCWK0L7kiJyg19TntK8bFyxDZmzi4CIqyyMD
         +gqVu8yFbvJMXoRf5Hd6MpRXobK6vvEXTZqGb39dqyUZe8tq/fpbplqhAy3zKde8JjmF
         x7Rg==
X-Gm-Message-State: APjAAAXQfoi2bSd5HHcG6RHoo/Innbtf/6C60dlSmcP2NW8kCnynEph2
        uxaVBMHm83o+Vff+aeI2e1lA4g==
X-Google-Smtp-Source: APXvYqxJAVroZSxkWNSASs009+W1R6iWdZWK44wcz1sc8TL7INu/U1qlJ65ThlWxirmvQ5tEXda/FA==
X-Received: by 2002:a17:902:a982:: with SMTP id bh2mr35644829plb.224.1559127432704;
        Wed, 29 May 2019 03:57:12 -0700 (PDT)
Received: from localhost.localdomain ([49.206.202.218])
        by smtp.gmail.com with ESMTPSA id 184sm18974479pfa.48.2019.05.29.03.57.08
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 May 2019 03:57:12 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Maxime Ripard <maxime.ripard@bootlin.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Michael Trimarchi <michael@amarulasolutions.com>,
        devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
        linux-amarula@amarulasolutions.com,
        Sergey Suloev <ssuloev@orpaltech.com>,
        Ryan Pannell <ryan@osukl.com>, bshah@mykolab.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [DO NOT MERGE] [PATCH v9 7/9] arm64: dts: allwinner: bananapi-m64: Enable Bananapi S070WV20-CT16 DSI panel
Date:   Wed, 29 May 2019 16:26:13 +0530
Message-Id: <20190529105615.14027-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190529105615.14027-1-jagan@amarulasolutions.com>
References: <20190529105615.14027-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch add support for Bananapi S070WV20-CT16 DSI panel to
BPI-M64 board.

DSI panel connected via board DSI port with,
- DLDO1 as VCC-DSI supply
- DCDC1 as VDD supply
- PD7 gpio for lcd enable pin
- PD6 gpio for lcd reset pin
- PD5 gpio for backlight enable pin

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../dts/allwinner/sun50i-a64-bananapi-m64.dts | 31 +++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
index c2a6b73b17cf..166b9761ca83 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
@@ -45,6 +45,7 @@
 #include "sun50i-a64.dtsi"
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pwm/pwm.h>
 
 / {
 	model = "BananaPi-M64";
@@ -56,6 +57,14 @@
 		serial1 = &uart1;
 	};
 
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		pwms = <&r_pwm 0 50000 PWM_POLARITY_INVERTED>;
+		brightness-levels = <1 2 4 8 16 32 64 128 255>;
+		default-brightness-level = <2>;
+		enable-gpios = <&pio 3 5 GPIO_ACTIVE_HIGH>; /* LCD-BL-EN: PD5 */
+	};
+
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
@@ -116,6 +125,24 @@
 	status = "okay";
 };
 
+&dphy {
+	status = "okay";
+};
+
+&dsi {
+	vcc-dsi-supply = <&reg_dldo1>;		/* VCC3V3-DSI */
+	status = "okay";
+
+	panel@0 {
+		compatible = "bananapi,s070wv20-ct16-icn6211";
+		reg = <0>;
+		enable-gpios = <&pio 3 7 GPIO_ACTIVE_HIGH>; /* LCD-PWR-EN: PD7 */
+		reset-gpios = <&pio 3 6 GPIO_ACTIVE_HIGH>; /* LCD-RST: PD6 */
+		vdd-supply = <&reg_dcdc1>;
+		backlight = <&backlight>;
+	};
+};
+
 &ehci0 {
 	status = "okay";
 };
@@ -206,6 +233,10 @@
 	status = "okay";
 };
 
+&r_pwm {
+	status = "okay";
+};
+
 &r_rsb {
 	status = "okay";
 
-- 
2.18.0.321.gffc6fa0e3

