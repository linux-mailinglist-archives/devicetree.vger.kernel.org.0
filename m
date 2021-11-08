Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D8D5B447F2B
	for <lists+devicetree@lfdr.de>; Mon,  8 Nov 2021 12:54:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239341AbhKHL5B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Nov 2021 06:57:01 -0500
Received: from mx1.tq-group.com ([93.104.207.81]:17751 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231401AbhKHL5A (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 8 Nov 2021 06:57:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1636372456; x=1667908456;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=d8OFqm98/Srngga10IVEXbeAi/xIv5s/AW1zhNAJCLU=;
  b=TegZhzDKPboPjaMJVqLCjXUmxTj/1n3JYsfWg8GJbe4Oh8dbZLQVP+4Y
   SbN2pR8JpNTsPqQTk+JCIGSaGBmep5xHudMkJSD7QSF9OOGa3lG9eFMso
   8Q1vPrd8O5HI6oVhOMX6gl1uxn17VQj/Sz84uGlnFc1TGAWb65Hr9n6RN
   p0aAEY3ZFqyPM+MR3u1JCM8gO2vI1i6kqWp+2p0A759YYTF7GUjir1ZSK
   DTxCCzM1dQgAcAB6LCvS/RF+wOkTiy4URHX7zWhScK4V3KSlcKhyntT0F
   avAoOQBgrZsdUrk056iLQN4K4QcLsNz3lk223c2sdpHjQoyllwcQJI/5l
   Q==;
X-IronPort-AV: E=Sophos;i="5.87,218,1631570400"; 
   d="scan'208";a="20375001"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 08 Nov 2021 12:54:14 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 08 Nov 2021 12:54:14 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 08 Nov 2021 12:54:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1636372454; x=1667908454;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=d8OFqm98/Srngga10IVEXbeAi/xIv5s/AW1zhNAJCLU=;
  b=IqgtmPqCuGCfsdb1LM6klQgaAmkzzVaB7e6B4XmXunKSp4rUFkp51nDV
   herm9BL/7KXpRpSKhFgvloHHNVd6/hCe7Zf/JAWSRP6OOwYwRvEetQoXX
   2SoK5vkhbP4bbq7GFld7wRtB/BBpZLCAfX7aaui0JzGvW43N1ZGTqxzjH
   tbrkwEWQ3/KeZYuM9pYyKWeSGirbCR5x/8BsvHhXE57KJD+BfBIzaR3dK
   huoObU7OpQh7/QHwLMedReDpglk35DRJI3hwWvkokX3tEaL7SjpzEbmiS
   I51oCdHiT1op7SWVEglwToE2GaEL+mvWGSKAoZ3TR0lILMbxi1tk3kaTm
   w==;
X-IronPort-AV: E=Sophos;i="5.87,218,1631570400"; 
   d="scan'208";a="20375000"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 08 Nov 2021 12:54:14 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 65EB8280065;
        Mon,  8 Nov 2021 12:54:14 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Peng Fan <peng.fan@nxp.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] arm64: dts: imx8qm: Add fsl,imx7ulp-lpuart compatible to lpuart
Date:   Mon,  8 Nov 2021 12:54:03 +0100
Message-Id: <20211108115403.1770393-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

After commit b4b844930f27 ("tty: serial: fsl_lpuart: drop earlycon entry
for i.MX8QXP") earlycon support was essentially removed from
imx8qm/imx8qxp due to missing compatible.
The commit message says "i.MX8QXP lpuart is compatible with i.MX7ULP" so
adding a fallback compatible should be fine.
With this change early is supported again on imx8qm/imx8qxp.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
I get the following lines in my 5.10 kernel (backported this change):
[    0.000000] earlycon: lpuart32 at MMIO32 0x000000005a060000 (options '')                                                                                                                                                                                                    
[    0.000000] printk: bootconsole [lpuart32] enabled

 arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi b/arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi
index bbe5f5ecfb92..3486b99ab6eb 100644
--- a/arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi
@@ -19,19 +19,19 @@ uart4_lpcg: clock-controller@5a4a0000 {
 };
 
 &lpuart0 {
-	compatible = "fsl,imx8qm-lpuart", "fsl,imx8qxp-lpuart";
+	compatible = "fsl,imx8qm-lpuart", "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";
 };
 
 &lpuart1 {
-	compatible = "fsl,imx8qm-lpuart", "fsl,imx8qxp-lpuart";
+	compatible = "fsl,imx8qm-lpuart", "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";
 };
 
 &lpuart2 {
-	compatible = "fsl,imx8qm-lpuart", "fsl,imx8qxp-lpuart";
+	compatible = "fsl,imx8qm-lpuart", "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";
 };
 
 &lpuart3 {
-	compatible = "fsl,imx8qm-lpuart", "fsl,imx8qxp-lpuart";
+	compatible = "fsl,imx8qm-lpuart", "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";
 };
 
 &i2c0 {
-- 
2.25.1

