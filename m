Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4E5E9331BED
	for <lists+devicetree@lfdr.de>; Tue,  9 Mar 2021 01:48:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229718AbhCIArh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Mar 2021 19:47:37 -0500
Received: from mx.socionext.com ([202.248.49.38]:24398 "EHLO mx.socionext.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229517AbhCIArP (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 8 Mar 2021 19:47:15 -0500
X-Greylist: delayed 580 seconds by postgrey-1.27 at vger.kernel.org; Mon, 08 Mar 2021 19:47:15 EST
Received: from unknown (HELO iyokan2-ex.css.socionext.com) ([172.31.9.54])
  by mx.socionext.com with ESMTP; 09 Mar 2021 09:37:35 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
        by iyokan2-ex.css.socionext.com (Postfix) with ESMTP id A6F852059035;
        Tue,  9 Mar 2021 09:37:35 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP; Tue, 9 Mar 2021 09:37:35 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
        by kinkan2.css.socionext.com (Postfix) with ESMTP id 3C59AB1D40;
        Tue,  9 Mar 2021 09:37:35 +0900 (JST)
From:   Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To:     Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>
Cc:     Masami Hiramatsu <masami.hiramatsu@linaro.org>,
        Jassi Brar <jaswinder.singh@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: [PATCH 2/2] arm64: dts: uniphier: Change phy-mode to RGMII-ID to enable delay pins for RTL8211E
Date:   Tue,  9 Mar 2021 09:37:16 +0900
Message-Id: <1615250236-11349-2-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1615250236-11349-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1615250236-11349-1-git-send-email-hayashi.kunihiko@socionext.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

After applying the commit bbc4d71d6354
("net: phy: realtek: fix rtl8211e rx/tx delay config"), the configuration
register for TXDLY and RXDLY is set correctly.

Although some boards have RTL8211E for gigabit network PHY, it turrned out
that the phy-mode should be RGMII-ID mode. This changes 'phy-mode' property
to 'rgmii-id' as default.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi | 2 +-
 arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi b/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
index 52dee61..bd9959f 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
@@ -806,7 +806,7 @@
 			clocks = <&sys_clk 6>;
 			reset-names = "ether";
 			resets = <&sys_rst 6>;
-			phy-mode = "rgmii";
+			phy-mode = "rgmii-id";
 			local-mac-address = [00 00 00 00 00 00];
 			socionext,syscon-phy-mode = <&soc_glue 0>;
 
diff --git a/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi b/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
index 80e2597..2038f51 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
@@ -564,7 +564,7 @@
 			clocks = <&sys_clk 6>;
 			reset-names = "ether";
 			resets = <&sys_rst 6>;
-			phy-mode = "rgmii";
+			phy-mode = "rgmii-id";
 			local-mac-address = [00 00 00 00 00 00];
 			socionext,syscon-phy-mode = <&soc_glue 0>;
 
@@ -585,7 +585,7 @@
 			clocks = <&sys_clk 7>;
 			reset-names = "ether";
 			resets = <&sys_rst 7>;
-			phy-mode = "rgmii";
+			phy-mode = "rgmii-id";
 			local-mac-address = [00 00 00 00 00 00];
 			socionext,syscon-phy-mode = <&soc_glue 1>;
 
-- 
2.7.4

