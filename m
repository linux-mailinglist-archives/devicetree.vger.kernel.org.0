Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2C2F73979BA
	for <lists+devicetree@lfdr.de>; Tue,  1 Jun 2021 20:06:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234638AbhFASIc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 14:08:32 -0400
Received: from finn.gateworks.com ([108.161.129.64]:43940 "EHLO
        finn.localdomain" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S231331AbhFASIc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Jun 2021 14:08:32 -0400
Received: from 068-189-091-139.biz.spectrum.com ([68.189.91.139] helo=tharvey.pdc.gateworks.com)
        by finn.localdomain with esmtp (Exim 4.93)
        (envelope-from <tharvey@gateworks.com>)
        id 1lo8Vz-003afM-Pg; Tue, 01 Jun 2021 17:49:19 +0000
From:   Tim Harvey <tharvey@gateworks.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Tim Harvey <tharvey@gateworks.com>
Subject: [PATCH 1/4] arm64: dts: imx8mm-venice-gw700x: override thermal cfg for industrial temp
Date:   Tue,  1 Jun 2021 10:49:14 -0700
Message-Id: <20210601174917.1979-1-tharvey@gateworks.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Override the default temperature alert/crit for Industrial temp IMX8M
Mini.

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
 .../boot/dts/freescale/imx8mm-venice-gw700x.dtsi     | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
index c769fadbd008..512b76cd7c3b 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
@@ -493,3 +493,15 @@
 		>;
 	};
 };
+
+&cpu_alert0 {
+	temperature = <95000>;
+	hysteresis = <2000>;
+	type = "passive";
+};
+
+&cpu_crit0 {
+	temperature = <105000>;
+	hysteresis = <2000>;
+	type = "critical";
+};
-- 
2.17.1

