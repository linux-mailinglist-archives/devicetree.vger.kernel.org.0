Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 001892C1259
	for <lists+devicetree@lfdr.de>; Mon, 23 Nov 2020 18:50:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729531AbgKWRsV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Nov 2020 12:48:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729370AbgKWRsV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Nov 2020 12:48:21 -0500
Received: from b-painless.mh.aa.net.uk (b-painless.mh.aa.net.uk [IPv6:2001:8b0:0:30::52])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B97CC0613CF
        for <devicetree@vger.kernel.org>; Mon, 23 Nov 2020 09:48:21 -0800 (PST)
Received: from cartman.offog.org ([2001:8b0:83b:b53f::a])
        by b-painless.mh.aa.net.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ats@offog.org>)
        id 1khFwq-0004YD-6M; Mon, 23 Nov 2020 17:48:20 +0000
Received: from ats by cartman.offog.org with local (Exim 4.92.3)
        (envelope-from <ats@offog.org>)
        id 1khFwY-0001pI-3Q; Mon, 23 Nov 2020 17:48:02 +0000
From:   Adam Sampson <ats@offog.org>
To:     Maxime Ripard <maxime@cerno.tech>, Chen-Yu Tsai <wens@kernel.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Adam Sampson <ats@offog.org>,
        linux-sunxi <linux-sunxi@googlegroups.com>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Andrew Lunn <andrew@lunn.ch>
Cc:     Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH] ARM: dts: sun7i: pcduino3-nano: enable RGMII RX/TX delay on PHY
Date:   Mon, 23 Nov 2020 17:47:39 +0000
Message-Id: <20201123174739.6809-1-ats@offog.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The RX/TX delays for the Ethernet PHY on the Linksprite pcDuino 3 Nano
are configured in hardware, using resistors that are populated to pull
the RTL8211E's RXDLY/TXDLY pins low or high as needed.

phy-mode should be set to rgmii-id to reflect this. Previously it was
set to rgmii, which used to work but now results in the delays being
disabled again as a result of the bugfix in commit bbc4d71d6354 ("net:
phy: realtek: fix rtl8211e rx/tx delay config").

Tested on two pcDuino 3 Nano boards purchased in 2015. Without this fix,
Ethernet works unreliably on one board and doesn't work at all on the
other.

Fixes: 061035d456c9 ("ARM: dts: sun7i: Add dts file for pcDuino 3 Nano board")
Signed-off-by: Adam Sampson <ats@offog.org>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
Acked-by: Chen-Yu Tsai <wens@csie.org>
---
 arch/arm/boot/dts/sun7i-a20-pcduino3-nano.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/sun7i-a20-pcduino3-nano.dts b/arch/arm/boot/dts/sun7i-a20-pcduino3-nano.dts
index fce2f7fcd084..bf38c66c1815 100644
--- a/arch/arm/boot/dts/sun7i-a20-pcduino3-nano.dts
+++ b/arch/arm/boot/dts/sun7i-a20-pcduino3-nano.dts
@@ -1,5 +1,5 @@
 /*
- * Copyright 2015 Adam Sampson <ats@offog.org>
+ * Copyright 2015-2020 Adam Sampson <ats@offog.org>
  *
  * This file is dual-licensed: you can use it either under the terms
  * of the GPL or the X11 license, at your option. Note that this dual
@@ -115,7 +115,7 @@ &gmac {
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac_rgmii_pins>;
 	phy-handle = <&phy1>;
-	phy-mode = "rgmii";
+	phy-mode = "rgmii-id";
 	status = "okay";
 };
 
-- 
2.29.1

