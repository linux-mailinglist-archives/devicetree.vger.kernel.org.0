Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5C5F0331EB7
	for <lists+devicetree@lfdr.de>; Tue,  9 Mar 2021 06:33:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229524AbhCIFdW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Mar 2021 00:33:22 -0500
Received: from mail-out.m-online.net ([212.18.0.9]:56011 "EHLO
        mail-out.m-online.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229641AbhCIFcx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Mar 2021 00:32:53 -0500
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4DvkPc2jfDz1qs39;
        Tue,  9 Mar 2021 06:32:52 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4DvkPc2C6Yz1qqkj;
        Tue,  9 Mar 2021 06:32:52 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id XQlTe0V59KTU; Tue,  9 Mar 2021 06:32:51 +0100 (CET)
X-Auth-Info: k0E/nJNmtq75JYQsSsLt5J28ILkoK2aFdAPIcG36hp0=
Received: from mail-internal.denx.de (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Tue,  9 Mar 2021 06:32:51 +0100 (CET)
Received: from pollux.denx.de (pollux [192.168.1.1])
        by mail-internal.denx.de (Postfix) with ESMTP id 145591837F8;
        Tue,  9 Mar 2021 06:31:21 +0100 (CET)
Received: by pollux.denx.de (Postfix, from userid 515)
        id 0908E1A0092; Tue,  9 Mar 2021 06:31:21 +0100 (CET)
From:   Heiko Schocher <hs@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Heiko Schocher <hs@denx.de>, Alice Guo <alice.guo@nxp.com>,
        Anson Huang <Anson.Huang@nxp.com>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        =?UTF-8?q?Horia=20Geant=C4=83?= <horia.geanta@nxp.com>,
        Jacky Bai <ping.bai@nxp.com>,
        Joakim Zhang <qiangqing.zhang@nxp.com>,
        Krzysztof Kozlowski <krzk@kernel.org>, Li Jun <jun.li@nxp.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Teresa Remmet <t.remmet@phytec.de>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/4] arm64: dts: imx8mp: add flexspi node
Date:   Tue,  9 Mar 2021 06:31:15 +0100
Message-Id: <20210309053116.1486347-4-hs@denx.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210309053116.1486347-1-hs@denx.de>
References: <20210309053116.1486347-1-hs@denx.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

add node for the flexspi modul on imx8mp.

Signed-off-by: Heiko Schocher <hs@denx.de>

---

Changes in v2:
- work in comments from Marco
  - add own compatible entry "nxp,imx8mp-fspi"
  - reworked order of properties as Marco mentioned

 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index c7523fd4eae9b..18023d97235ed 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -36,6 +36,7 @@ aliases {
 		serial1 = &uart2;
 		serial2 = &uart3;
 		serial3 = &uart4;
+		spi0 = &flexspi;
 	};
 
 	cpus {
@@ -744,6 +745,21 @@ usdhc3: mmc@30b60000 {
 				status = "disabled";
 			};
 
+			flexspi: spi@30bb0000 {
+				compatible = "nxp,imx8mp-fspi";
+				reg = <0x30bb0000 0x10000>, <0x8000000 0x10000000>;
+				reg-names = "fspi_base", "fspi_mmap";
+				interrupts = <GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MP_CLK_QSPI_ROOT>,
+					 <&clk IMX8MP_CLK_QSPI_ROOT>;
+				clock-names = "fspi", "fspi_en";
+				assigned-clock-rates = <80000000>;
+				assigned-clocks = <&clk IMX8MP_CLK_QSPI>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				status = "disabled";
+			};
+
 			sdma1: dma-controller@30bd0000 {
 				compatible = "fsl,imx8mp-sdma", "fsl,imx8mq-sdma";
 				reg = <0x30bd0000 0x10000>;
-- 
2.29.2

