Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 600EE32FE85
	for <lists+devicetree@lfdr.de>; Sun,  7 Mar 2021 04:16:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230140AbhCGDOo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 6 Mar 2021 22:14:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230149AbhCGDOe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 6 Mar 2021 22:14:34 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19141C06174A
        for <devicetree@vger.kernel.org>; Sat,  6 Mar 2021 19:14:24 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id u4so13610271lfs.0
        for <devicetree@vger.kernel.org>; Sat, 06 Mar 2021 19:14:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wirenboard-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=C2CaK9Q5B8faMG7i8vl9maodspZrHVfVr3fXo4WAJf0=;
        b=PNXStpYktEjpBgZ/hissQ3G7IuZT33S2owFauD/MdFMua7SjTngIBWCmUhxJx2l0Y4
         JeaaLGER0jSIIqhRCSTdIuB/cFw1irOvinM15FlArUGS7yFY4GhMc+7750djbSI5EYr7
         zcoc5J3FwgDZSQbpixr7gLBf14QFzB+OqNFTocurqkli3M8xwU4rB4xDV1/WPeyhiEKv
         j1pdW/HRRS8+UmOhtZGiO/fe7gtMvBiFVZxZlfL7CfSDf3b8t8YKls/2eC7aS7wSSvzV
         rdwQOq57QzZ1HecL7++iOWK6NOlh5QH3HsPbeLusC0Du6uFflctJw3mTXg4R9+zhkFNC
         YG8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=C2CaK9Q5B8faMG7i8vl9maodspZrHVfVr3fXo4WAJf0=;
        b=AGAfSKDsbpzjXVSbIm36CX4fR0dclM7JcrfYL4G/HdlmyhxmsCVK54DIaLTMck0YSg
         gI3/9oyNPNtLZ8L7qN4vJmVNiOfCIBr8Ey5fG5XhEN8XYdj4kVD0osDbUIm/iIflN9/h
         Q9ifcVnxd2VBLIjbgoL0hZyqga5WyGBLpdNrnbrs/0nToflbgGXLLgRx40m/uIracf5R
         VAoKChB9LIR8YeyXZ9oTNJXgXDif11AeeDMIrXq/XazyW6k/MAHtlBdgr0rfaYDPjjwJ
         bQP94XBWdX3t1K0jD4k4BvhBlH1IxcKCB2YLPvhBQk/FD9tbUOmlMQYj+17HjOdAuSzC
         c48Q==
X-Gm-Message-State: AOAM530Ce7Yo6A5A/f8SzQxkiRfbN7DdGB3dkLeMaKpvp9oMSG0VMSrm
        bNU51q5GLM8iQQbSHQNk7++hCQ10h0w3lbJL
X-Google-Smtp-Source: ABdhPJxQXQqKVaJ7fRNXa7S/Xh91B3ozqmc3OuC5Wvl80Lk65giyEAZDynCpjQ6XgzF6XdmdUsCToA==
X-Received: by 2002:a05:6512:1181:: with SMTP id g1mr10114244lfr.502.1615086862652;
        Sat, 06 Mar 2021 19:14:22 -0800 (PST)
Received: from boger-laptop.lan (81.5.99.6.dhcp.mipt-telecom.ru. [81.5.99.6])
        by smtp.gmail.com with ESMTPSA id u16sm847582lff.169.2021.03.06.19.14.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Mar 2021 19:14:22 -0800 (PST)
From:   Evgeny Boger <boger@wirenboard.com>
To:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org
Cc:     Evgeny Boger <boger@wirenboard.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 2/2] dts: r40: add second ethernet support
Date:   Sun,  7 Mar 2021 06:13:53 +0300
Message-Id: <20210307031353.12643-4-boger@wirenboard.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210307031353.12643-1-boger@wirenboard.com>
References: <20210307031353.12643-1-boger@wirenboard.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

R40 (aka V40, A40i, T3) has two different Ethernet IP
called EMAC and GMAC.
EMAC only support 10/100 Mbit in MII mode,
while GMAC support both 10/100 (MII) and 10/100/1000 (RGMII).

In contrast to A10/A20 where GMAC and EMAC share the same pins
making EMAC somewhat pointless, on R40 EMAC can be routed to port H.
Both EMAC (on port H) and GMAC (on port A)
 can be then enabled at the same time, allowing for two ethernet ports.

Signed-off-by: Evgeny Boger <boger@wirenboard.com>
---
 arch/arm/boot/dts/sun8i-r40.dtsi | 53 ++++++++++++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
index d5ad3b9efd12..c102c1510012 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -217,6 +217,20 @@
 			#size-cells = <1>;
 			ranges;
 
+			sram_a: sram@0 {
+				compatible = "mmio-sram";
+				reg = <0x00000000 0xc000>;
+				#address-cells = <1>;
+				#size-cells = <1>;
+				ranges = <0 0x00000000 0xc000>;
+
+				emac_sram: sram-section@8000 {
+					compatible = "allwinner,sun4i-a10-sram-a3-a4";
+					reg = <0x8000 0x4000>;
+					status = "okay";
+				};
+			};
+
 			sram_c: sram@1d00000 {
 				compatible = "mmio-sram";
 				reg = <0x01d00000 0xd0000>;
@@ -541,6 +555,24 @@
 				drive-strength = <40>;
 			};
 
+			emac_ph_pins: emac-ph-pins {
+				pins = "PH8", "PH9", "PH10", "PH11",
+				       "PH14", "PH15", "PH16", "PH17",
+				       "PH18","PH19", "PH20", "PH21",
+				       "PH22", "PH23", "PH24", "PH25",
+				       "PH26", "PH27";
+				function = "emac";
+			};
+
+			emac_pa_pins: emac-pa-pins {
+				pins = "PA0", "PA1", "PA2",
+				       "PA3", "PA4", "PA5", "PA6",
+				       "PA7", "PA8", "PA9", "PA10",
+				       "PA11", "PA12", "PA13", "PA14",
+				       "PA15", "PA16";
+				function = "emac";
+			};
+
 			i2c0_pins: i2c0-pins {
 				pins = "PB0", "PB1";
 				function = "i2c0";
@@ -885,6 +917,27 @@
 			};
 		};
 
+		emac: ethernet@1c0b000 {
+			syscon = <&ccu>;
+			compatible = "allwinner,sun4i-a10-emac";
+			reg = <0x01c0b000 0x1000>;
+			interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_EMAC>;
+			resets = <&ccu RST_BUS_EMAC>;
+			allwinner,sram = <&emac_sram 1>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&emac_ph_pins>;
+			status = "disabled";
+		};
+
+		emac_mdio: mdio@1c0b080 {
+			compatible = "allwinner,sun4i-a10-mdio";
+			reg = <0x01c0b080 0x14>;
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
 		mbus: dram-controller@1c62000 {
 			compatible = "allwinner,sun8i-r40-mbus";
 			reg = <0x01c62000 0x1000>;
-- 
2.17.1

