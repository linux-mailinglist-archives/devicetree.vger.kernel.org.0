Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0F0DC2B3520
	for <lists+devicetree@lfdr.de>; Sun, 15 Nov 2020 14:59:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727174AbgKON7h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 15 Nov 2020 08:59:37 -0500
Received: from mail.kernel.org ([198.145.29.99]:40660 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726743AbgKON7h (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 15 Nov 2020 08:59:37 -0500
Received: from dellmb.labs.office.nic.cz (nat-1.nic.cz [217.31.205.1])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 9ADD52344C;
        Sun, 15 Nov 2020 13:59:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1605448776;
        bh=we+yyfWYBsb/xAQlgmkzu6Pex8YwPIxVvTjuJiK+Cxk=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=QvNjKjrezF0D7+LBGnPnx2gtV5HOcM67f1xKlRsxQ5U2D2qgBZXaYWUVS6sR0uDi2
         7wb2Jy+khGh24i4dd5eQUZm8rnoipwpSahrQ+8nsl3u0bza7IshybEDRmUgqSPrv1M
         SskyNyve0UZkUnKx+Ocf2P2IuzlrfBxwDKuD02js=
From:   =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To:     Gregory CLEMENT <gregory.clement@bootlin.com>
Cc:     arm@kernel.org, =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
        Andrew Lunn <andrew@lunn.ch>,
        Russell King - ARM Linux admin <linux@armlinux.org.uk>,
        linux-arm-kernel@lists.infradead.org,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH mvebu-dt v3 4/7] ARM: dts: turris-omnia: add SFP node
Date:   Sun, 15 Nov 2020 14:59:20 +0100
Message-Id: <20201115135923.11523-5-kabel@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201115135923.11523-1-kabel@kernel.org>
References: <20201115135923.11523-1-kabel@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Turris Omnia has an SFP cage that, together with WAN PHY, is connected
to eth2 SerDes via a SerDes multiplexor. When a SFP module is present,
the multiplexor switches the SerDes signal from PHY to SFP.

Describe the SFP cage, but leave it disabled. Until phylink has support
for such configuration, we are leaving it to U-Boot to enable SFP and
disable WAN PHY at boot time depending on whether a SFP module is
present.

Signed-off-by: Marek Behún <kabel@kernel.org>
Fixes: 26ca8b52d6e1 ("ARM: dts: add support for Turris Omnia")
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
Cc: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Cc: linux-arm-kernel@lists.infradead.org
Cc: Uwe Kleine-König <uwe@kleine-koenig.org>
Cc: Jason Cooper <jason@lakedaemon.net>
Cc: Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: Andreas Färber <afaerber@suse.de>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
---
 arch/arm/boot/dts/armada-385-turris-omnia.dts | 29 ++++++++++++++++++-
 1 file changed, 28 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/armada-385-turris-omnia.dts b/arch/arm/boot/dts/armada-385-turris-omnia.dts
index 7ccebf7d1757..f7498543c9ad 100644
--- a/arch/arm/boot/dts/armada-385-turris-omnia.dts
+++ b/arch/arm/boot/dts/armada-385-turris-omnia.dts
@@ -82,6 +82,23 @@ pcie@3,0 {
 			};
 		};
 	};
+
+	sfp: sfp {
+		compatible = "sff,sfp";
+		i2c-bus = <&sfp_i2c>;
+		tx-fault-gpios = <&pcawan 0 GPIO_ACTIVE_HIGH>;
+		tx-disable-gpios = <&pcawan 1 GPIO_ACTIVE_HIGH>;
+		rate-select0-gpios = <&pcawan 2 GPIO_ACTIVE_HIGH>;
+		los-gpios = <&pcawan 3 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&pcawan 4 GPIO_ACTIVE_LOW>;
+
+		/*
+		 * For now this has to be enabled at boot time by U-Boot when
+		 * a SFP module is present. Read more in the comment in the
+		 * eth2 node below.
+		 */
+		status = "disabled";
+	};
 };
 
 &bm {
@@ -126,10 +143,20 @@ fixed-link {
 
 /* WAN port */
 &eth2 {
+	/*
+	 * eth2 is connected via a multiplexor to both the SFP cage and to
+	 * ethernet-phy@1. The multiplexor switches the signal to SFP cage when
+	 * a SFP module is present, as determined by the mode-def0 GPIO.
+	 *
+	 * Until kernel supports this configuration properly, in case SFP module
+	 * is present, U-Boot has to enable the sfp node above, remove phy
+	 * handle and add managed = "in-band-status" property.
+	 */
 	status = "okay";
 	phy-mode = "sgmii";
 	phy = <&phy1>;
 	phys = <&comphy5 2>;
+	sfp = <&sfp>;
 	buffer-manager = <&bm>;
 	bm,pool-long = <2>;
 	bm,pool-short = <3>;
@@ -195,7 +222,7 @@ i2c@3 {
 			/* routed to PCIe2 connector (CN62A) */
 		};
 
-		i2c@4 {
+		sfp_i2c: i2c@4 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <4>;
-- 
2.26.2

