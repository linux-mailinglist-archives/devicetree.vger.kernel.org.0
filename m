Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC1CA29822E
	for <lists+devicetree@lfdr.de>; Sun, 25 Oct 2020 15:39:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1415590AbgJYOjW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 25 Oct 2020 10:39:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1415620AbgJYOjW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 25 Oct 2020 10:39:22 -0400
X-Greylist: delayed 2244 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 25 Oct 2020 07:39:22 PDT
Received: from alt.a-painless.mh.aa.net.uk (a-painless.mh.aa.net.uk [IPv6:2001:8b0:0:30::51])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FDFAC0613CE
        for <devicetree@vger.kernel.org>; Sun, 25 Oct 2020 07:39:22 -0700 (PDT)
Received: from cartman.offog.org ([2001:8b0:83b:b53f::a])
        by a-painless.mh.aa.net.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ats@offog.org>)
        id 1kWgay-0001oV-R0; Sun, 25 Oct 2020 14:02:04 +0000
Received: from ats by cartman.offog.org with local (Exim 4.94)
        (envelope-from <ats@offog.org>)
        id 1kWgao-0007UQ-4s; Sun, 25 Oct 2020 14:01:54 +0000
From:   Adam Sampson <ats@offog.org>
To:     linux-sunxi@googlegroups.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     Adam Sampson <ats@offog.org>
Subject: [PATCH] ARM: dts: sun7i: pcduino3-nano: enable RGMII RX/TX delay on PHY
Date:   Sun, 25 Oct 2020 14:01:44 +0000
Message-Id: <20201025140144.28693-1-ats@offog.org>
X-Mailer: git-send-email 2.29.1
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

