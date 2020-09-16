Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D2BE926CE1F
	for <lists+devicetree@lfdr.de>; Wed, 16 Sep 2020 23:10:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726353AbgIPVKG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Sep 2020 17:10:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726262AbgIPPz2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Sep 2020 11:55:28 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A37BC002145
        for <devicetree@vger.kernel.org>; Wed, 16 Sep 2020 07:22:54 -0700 (PDT)
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <afa@pengutronix.de>)
        id 1kIYKf-0001wr-0h; Wed, 16 Sep 2020 16:22:49 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <afa@pengutronix.de>)
        id 1kIYKd-0004uw-Sj; Wed, 16 Sep 2020 16:22:47 +0200
From:   Ahmad Fatoum <a.fatoum@pengutronix.de>
To:     Rob Herring <robh+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@st.com>
Cc:     Ahmad Fatoum <a.fatoum@pengutronix.de>, devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: stm32: declare device tree syscon node for TAMP peripheral
Date:   Wed, 16 Sep 2020 16:22:16 +0200
Message-Id: <20200916142216.25142-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: afa@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The stm32mp1 TAMP (Tamper and backup registers) does tamper detection
and features 32 backup registers that, being in the RTC domain, may
survive even with Vdd switched off.

We don't have a driver for the peripheral, but handling it as syscon
allows using it with existing drivers that work with them, in particular
a syscon-reboot-mode child node can be defined in board.dts (or fixed up
by the bootloader) to exchange reboot mode information with the bootloader.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boot/dts/stm32mp151.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp151.dtsi b/arch/arm/boot/dts/stm32mp151.dtsi
index bfe29023fbd5..fa4eb96c95af 100644
--- a/arch/arm/boot/dts/stm32mp151.dtsi
+++ b/arch/arm/boot/dts/stm32mp151.dtsi
@@ -1144,6 +1144,11 @@ syscfg: syscon@50020000 {
 			clocks = <&rcc SYSCFG>;
 		};
 
+		tamp: tamp@5c00a000 {
+			compatible = "simple-bus", "syscon", "simple-mfd";
+			reg = <0x5c00a000 0x400>;
+		};
+
 		lptimer2: timer@50021000 {
 			#address-cells = <1>;
 			#size-cells = <0>;
-- 
2.28.0

