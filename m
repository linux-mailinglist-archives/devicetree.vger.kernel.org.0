Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E08DE2B2E51
	for <lists+devicetree@lfdr.de>; Sat, 14 Nov 2020 17:05:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727162AbgKNQEU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Nov 2020 11:04:20 -0500
Received: from mail.kernel.org ([198.145.29.99]:52760 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727158AbgKNQEU (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 14 Nov 2020 11:04:20 -0500
Received: from dellmb.labs.office.nic.cz (nat-1.nic.cz [217.31.205.1])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 7FBE522275;
        Sat, 14 Nov 2020 16:04:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1605369860;
        bh=EclCYfkYlHRhCyfhDTt262gDC6+Y8TgxBLvPt329UUQ=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=qtQR7qfaiF8z4M54Rub5i0cGertUPGb/3A32Cqx6DMKvx/LZ0gZ/By4PsFUhfCafq
         saNFExp9+axsn9Uip/r+nxi1M3C5QYtwDONgd1REzu9vvyZzZLa/8xglVZByWtB9nf
         Lt2rTZBwC9KYOOkTvMGsGBGJ8UVgCK3ZrjAdDveA=
From:   =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To:     Gregory CLEMENT <gregory.clement@bootlin.com>
Cc:     arm@kernel.org, =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
        Andrew Lunn <andrew@lunn.ch>, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org
Subject: [PATCH mvebu-dt 3/6] ARM: dts: turris-omnia: describe ethernet-phy interrupt
Date:   Sat, 14 Nov 2020 17:04:06 +0100
Message-Id: <20201114160409.19670-4-kabel@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201114160409.19670-1-kabel@kernel.org>
References: <20201114160409.19670-1-kabel@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Describe ethernet-phy interrupt for Turris Omnia so that the PHY does
not need to be polled. We also need to describe the PCA9538 as an
interrupt controller.

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
 arch/arm/boot/dts/armada-385-turris-omnia.dts | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/armada-385-turris-omnia.dts b/arch/arm/boot/dts/armada-385-turris-omnia.dts
index 9de26c78ec4c..599eecf1a02c 100644
--- a/arch/arm/boot/dts/armada-385-turris-omnia.dts
+++ b/arch/arm/boot/dts/armada-385-turris-omnia.dts
@@ -238,6 +238,9 @@ pcawan: gpio@71 {
 				interrupt-parent = <&gpio1>;
 				interrupts = <14 IRQ_TYPE_LEVEL_LOW>;
 
+				interrupt-controller;
+				#interrupt-cells = <2>;
+
 				gpio-controller;
 				#gpio-cells = <2>;
 			};
@@ -255,7 +258,8 @@ phy1: phy@1 {
 		compatible = "ethernet-phy-id0141.0DD1", "ethernet-phy-ieee802.3-c22";
 		reg = <1>;
 
-		/* irq is connected to &pcawan pin 7 */
+		interrupt-parent = <&pcawan>;
+		interrupt = <7 IRQ_TYPE_LEVEL_LOW>;
 	};
 
 	/* Switch MV88E6176 at address 0x10 */
-- 
2.26.2

