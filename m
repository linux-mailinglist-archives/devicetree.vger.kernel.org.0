Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 78E462F4E95
	for <lists+devicetree@lfdr.de>; Wed, 13 Jan 2021 16:29:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725773AbhAMP1y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jan 2021 10:27:54 -0500
Received: from foss.arm.com ([217.140.110.172]:37802 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727250AbhAMP1y (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 13 Jan 2021 10:27:54 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BAAB011D4;
        Wed, 13 Jan 2021 07:27:08 -0800 (PST)
Received: from localhost.localdomain (unknown [172.31.20.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2C3A33F66E;
        Wed, 13 Jan 2021 07:27:07 -0800 (PST)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        Rob Herring <robh@kernel.org>
Cc:     Jernej Skrabec <jernej.skrabec@siol.net>,
        Icenowy Zheng <icenowy@aosc.io>,
        Emmanuel Vadot <manu@bidouilliste.com>,
        Heinrich Schuchardt <xypron.glpk@gmx.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@googlegroups.com
Subject: [PATCH v2 3/8] arm64: dts: allwinner: Pine64-LTS: Add status LED
Date:   Wed, 13 Jan 2021 15:26:25 +0000
Message-Id: <20210113152630.28810-4-andre.przywara@arm.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20210113152630.28810-1-andre.przywara@arm.com>
References: <20210113152630.28810-1-andre.przywara@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Pine64-LTS board features a blue status LED on pin PL7.

Describe it in the DT.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 .../boot/dts/allwinner/sun50i-a64-pine64-lts.dts      | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
index 302e24be0a31..93d271fdbb6c 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
@@ -1,10 +1,21 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 // Copyright (c) 2018 ARM Ltd.
 
+#include <dt-bindings/leds/common.h>
 #include "sun50i-a64-sopine-baseboard.dts"
 
 / {
 	model = "Pine64 LTS";
 	compatible = "pine64,pine64-lts", "allwinner,sun50i-r18",
 		     "allwinner,sun50i-a64";
+
+	led {
+		compatible = "gpio-leds";
+
+		status {
+			function = LED_FUNCTION_STATUS;
+			color = <LED_COLOR_ID_BLUE>;
+			gpios = <&r_pio 0 7 GPIO_ACTIVE_LOW>; /* PL7 */
+		};
+	};
 };
-- 
2.17.5

