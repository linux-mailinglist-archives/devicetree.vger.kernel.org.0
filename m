Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 03EA933D5FD
	for <lists+devicetree@lfdr.de>; Tue, 16 Mar 2021 15:43:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233132AbhCPOnN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Mar 2021 10:43:13 -0400
Received: from foss.arm.com ([217.140.110.172]:44134 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233841AbhCPOmr (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 16 Mar 2021 10:42:47 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1F3C2D6E;
        Tue, 16 Mar 2021 07:42:47 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C39DF3F792;
        Tue, 16 Mar 2021 07:42:45 -0700 (PDT)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@googlegroups.com
Subject: [PATCH] arm64: dts: allwinner: Fix SD card CD GPIO for SOPine systems
Date:   Tue, 16 Mar 2021 14:42:19 +0000
Message-Id: <20210316144219.5973-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.14.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Commit 941432d00768 ("arm64: dts: allwinner: Drop non-removable from
SoPine/LTS SD card") enabled the card detect GPIO for the SOPine module,
along the way with the Pine64-LTS, which share the same base .dtsi.

However while both boards indeed have a working CD GPIO on PF6, the
polarity is different: the SOPine modules uses a "push-pull" socket,
which has an active-high switch, while the Pine64-LTS use the more
traditional push-push socket and the common active-low switch.

Fix the polarity in the sopine.dtsi, and overwrite it in the LTS
board .dts, to make the SD card work again on systems using SOPine
modules.

Fixes: 941432d00768 ("arm64: dts: allwinner: Drop non-removable from SoPine/LTS SD card")
Reported-by: Ashley <contact@victorianfox.com>
Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
Hi,

sorry, that slipped through my testing. I verified that the CD switch worked,
but didn't actually boot Linux on the SOPine baseboard.
Thanks to Ashley for the heads up!

Cheers,
Andre

 arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts | 4 ++++
 arch/arm64/boot/dts/allwinner/sun50i-a64-sopine.dtsi    | 2 +-
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
index 437ffe3628a5..e79ce49e7e6a 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
@@ -19,3 +19,7 @@
 		};
 	};
 };
+
+&mmc0 {
+	cd-gpios = <&pio 5 6 GPIO_ACTIVE_LOW>; /* PF6 push-push switch */
+};
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine.dtsi
index 3402cec87035..df62044ff7a7 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine.dtsi
@@ -34,7 +34,7 @@
 	vmmc-supply = <&reg_dcdc1>;
 	disable-wp;
 	bus-width = <4>;
-	cd-gpios = <&pio 5 6 GPIO_ACTIVE_LOW>; /* PF6 */
+	cd-gpios = <&pio 5 6 GPIO_ACTIVE_HIGH>; /* PF6 push-pull switch */
 	status = "okay";
 };
 
-- 
2.17.5

