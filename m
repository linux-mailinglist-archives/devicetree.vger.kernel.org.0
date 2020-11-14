Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 50E322B2FBD
	for <lists+devicetree@lfdr.de>; Sat, 14 Nov 2020 19:33:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726198AbgKNSca (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Nov 2020 13:32:30 -0500
Received: from mail.kernel.org ([198.145.29.99]:45986 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726176AbgKNSc3 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 14 Nov 2020 13:32:29 -0500
Received: from dellmb.labs.office.nic.cz (nat-1.nic.cz [217.31.205.1])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 3584D22281;
        Sat, 14 Nov 2020 18:32:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1605378748;
        bh=wlYUJWIHphtEHiGuu+awC6z9J744rfeJaAv3wFIQ/LY=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=p5mt9b6yi4YBc5wWsOYrmt3P0ZRuKaPuraK6M8QWRNjBPqd6DcCi8/nkoIOk9BVYp
         A5nXf/9uqMQF0wkvFazN0AAKJFOc6XNM3Xh/ZrwZxRNppLRznpjyUGXe2PfcYUv3zk
         urSuKaAklvt3daJWB/ELpIOCEqZlm72aj7hlujM4=
From:   =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To:     Gregory CLEMENT <gregory.clement@bootlin.com>
Cc:     arm@kernel.org, =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
        Andrew Lunn <andrew@lunn.ch>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH mvebu-dt v2 4/6] ARM: dts: turris-omnia: add SFP node
Date:   Sat, 14 Nov 2020 19:32:15 +0100
Message-Id: <20201114183217.1352-5-kabel@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201114183217.1352-1-kabel@kernel.org>
References: <20201114183217.1352-1-kabel@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Turris Omnia has a SFP cage that, together with WAN PHY is connected to
eth2 SerDes via a SerDes multiplexor. Describe the SFP cage, but leave
it disabled. Until phylink has support for such multiplexor we will
leave it to U-Boot to enable SFP and disable WAN PHY at boot time
depending on whether a SFP module is present.

Signed-off-by: Marek Behún <kabel@kernel.org>
Fixes: 26ca8b52d6e1 ("ARM: dts: add support for Turris Omnia")
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
Cc: Uwe Kleine-König <uwe@kleine-koenig.org>
Cc: Jason Cooper <jason@lakedaemon.net>
Cc: Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: Andreas Färber <afaerber@suse.de>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
---
 arch/arm/boot/dts/armada-385-turris-omnia.dts | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/armada-385-turris-omnia.dts b/arch/arm/boot/dts/armada-385-turris-omnia.dts
index 7ccebf7d1757..14c21cddef72 100644
--- a/arch/arm/boot/dts/armada-385-turris-omnia.dts
+++ b/arch/arm/boot/dts/armada-385-turris-omnia.dts
@@ -82,6 +82,22 @@ pcie@3,0 {
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
+		 * a SFP module is present.
+		 */
+		status = "disabled";
+	};
 };
 
 &bm {
@@ -130,6 +146,7 @@ &eth2 {
 	phy-mode = "sgmii";
 	phy = <&phy1>;
 	phys = <&comphy5 2>;
+	sfp = <&sfp>;
 	buffer-manager = <&bm>;
 	bm,pool-long = <2>;
 	bm,pool-short = <3>;
@@ -195,7 +212,7 @@ i2c@3 {
 			/* routed to PCIe2 connector (CN62A) */
 		};
 
-		i2c@4 {
+		sfp_i2c: i2c@4 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <4>;
-- 
2.26.2

