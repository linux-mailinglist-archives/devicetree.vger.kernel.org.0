Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 880356ABE4
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2019 17:36:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725926AbfGPPgq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Jul 2019 11:36:46 -0400
Received: from inva020.nxp.com ([92.121.34.13]:58794 "EHLO inva020.nxp.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2387937AbfGPPgq (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 16 Jul 2019 11:36:46 -0400
Received: from inva020.nxp.com (localhost [127.0.0.1])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 9179F1A0019;
        Tue, 16 Jul 2019 17:36:44 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com [165.114.16.14])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 62FEA1A004C;
        Tue, 16 Jul 2019 17:36:38 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
        by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 9B807402B5;
        Tue, 16 Jul 2019 23:36:30 +0800 (SGT)
From:   Dong Aisheng <aisheng.dong@nxp.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     dongas86@gmail.com, kernel@pengutronix.de, shawnguo@kernel.org,
        fabio.estevam@nxp.com, robh+dt@kernel.org, catalin.marinas@arm.com,
        will.deacon@arm.com, devicetree@vger.kernel.org, linux-imx@nxp.com,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 01/15] arm64: dts: imx8qxp: add fallback compatible string for scu pd
Date:   Tue, 16 Jul 2019 23:14:35 +0800
Message-Id: <1563290089-11085-2-git-send-email-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com>
References: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

According to binding doc, add the fallback compatible string for
scu pd.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: devicetree@vger.kernel.org
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <kernel@pengutronix.de>
Cc: Fabio Estevam <fabio.estevam@nxp.com>
Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
ChangeLog:
 v2: new patch
---
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index 05fa0b7..af6d720 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -156,7 +156,7 @@
 		};
 
 		pd: imx8qx-pd {
-			compatible = "fsl,imx8qxp-scu-pd";
+			compatible = "fsl,imx8qxp-scu-pd", "fsl,scu-pd";
 			#power-domain-cells = <1>;
 		};
 
-- 
2.7.4

