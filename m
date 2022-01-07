Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C5241487BD3
	for <lists+devicetree@lfdr.de>; Fri,  7 Jan 2022 19:09:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240468AbiAGSJ0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jan 2022 13:09:26 -0500
Received: from mout.perfora.net ([74.208.4.196]:46421 "EHLO mout.perfora.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S240693AbiAGSJZ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 7 Jan 2022 13:09:25 -0500
Received: from localhost.localdomain ([194.191.235.54]) by mrelay.perfora.net
 (mreueus004 [74.208.5.2]) with ESMTPSA (Nemesis) id 1MUoHN-1mxTYg35xR-00Qle6;
 Fri, 07 Jan 2022 19:03:48 +0100
From:   Marcel Ziswiler <marcel@ziswiler.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marek.vasut@gmail.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Arnd Bergmann <arnd@arndb.de>,
        Fabio Estevam <festevam@gmail.com>,
        Frank Rowand <frowand.list@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        =?UTF-8?q?Oliver=20St=C3=A4bler?= <oliver.staebler@bytesatwork.ch>,
        Olof Johansson <olof@lixom.net>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v1 01/14] arm64: dts: imx8mm: fix strange hex notation
Date:   Fri,  7 Jan 2022 19:03:01 +0100
Message-Id: <20220107180314.1816515-2-marcel@ziswiler.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20220107180314.1816515-1-marcel@ziswiler.com>
References: <20220107180314.1816515-1-marcel@ziswiler.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:Agtd2KULb4KbSyLtL1KrrX1DGxizXppFEHW5vtbd994J34X8ov1
 s/aLIDBUK/PIEeYfPSRD2JSWhyJJConkXlEqH76PikcaFlNMU2L59XyjYFx1ROwZzRMgJaz
 oU77EQViX7Vh2yDMiyoTV5gm1v8xs+JDeo6k3hBjk/hnOgs7Xm49AHaboWFQasi/RMiPI0r
 gBBvcde3s4ZUyspVEz5ew==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:OlvxeLnE9nk=:c4x8m3cEMv6W9yLyTOBpxf
 5shOzFUW0KrjTITlbgny9g0OOri1kBDgjb5wEL7njdgtXe9B+TAhM6Xl9An7zUYtU3YDSeFXf
 Fk+wAxBbX7MRvvclHVcHslY+QezS3IBueQVjFSXASuWfjlAEZ0SZgHeahG/Xtj8Gne/kqZaD0
 ffBonn8G1FScPsaTpkDEMuH4KdfY7Nh5l18kddCo0sDiZdlw7cLKUebRs+PKXV2lbMKGRBIP5
 3TNonwnbqt0hlnTLzi2c+xucuV00QxqymeEpzrZzOWllSip4RgmdKFzVKMLDu895GcOVw8HmM
 Uc/PF5eNN2qy80t/37yKg8+HmymyqtZBZ0h7TwYFsB97Rn0GR4DenzZ7e6fUlnKxjzIPhmuc4
 MhJCuGFytwk8rq34hTx3D1TzCsrajkYgHLpQwaA/o+zWa7dSUiolEZzXg0wDuj6gWoG0ZLOsC
 DqGjC0yr/WUWEH3bPMDAD/2w4PmEtc51eO5xL+0VGx9vDsMZV0SAVT9UX7j2K6Kxbwmr1YA52
 eAKHq2FH4yZswszhcmA2YfaizClSPkP+OcQfNX+g9AsFvdCDOVpPH94tfONhgIul2BWr4Cqwi
 swKiYgxAVWJo9sn1W20zrO1TCuKTzNyWWcWh7y7EHnCiBGcttosp5salEnk+eD0nmGrAUWivg
 OM5+WCqcWtRbuHdRtKfoCq0E+6/ktPlmzlj+hV5odzHIz6+O5u2C5f+uHwrthrZODdtE=
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Marcel Ziswiler <marcel.ziswiler@toradex.com>

Fix strange hex notation with mixed lower-case and upper-case letters.

Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
---

 arch/arm64/boot/dts/freescale/imx8mm-pinfunc.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-pinfunc.h b/arch/arm64/boot/dts/freescale/imx8mm-pinfunc.h
index a003e6af3353..c68a5e456025 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-pinfunc.h
+++ b/arch/arm64/boot/dts/freescale/imx8mm-pinfunc.h
@@ -279,7 +279,7 @@
 #define MX8MM_IOMUXC_SAI5_RXD2_SAI1_TX_DATA4                                0x150 0x3B8 0x000 0x1 0x0
 #define MX8MM_IOMUXC_SAI5_RXD2_SAI1_TX_SYNC                                 0x150 0x3B8 0x4CC 0x2 0x1
 #define MX8MM_IOMUXC_SAI5_RXD2_SAI5_TX_BCLK                                 0x150 0x3B8 0x4E8 0x3 0x0
-#define MX8MM_IOMUXC_SAI5_RXD2_PDM_DATA2                                    0x150 0x3B8 0x53c 0x4 0x0
+#define MX8MM_IOMUXC_SAI5_RXD2_PDM_DATA2                                    0x150 0x3B8 0x53C 0x4 0x0
 #define MX8MM_IOMUXC_SAI5_RXD2_GPIO3_IO23                                   0x150 0x3B8 0x000 0x5 0x0
 #define MX8MM_IOMUXC_SAI5_RXD3_SAI5_RX_DATA3                                0x154 0x3BC 0x4E0 0x0 0x0
 #define MX8MM_IOMUXC_SAI5_RXD3_SAI1_TX_DATA5                                0x154 0x3BC 0x000 0x1 0x0
@@ -486,7 +486,7 @@
 #define MX8MM_IOMUXC_SAI3_TXFS_SAI3_TX_SYNC                                 0x1D8 0x440 0x000 0x0 0x0
 #define MX8MM_IOMUXC_SAI3_TXFS_GPT1_CAPTURE2                                0x1D8 0x440 0x000 0x1 0x0
 #define MX8MM_IOMUXC_SAI3_TXFS_SAI5_RX_DATA1                                0x1D8 0x440 0x4D8 0x2 0x2
-#define MX8MM_IOMUXC_SAI3_TXFS_UART2_DCE_RX                                 0x1D8 0x440 0x4Fc 0x4 0x2
+#define MX8MM_IOMUXC_SAI3_TXFS_UART2_DCE_RX                                 0x1D8 0x440 0x4FC 0x4 0x2
 #define MX8MM_IOMUXC_SAI3_TXFS_UART2_DTE_TX                                 0x1D8 0x440 0x000 0x4 0x0
 #define MX8MM_IOMUXC_SAI3_TXFS_GPIO4_IO31                                   0x1D8 0x440 0x000 0x5 0x0
 #define MX8MM_IOMUXC_SAI3_TXFS_TPSMP_HDATA1                                 0x1D8 0x440 0x000 0x7 0x0
@@ -494,7 +494,7 @@
 #define MX8MM_IOMUXC_SAI3_TXC_GPT1_COMPARE2                                 0x1DC 0x444 0x000 0x1 0x0
 #define MX8MM_IOMUXC_SAI3_TXC_SAI5_RX_DATA2                                 0x1DC 0x444 0x4DC 0x2 0x2
 #define MX8MM_IOMUXC_SAI3_TXC_UART2_DCE_TX                                  0x1DC 0x444 0x000 0x4 0x0
-#define MX8MM_IOMUXC_SAI3_TXC_UART2_DTE_RX                                  0x1DC 0x444 0x4Fc 0x4 0x3
+#define MX8MM_IOMUXC_SAI3_TXC_UART2_DTE_RX                                  0x1DC 0x444 0x4FC 0x4 0x3
 #define MX8MM_IOMUXC_SAI3_TXC_GPIO5_IO0                                     0x1DC 0x444 0x000 0x5 0x0
 #define MX8MM_IOMUXC_SAI3_TXC_TPSMP_HDATA2                                  0x1DC 0x444 0x000 0x7 0x0
 #define MX8MM_IOMUXC_SAI3_TXD_SAI3_TX_DATA0                                 0x1E0 0x448 0x000 0x0 0x0
-- 
2.33.1

