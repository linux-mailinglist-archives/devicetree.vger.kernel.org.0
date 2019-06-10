Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8E3873B537
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2019 14:49:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389639AbfFJMtj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Jun 2019 08:49:39 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:39578 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389474AbfFJMti (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Jun 2019 08:49:38 -0400
Received: by mail-wr1-f66.google.com with SMTP id x4so6394038wrt.6
        for <devicetree@vger.kernel.org>; Mon, 10 Jun 2019 05:49:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=paZ5pWp7Tw9Kqpu3mv/pxtbEqmzU7N+ABWaMNMy3HrM=;
        b=vPytJ7dJXkP1fOwjeKYjBWk81r/Ejltc5k1ajCYbmyhnSp6Xzx9aL+/KnPEHvv843o
         sjRZrvswUUZoTRSosIwhd6otjZoHVxoSUX9/4DkilztMtX+cJm1m3LIxQ/MEAPvK/k71
         DyFrJBXiqtmBGr3yuiBjks4cVBPJnvj5bsR5h3pE55neZbUPHMogJhmLmFj8/0HEG+kE
         xNTFydhLuO7A/8lOI7ZK3KSHjydcKiWn7uqHsQnV1r/YhKte5xkxWPL9XnTyug2Ae5eE
         a+v87M/TIuZRvWOWlwZgXiVY6Y1uphLRVvZhOEGOt688wKX2E62XTu6UU6KbAN/LGHRb
         CSsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=paZ5pWp7Tw9Kqpu3mv/pxtbEqmzU7N+ABWaMNMy3HrM=;
        b=YpitZ1BL6j62n5qHWm1WdkkaDEKfp2otmmQC0V9NFcDu/LlH2E6yRZEnD66ITDRGDz
         bLpK+7lWtEYiuMBxgrvfuFdhr6YsKEN88Kp8J2K0d4fYF4UlgCKG8zEyLwbp1ZldsW02
         xXdi7Z2izFssXvgsRur7tco9NxkuLky13Tl8lbojK+FjUgz9k2fUh626z9kyBXxLavSa
         O/EH16fNdseUYMgOKPM4UXMKznGAHc+6aWrrqSLgEYkH9srpVkJ8UEiId6lNhjjJYS7A
         aM4544PLbeEYfsgGyWKtQ6//EvN8d/f53ap2UtAGJEfkhnsGRV692ILfDtW30qlHrBv0
         XtmA==
X-Gm-Message-State: APjAAAU3q8eg3mhrqHekxdas+f8xu2UxzYrdV3s+Ci2on/TS+nkz4nIi
        ftWNGX64ev6IwCxMJBNlcVPh3w==
X-Google-Smtp-Source: APXvYqw3xovslR/1IsJwGC2mxhAa5CikdWZnlwoZKEOVXpgVqn2wnhmDPTd/DUL87e+yhezi7pr04g==
X-Received: by 2002:adf:9023:: with SMTP id h32mr45385160wrh.95.1560170977216;
        Mon, 10 Jun 2019 05:49:37 -0700 (PDT)
Received: from boomer.local ([2a01:e34:eeb6:4690:106b:bae3:31ed:7561])
        by smtp.googlemail.com with ESMTPSA id v24sm7550504wmj.26.2019.06.10.05.49.36
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 10 Jun 2019 05:49:36 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: meson: g12a: sort sdio nodes correctly
Date:   Mon, 10 Jun 2019 14:49:31 +0200
Message-Id: <20190610124931.17422-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix sdio node order in the soc device tree

Fixes: a1737347250e ("arm64: dts: meson: g12a: add SDIO controller")
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi | 73 ++++++++++-----------
 1 file changed, 36 insertions(+), 37 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
index 6aec4cf87350..0642e0a6c605 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
@@ -843,6 +843,29 @@
 						};
 					};
 
+					sdio_pins: sdio {
+						mux {
+							groups = "sdio_d0",
+								 "sdio_d1",
+								 "sdio_d2",
+								 "sdio_d3",
+								 "sdio_clk",
+								 "sdio_cmd";
+							function = "sdio";
+							bias-disable;
+							drive-strength-microamp = <4000>;
+						};
+					};
+
+					sdio_clk_gate_pins: sdio_clk_gate {
+						mux {
+							groups = "GPIOX_4";
+							function = "gpio_periphs";
+							bias-pull-down;
+							drive-strength-microamp = <4000>;
+						};
+					};
+
 					spdif_in_a10_pins: spdif-in-a10 {
 						mux {
 							groups = "spdif_in_a10";
@@ -1326,30 +1349,6 @@
 						};
 					};
 
-					sdio_pins: sdio {
-						mux {
-							groups = "sdio_d0",
-								 "sdio_d1",
-								 "sdio_d2",
-								 "sdio_d3",
-								 "sdio_cmd",
-								 "sdio_clk";
-							function = "sdio";
-							bias-disable;
-							drive-strength-microamp = <4000>;
-						};
-					};
-
-					sdio_clk_gate_pins: sdio_clk_gate {
-						mux {
-							groups = "GPIOX_4";
-							function = "gpio_periphs";
-							bias-pull-down;
-							drive-strength-microamp = <4000>;
-						};
-					};
-
-
 					uart_a_pins: uart-a {
 						mux {
 							groups = "uart_a_tx",
@@ -2316,6 +2315,19 @@
 			};
 		};
 
+		sd_emmc_a: sd@ffe03000 {
+			compatible = "amlogic,meson-axg-mmc";
+			reg = <0x0 0xffe03000 0x0 0x800>;
+			interrupts = <GIC_SPI 189 IRQ_TYPE_EDGE_RISING>;
+			status = "disabled";
+			clocks = <&clkc CLKID_SD_EMMC_A>,
+				 <&clkc CLKID_SD_EMMC_A_CLK0>,
+				 <&clkc CLKID_FCLK_DIV2>;
+			clock-names = "core", "clkin0", "clkin1";
+			resets = <&reset RESET_SD_EMMC_A>;
+			amlogic,dram-access-quirk;
+		};
+
 		sd_emmc_b: sd@ffe05000 {
 			compatible = "amlogic,meson-axg-mmc";
 			reg = <0x0 0xffe05000 0x0 0x800>;
@@ -2340,19 +2352,6 @@
 			resets = <&reset RESET_SD_EMMC_C>;
 		};
 
-		sd_emmc_a: sd@ffe03000 {
-			compatible = "amlogic,meson-axg-mmc";
-			reg = <0x0 0xffe03000 0x0 0x800>;
-			interrupts = <GIC_SPI 189 IRQ_TYPE_EDGE_RISING>;
-			status = "disabled";
-			clocks = <&clkc CLKID_SD_EMMC_A>,
-				 <&clkc CLKID_SD_EMMC_A_CLK0>,
-				 <&clkc CLKID_FCLK_DIV2>;
-			clock-names = "core", "clkin0", "clkin1";
-			resets = <&reset RESET_SD_EMMC_A>;
-			amlogic,dram-access-quirk;
-		};
-
 		usb: usb@ffe09000 {
 			status = "disabled";
 			compatible = "amlogic,meson-g12a-usb-ctrl";
-- 
2.20.1

