Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7A66B49AA5D
	for <lists+devicetree@lfdr.de>; Tue, 25 Jan 2022 05:36:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1325445AbiAYDhJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jan 2022 22:37:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S3416114AbiAYBzB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jan 2022 20:55:01 -0500
Received: from mail-qv1-xf34.google.com (mail-qv1-xf34.google.com [IPv6:2607:f8b0:4864:20::f34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 697C5C028BEE
        for <devicetree@vger.kernel.org>; Mon, 24 Jan 2022 17:13:57 -0800 (PST)
Received: by mail-qv1-xf34.google.com with SMTP id b12so3468090qvz.5
        for <devicetree@vger.kernel.org>; Mon, 24 Jan 2022 17:13:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6uM0K9ypWHuunAtuWXurQl9ezuH8GPAmMLk0xtAP+CI=;
        b=D1gti9o9D3gNR71qvouok3oJVuKQ4hIH7wAJs8xSfBeK9TL2UmI1O2bhuIe6TUlUId
         IF3LJTmN1qKT9oyFHWOOUV4lWrWJyKbmLZELoTBn2ju9WUCJFJlPcaJDH137RvW+1fGU
         Y2axJzQjUCwr9/u0F0//GP/JK5ofyDPNPyI8Uh+OfLkPUX7lLjkOZHpG/NOwFXvebUhZ
         BxjGyHT0LUWumtPGs7cLR/N7jj8FbPPppo6jm/pnVzpxkWcIWs3p1WQYbpWrGeQOOhIq
         7M3RKattKaxM9985nUH5uxeNrbtym60/O1lp3clIN6N7Hf47kHzIi7lZ3qhzRNtMeOLC
         ScQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6uM0K9ypWHuunAtuWXurQl9ezuH8GPAmMLk0xtAP+CI=;
        b=1w7mP8uOZdRkZTYW2/ttQbJ45YpFqaKnsa0jc0YkFiuRvPg1vJbUgeWjDlJh/gNxUR
         K3iNvaJ5aDR/Zk2h5Xd1/AE7XOI7/AaFeMsafb5xGMlw+S4WbPAmPrEIf4jRC/riTI9Y
         ZcSmpE5q6Ha6FO0vfMsWdmdG6YFky+MDsI2X81XV/rukR5bS7Mg2v5+kwGEhiiyfR+Ib
         nMLWzYMP8Iqwt1gyEerpv0tZ+FqAHjLO00bb4QbfJBS88kNj4VOucA6aEJY8p0QFXmBx
         Hb6mN3uWXGNvVNqeUlQajYuhB+u0/k71QuSefJ0eqtJAP+pgtncaUXNaY2PSGexAesBt
         sHHg==
X-Gm-Message-State: AOAM531E48mIuRKhHzAxXVLNfIIoyLWobVKZMijKhXcfrc3N3XIDvzQE
        Q/HqixP8tx3r5lQdreYw6BDlva1RGSs=
X-Google-Smtp-Source: ABdhPJylYniVJ5Z8SQU0Ynuz4PBilrM0NecJnXhUBcbfA1vXAv/VjEit/xVN1tnZu09bYGH0y8VvtA==
X-Received: by 2002:a05:6214:2529:: with SMTP id gg9mr9762931qvb.85.1643073236305;
        Mon, 24 Jan 2022 17:13:56 -0800 (PST)
Received: from jesse-desktop.jtp-bos.lab (146-115-144-188.s4282.c3-0.nwt-cbr1.sbo-nwt.ma.cable.rcncustomer.com. [146.115.144.188])
        by smtp.gmail.com with ESMTPSA id j14sm8577536qkp.70.2022.01.24.17.13.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jan 2022 17:13:55 -0800 (PST)
From:   Jesse Taube <mr.bossman075@gmail.com>
X-Google-Original-From: Jesse Taube <Mr.Bossman075@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     robh+dt@kernel.org, Mr.Bossman075@gmail.com,
        andre.przywara@arm.com, Mesih Kilinc <mesihkilinc@gmail.com>
Subject: [PATCH] ARM: dts: suniv: Add MMC and clock macros.
Date:   Mon, 24 Jan 2022 20:13:52 -0500
Message-Id: <20220125011352.2691365-1-Mr.Bossman075@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Include clock and reset macros and replace magic numbers.
Add MMC node.

Signed-off-by: Mesih Kilinc <mesihkilinc@gmail.com>
Signed-off-by: Jesse Taube <Mr.Bossman075@gmail.com>
---
 arch/arm/boot/dts/suniv-f1c100s.dtsi | 41 +++++++++++++++++++++++-----
 1 file changed, 34 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boot/dts/suniv-f1c100s.dtsi b/arch/arm/boot/dts/suniv-f1c100s.dtsi
index 6100d3b75f61..32872bb29917 100644
--- a/arch/arm/boot/dts/suniv-f1c100s.dtsi
+++ b/arch/arm/boot/dts/suniv-f1c100s.dtsi
@@ -4,6 +4,9 @@
  * Copyright 2018 Mesih Kilinc <mesihkilinc@gmail.com>
  */
 
+#include <dt-bindings/clock/suniv-ccu-f1c100s.h>
+#include <dt-bindings/reset/suniv-ccu-f1c100s.h>
+
 / {
 	#address-cells = <1>;
 	#size-cells = <1>;
@@ -82,7 +85,7 @@ pio: pinctrl@1c20800 {
 			compatible = "allwinner,suniv-f1c100s-pinctrl";
 			reg = <0x01c20800 0x400>;
 			interrupts = <38>, <39>, <40>;
-			clocks = <&ccu 37>, <&osc24M>, <&osc32k>;
+			clocks = <&ccu CLK_BUS_PIO>, <&osc24M>, <&osc32k>;
 			clock-names = "apb", "hosc", "losc";
 			gpio-controller;
 			interrupt-controller;
@@ -93,6 +96,11 @@ uart0_pe_pins: uart0-pe-pins {
 				pins = "PE0", "PE1";
 				function = "uart0";
 			};
+
+			mmc0_pins: mmc0-pins {
+				pins = "PF0", "PF1", "PF2", "PF3", "PF4", "PF5";
+				function = "mmc0";
+			};
 		};
 
 		timer@1c20c00 {
@@ -108,14 +116,33 @@ wdt: watchdog@1c20ca0 {
 			reg = <0x01c20ca0 0x20>;
 		};
 
+		mmc0: mmc@1c0f000 {
+			compatible = "allwinner,suniv-f1c100s-mmc",
+				     "allwinner,sun7i-a20-mmc";
+			reg = <0x01c0f000 0x1000>;
+			clocks = <&ccu CLK_BUS_MMC0>,
+				 <&ccu CLK_MMC0>,
+				 <&ccu CLK_MMC0_OUTPUT>,
+				 <&ccu CLK_MMC0_SAMPLE>;
+			clock-names = "ahb", "mmc", "output", "sample";
+			resets = <&ccu RST_BUS_MMC0>;
+			reset-names = "ahb";
+			interrupts = <23>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&mmc0_pins>;
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
 		uart0: serial@1c25000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0x01c25000 0x400>;
 			interrupts = <1>;
 			reg-shift = <2>;
 			reg-io-width = <4>;
-			clocks = <&ccu 38>;
-			resets = <&ccu 24>;
+			clocks = <&ccu CLK_BUS_UART0>;
+			resets = <&ccu RST_BUS_UART0>;
 			status = "disabled";
 		};
 
@@ -125,8 +152,8 @@ uart1: serial@1c25400 {
 			interrupts = <2>;
 			reg-shift = <2>;
 			reg-io-width = <4>;
-			clocks = <&ccu 39>;
-			resets = <&ccu 25>;
+			clocks = <&ccu CLK_BUS_UART1>;
+			resets = <&ccu RST_BUS_UART1>;
 			status = "disabled";
 		};
 
@@ -136,8 +163,8 @@ uart2: serial@1c25800 {
 			interrupts = <3>;
 			reg-shift = <2>;
 			reg-io-width = <4>;
-			clocks = <&ccu 40>;
-			resets = <&ccu 26>;
+			clocks = <&ccu CLK_BUS_UART2>;
+			resets = <&ccu RST_BUS_UART2>;
 			status = "disabled";
 		};
 	};
-- 
2.34.1

