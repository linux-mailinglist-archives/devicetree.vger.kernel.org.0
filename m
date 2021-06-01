Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B09E33979B8
	for <lists+devicetree@lfdr.de>; Tue,  1 Jun 2021 20:06:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234623AbhFASI3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 14:08:29 -0400
Received: from finn.gateworks.com ([108.161.129.64]:43932 "EHLO
        finn.localdomain" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S231331AbhFASI3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Jun 2021 14:08:29 -0400
Received: from 068-189-091-139.biz.spectrum.com ([68.189.91.139] helo=tharvey.pdc.gateworks.com)
        by finn.localdomain with esmtp (Exim 4.93)
        (envelope-from <tharvey@gateworks.com>)
        id 1lo8W3-003afM-MF; Tue, 01 Jun 2021 17:49:23 +0000
From:   Tim Harvey <tharvey@gateworks.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Tim Harvey <tharvey@gateworks.com>
Subject: [PATCH 4/4] arm64: dts: imx8mm-venice-gw7901: enable pull-down on gpio outputs
Date:   Tue,  1 Jun 2021 10:49:17 -0700
Message-Id: <20210601174917.1979-4-tharvey@gateworks.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210601174917.1979-1-tharvey@gateworks.com>
References: <20210601174917.1979-1-tharvey@gateworks.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable internal pull-down on UART transceiver GPIO config pins.

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
 arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
index db43ee28bdb6..0216facb2aef 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
@@ -877,9 +877,9 @@
 
 	pinctrl_uart3_gpio: uart3gpiogrp {
 		fsl,pins = <
-			MX8MM_IOMUXC_SAI1_RXD4_GPIO4_IO6	0x40000041 /* RS232# */
-			MX8MM_IOMUXC_SAI1_RXD5_GPIO4_IO7	0x40000041 /* RS422# */
-			MX8MM_IOMUXC_SAI1_RXD6_GPIO4_IO8	0x40000041 /* RS485# */
+			MX8MM_IOMUXC_SAI1_RXD4_GPIO4_IO6	0x40000110 /* RS232# */
+			MX8MM_IOMUXC_SAI1_RXD5_GPIO4_IO7	0x40000110 /* RS422# */
+			MX8MM_IOMUXC_SAI1_RXD6_GPIO4_IO8	0x40000110 /* RS485# */
 		>;
 	};
 
-- 
2.17.1

