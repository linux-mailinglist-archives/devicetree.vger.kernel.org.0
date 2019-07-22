Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 27A2D6FB6B
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2019 10:37:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727310AbfGVIht (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 04:37:49 -0400
Received: from inva020.nxp.com ([92.121.34.13]:58248 "EHLO inva020.nxp.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726236AbfGVIht (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 22 Jul 2019 04:37:49 -0400
Received: from inva020.nxp.com (localhost [127.0.0.1])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 6AC911A02A3;
        Mon, 22 Jul 2019 10:37:47 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com [165.114.16.14])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id F26FC1A02A1;
        Mon, 22 Jul 2019 10:37:43 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
        by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 55D1A40302;
        Mon, 22 Jul 2019 16:37:39 +0800 (SGT)
From:   fugang.duan@nxp.com
To:     festevam@gmail.com, shawnguo@kernel.org
Cc:     daniel.baluta@gmail.com, fugang.duan@nxp.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH arm64/dts 2/2] arm64: dts: imx8qxp: add serial alias
Date:   Mon, 22 Jul 2019 16:28:24 +0800
Message-Id: <20190722082824.15022-3-fugang.duan@nxp.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20190722082824.15022-1-fugang.duan@nxp.com>
References: <20190722082824.15022-1-fugang.duan@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fugang Duan <fugang.duan@nxp.com>

Add i.MX8QXP serial alias for lpuart ports.

Signed-off-by: Fugang Duan <fugang.duan@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index 21bdd4d..4402b2e 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -30,6 +30,9 @@
 		mmc2 = &usdhc3;
 		mu1 = &lsio_mu1;
 		serial0 = &adma_lpuart0;
+		serial1 = &adma_lpuart1;
+		serial2 = &adma_lpuart2;
+		serial3 = &adma_lpuart3;
 	};
 
 	cpus {
-- 
2.7.4

