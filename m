Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C165C453284
	for <lists+devicetree@lfdr.de>; Tue, 16 Nov 2021 13:58:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236420AbhKPNBX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Nov 2021 08:01:23 -0500
Received: from mx1.tq-group.com ([93.104.207.81]:24830 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S236421AbhKPNBU (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 16 Nov 2021 08:01:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1637067503; x=1668603503;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=fkCcZtUm1lLu1YNVMyr3gYDd3LwiqGmfb9sQrsUpYWc=;
  b=MSeYrr8qKN/mNzXJbLj1ssGcdMpxXxCNuDdmhjbfUB5ma6ZMl98yRrwT
   ahVsjZVNvqU3zJGe1iGeo+B/b9qE2i/4fVTzqInrd2hZ62J8j4T9c8WKY
   9XlPn7DWs9HDDZHxy1Wn/NaYGSvDmErOtQYRaTG8Vek9ie0opOq9U+dIe
   gL5hNHCffrbNaukT62JqwTsRK32vQBtNwHiu6NaTznpNm9bqH9KgAipw3
   UAnLWCcUBYRG+2jYhSu3Qz6Z/m1o8NpybPoRFw8rrO7+DDnTJGkSLkmGS
   FQ6iku8PVO4GTHYDEoReTP3Trk4knOJpY8MYeJjJUOd2hVtMP/3BosDcs
   Q==;
X-IronPort-AV: E=Sophos;i="5.87,239,1631570400"; 
   d="scan'208";a="20490347"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 16 Nov 2021 13:58:22 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 16 Nov 2021 13:58:22 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 16 Nov 2021 13:58:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1637067502; x=1668603502;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=fkCcZtUm1lLu1YNVMyr3gYDd3LwiqGmfb9sQrsUpYWc=;
  b=ZIRf6CGTeGgxt9jOMmCM4o+J3pSRTZoyIVukYTmfM0zmhCnLVTScBwyL
   RoL/9UL5uCfSJwkBB4NViBMV+D0Kl5J5bU+FlROE+PaTiqw8YjgzBoI6j
   dWDQa27G7Eqx9hdfe099lfOwdw2Xhn/VGsssaZUCyM+VWIv7uEGeC+Ntp
   Iujs7bh6lZZZHJZW5gwaOoUJQ/bl7cR6FhxA/NPRQkUW3PVIvu550cMRl
   aUpbSALMtEzJMXoE5JZ/8OspfgF2P1R8dsjKiTHLbag8FrUJ1KaO6vBlA
   9GnyF9I11+Vaj+uyZkomKY3hJPJV9m9r3gW5RNAcbMldSJdiHzatYzBj7
   w==;
X-IronPort-AV: E=Sophos;i="5.87,239,1631570400"; 
   d="scan'208";a="20490346"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 16 Nov 2021 13:58:22 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 5EADF280065;
        Tue, 16 Nov 2021 13:58:22 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Peng Fan <peng.fan@nxp.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/1] arm64: dts: imx8qm: Add fsl,imx7ulp-lpuart compatible to lpuart
Date:   Tue, 16 Nov 2021 13:58:14 +0100
Message-Id: <20211116125814.2674343-1-alexander.stein@ew.tq-group.com>
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
With this change earlycon is supported again on imx8qm/imx8qxp.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Reviewed-by: Peng Fan <peng.fan@nxp.com>
---
Changes in v2:
* Fix typo in commit message: 'early' -> 'earlycon'

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

