Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 368382DE126
	for <lists+devicetree@lfdr.de>; Fri, 18 Dec 2020 11:37:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389173AbgLRKdw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Dec 2020 05:33:52 -0500
Received: from comms.puri.sm ([159.203.221.185]:50118 "EHLO comms.puri.sm"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2389154AbgLRKdw (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 18 Dec 2020 05:33:52 -0500
Received: from localhost (localhost [127.0.0.1])
        by comms.puri.sm (Postfix) with ESMTP id B2418E01A6;
        Fri, 18 Dec 2020 02:32:41 -0800 (PST)
Received: from comms.puri.sm ([127.0.0.1])
        by localhost (comms.puri.sm [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id nzip7bAnrHmC; Fri, 18 Dec 2020 02:32:40 -0800 (PST)
From:   Martin Kepplinger <martin.kepplinger@puri.sm>
To:     robh@kernel.org, shawnguo@kernel.org, festevam@gmail.com
Cc:     kernel@pengutronix.de, linux-imx@nxp.com, krzk@kernel.org,
        kernel@puri.sm, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Martin Kepplinger <martin.kepplinger@puri.sm>
Subject: [PATCH 3/4] arm64: dts: imx8mq-librem5: Move usdhc clocks assignment to board DT
Date:   Fri, 18 Dec 2020 11:31:30 +0100
Message-Id: <20201218103131.22013-4-martin.kepplinger@puri.sm>
In-Reply-To: <20201218103131.22013-1-martin.kepplinger@puri.sm>
References: <20201218103131.22013-1-martin.kepplinger@puri.sm>
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

According to commit e045f044e84e ("arm64: dts: imx8mq: Move usdhc clocks
assignment to board DT") add the clocks assignment to imx8mq-librem5.dtsi
too.

Signed-off-by: Martin Kepplinger <martin.kepplinger@puri.sm>
---
 arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi b/arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi
index a60df09d90f7..47e70ba4e4f1 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi
@@ -1082,6 +1082,8 @@
 };
 
 &usdhc1 {
+	assigned-clocks = <&clk IMX8MQ_CLK_USDHC1>;
+	assigned-clock-rates = <400000000>;
 	pinctrl-names = "default", "state_100mhz", "state_200mhz";
 	pinctrl-0 = <&pinctrl_usdhc1>;
 	pinctrl-1 = <&pinctrl_usdhc1_100mhz>;
@@ -1094,6 +1096,8 @@
 };
 
 &usdhc2 {
+	assigned-clocks = <&clk IMX8MQ_CLK_USDHC2>;
+	assigned-clock-rates = <200000000>;
 	pinctrl-names = "default", "state_100mhz", "state_200mhz";
 	pinctrl-0 = <&pinctrl_usdhc2>;
 	pinctrl-1 = <&pinctrl_usdhc2_100mhz>;
-- 
2.20.1

