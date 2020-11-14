Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 63BA52B2E52
	for <lists+devicetree@lfdr.de>; Sat, 14 Nov 2020 17:05:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727164AbgKNQEW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Nov 2020 11:04:22 -0500
Received: from mail.kernel.org ([198.145.29.99]:52788 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727158AbgKNQEW (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 14 Nov 2020 11:04:22 -0500
Received: from dellmb.labs.office.nic.cz (nat-1.nic.cz [217.31.205.1])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 790B522263;
        Sat, 14 Nov 2020 16:04:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1605369862;
        bh=wZ8EjWLWsrd4cWroJ1bkWgt81X0giJj5sJJSvQJo5TI=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=zjc1T4JTbMBzc/zdEg4DMKdOviDbwagww6+L6S6rYGdSXXm7UB3hzRCRIpbtILkQP
         aybAtV3M014X2QLBPDcqbOjacjCF+8OFxRVCc61oQjOuO/cFCe8x306hxznmHuiJxv
         cx00FqdunHzxtLK7OK+2V4gbasfplgsez9nxgxQE=
From:   =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To:     Gregory CLEMENT <gregory.clement@bootlin.com>
Cc:     arm@kernel.org, =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
        Andrew Lunn <andrew@lunn.ch>, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org
Subject: [PATCH mvebu-dt 4/6] ARM: dts: turris-omnia: add SFP node
Date:   Sat, 14 Nov 2020 17:04:07 +0100
Message-Id: <20201114160409.19670-5-kabel@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201114160409.19670-1-kabel@kernel.org>
References: <20201114160409.19670-1-kabel@kernel.org>
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
Cc: Uwe Kleine-König <uwe@kleine-koenig.org>
Cc: Jason Cooper <jason@lakedaemon.net>
Cc: Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: Andreas Färber <afaerber@suse.de>
Cc: Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
---
 arch/arm/boot/dts/armada-385-turris-omnia.dts | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/armada-385-turris-omnia.dts b/arch/arm/boot/dts/armada-385-turris-omnia.dts
index 599eecf1a02c..67048a88e327 100644
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

