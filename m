Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D244648D20F
	for <lists+devicetree@lfdr.de>; Thu, 13 Jan 2022 06:37:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229810AbiAMFhv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jan 2022 00:37:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229798AbiAMFhu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jan 2022 00:37:50 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7196AC06173F
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 21:37:50 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id x22so15653230lfd.10
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 21:37:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wirenboard-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vIhVOFoEFO3ge9QX7EEmaWp+M7MlXRkxdj6Ox9QmAu4=;
        b=bs5njQm/d7lRUNLXwg+jL7bjAJsuyx82JmChSb3YKsmIG7tQc0srQdbl6ga+Q2LPnO
         ld9HhOOwtBQ3kzmSNeelAFtRv1OfaGnd4BOcEPuJl9Sw4S4n7Ciq68EuiWmVmu+ZXw/7
         TsLjZi+jKF9kEfSnE0x75x8D9eeUHu56OYA+4LD1htPw7gM63Y4xGPb85i+dZavV8b8O
         iYbuBoYoUhnkqpKvWLaxW70JbjcmnpN82ODPDkI66FP9o20fl/KZ7ApKOBiPLNAFBlZD
         pO5EyJONm9l5L8FYQW70bj1QhdCSrh7aYkvmDcUDED51BOjKtPfzIE4y0B+/sZxrrlwC
         EIBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vIhVOFoEFO3ge9QX7EEmaWp+M7MlXRkxdj6Ox9QmAu4=;
        b=AMZOZxulyqleDMeo+dmKM8zPzyrBaA/fP2X5ibH+SQbJ9IGEvvkJobeycrGPZJ5D7b
         OminzSjC+sZ2K7Big40MexZM0dvMxN11exnRw+KCgXUru3jJKyvlLpjU0zTiwkzK3nAF
         X3RhmcVI0W+7aDSzrZQKnkbqczRb16u3i2RBxSfN09RUEHISPsdWdJzDOOUgNOnmzT86
         VKUOMqs92iCMjDK02dkzDzerhfj3sIQNwKrIx0vnLTxc/MkSfoljBDvaysr2fmdQW4nf
         Dsy/GYv3XXT+c7ObQ0tz9VlXubn3IgW2UPZRclVdcmc55OkjJMJ1NrjoT3UZBNJFFXD+
         af8w==
X-Gm-Message-State: AOAM530GJ5rJwz4htwnXTqcWfg++T6mOLP34NdNY2HdgdA+of2FK3dRT
        KlYL5XH1UDmBUs1LJmMhA80fgg==
X-Google-Smtp-Source: ABdhPJyVV0NrO6DO+IvlzUdJgBUhS30P0tshAoYYNF1cPgGBE0bBQQt+qKLDR4dI3UMvJgGkR3jo9Q==
X-Received: by 2002:a2e:a88a:: with SMTP id m10mr1989969ljq.506.1642052268785;
        Wed, 12 Jan 2022 21:37:48 -0800 (PST)
Received: from boger-laptop.lan (81.5.110.253.dhcp.mipt-telecom.ru. [81.5.110.253])
        by smtp.gmail.com with ESMTPSA id x21sm180212lfa.296.2022.01.12.21.37.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jan 2022 21:37:48 -0800 (PST)
From:   Evgeny Boger <boger@wirenboard.com>
To:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org
Cc:     Evgeny Boger <boger@wirenboard.com>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>, linux-sunxi@lists.linux.dev
Subject: [PATCH v5 3/3] ARM: dts: sun8i: r40: add second ethernet support
Date:   Thu, 13 Jan 2022 08:37:34 +0300
Message-Id: <20220113053734.105813-4-boger@wirenboard.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220113053734.105813-1-boger@wirenboard.com>
References: <20220113053734.105813-1-boger@wirenboard.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

R40 (aka V40, A40i, T3) has two different Ethernet IPs
called EMAC and GMAC. EMAC only support 10/100 Mbit in MII mode,
while GMAC support both 10/100 (MII) and 10/100/1000 (RGMII).

In contrast to A10/A20 where GMAC and EMAC share the same pins
making EMAC somewhat pointless, on R40 EMAC can be routed to port H.
Both EMAC (on port H) and GMAC (on port A) can be then enabled at
the same time, allowing for two ethernet ports.

Signed-off-by: Evgeny Boger <boger@wirenboard.com>
---
 arch/arm/boot/dts/sun8i-r40.dtsi | 49 ++++++++++++++++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
index 03d3e5f45a09..8770b105f86e 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -217,6 +217,19 @@ syscon: system-control@1c00000 {
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
+				};
+			};
+
 			sram_c: sram@1d00000 {
 				compatible = "mmio-sram";
 				reg = <0x01d00000 0xd0000>;
@@ -553,6 +566,24 @@ gmac_rgmii_pins: gmac-rgmii-pins {
 				drive-strength = <40>;
 			};
 
+			emac_pa_pins: emac-pa-pins {
+				pins = "PA0", "PA1", "PA2",
+				       "PA3", "PA4", "PA5", "PA6",
+				       "PA7", "PA8", "PA9", "PA10",
+				       "PA11", "PA12", "PA13", "PA14",
+				       "PA15", "PA16";
+				function = "emac";
+			};
+
+			emac_ph_pins: emac-ph-pins {
+				pins = "PH8", "PH9", "PH10", "PH11",
+				       "PH14", "PH15", "PH16", "PH17",
+				       "PH18","PH19", "PH20", "PH21",
+				       "PH22", "PH23", "PH24", "PH25",
+				       "PH26", "PH27";
+				function = "emac";
+			};
+
 			i2c0_pins: i2c0-pins {
 				pins = "PB0", "PB1";
 				function = "i2c0";
@@ -999,6 +1030,24 @@ gmac_mdio: mdio {
 			};
 		};
 
+		emac: ethernet@1c0b000 {
+			compatible = "allwinner,sun8i-r40-emac";
+			reg = <0x01c0b000 0x1000>;
+			interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_EMAC>;
+			resets = <&ccu RST_BUS_EMAC>;
+			allwinner,sram = <&emac_sram 1>;
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
2.25.1

