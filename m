Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9A9062A4B5
	for <lists+devicetree@lfdr.de>; Sat, 25 May 2019 15:42:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726885AbfEYNmN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 May 2019 09:42:13 -0400
Received: from relay4-d.mail.gandi.net ([217.70.183.196]:35635 "EHLO
        relay4-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726864AbfEYNmN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 May 2019 09:42:13 -0400
X-Originating-IP: 90.89.68.76
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        (Authenticated sender: maxime.ripard@bootlin.com)
        by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 7202DE0007;
        Sat, 25 May 2019 13:42:02 +0000 (UTC)
From:   Maxime Ripard <maxime.ripard@bootlin.com>
To:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH 5/5] ARM: dts: gr8-evb: Fix RTC vendor
Date:   Sat, 25 May 2019 15:41:40 +0200
Message-Id: <20190525134140.6220-5-maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190525134140.6220-1-maxime.ripard@bootlin.com>
References: <20190525134140.6220-1-maxime.ripard@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

For some reason, the RTC vendor is reported to be phg, while the part is
actually made by the much more known NXP. Fix that.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 arch/arm/boot/dts/sun5i-gr8-evb.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/sun5i-gr8-evb.dts b/arch/arm/boot/dts/sun5i-gr8-evb.dts
index d003b895a696..4c20d731a9c6 100644
--- a/arch/arm/boot/dts/sun5i-gr8-evb.dts
+++ b/arch/arm/boot/dts/sun5i-gr8-evb.dts
@@ -150,7 +150,7 @@
 	};
 
 	pcf8563: rtc@51 {
-		compatible = "phg,pcf8563";
+		compatible = "nxp,pcf8563";
 		reg = <0x51>;
 	};
 };
-- 
2.21.0

