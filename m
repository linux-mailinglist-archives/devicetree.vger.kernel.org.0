Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CD9883F2980
	for <lists+devicetree@lfdr.de>; Fri, 20 Aug 2021 11:51:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236843AbhHTJwg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Aug 2021 05:52:36 -0400
Received: from inva021.nxp.com ([92.121.34.21]:38194 "EHLO inva021.nxp.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S236532AbhHTJwf (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 20 Aug 2021 05:52:35 -0400
Received: from inva021.nxp.com (localhost [127.0.0.1])
        by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 3AFCC200C9C;
        Fri, 20 Aug 2021 11:51:57 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
        by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 03879200C5C;
        Fri, 20 Aug 2021 11:51:57 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
        by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id B4445183AC8B;
        Fri, 20 Aug 2021 17:51:55 +0800 (+08)
From:   haibo.chen@nxp.com
To:     robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de
Cc:     kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] ARM: dts: imx: change the spi-nor tx
Date:   Fri, 20 Aug 2021 17:29:49 +0800
Message-Id: <1629451790-10507-1-git-send-email-haibo.chen@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Haibo Chen <haibo.chen@nxp.com>

Before commit 0e30f47232ab5 ("mtd: spi-nor: add support for DTR protocol"),
for all PP command, it only support 1-1-1 mode, no matter the tx setting
in dts. But after the upper commit, the logic change. It will choose
the best mode(fastest mode) which flash device and spi-nor host controller
both support.

Though the spi-nor device on imx6sx-sdb/imx6ul(l/z)-14x14-evk board
do not support PP-1-4-4/PP-1-1-4, but if tx is 4 in dts file, it will also
impact the read mode selection. For the spi-nor device on the upper mentioned
boards, they support read 1-4-4 mode and read 1-1-4 mode according to the
device internal sfdp register. But qspi host controller do not support
read 1-4-4 mode. so need to set the tx to 1, let the common code finally
select read 1-1-4 mode, PP-1-1-1 mode.

Signed-off-by: Haibo Chen <haibo.chen@nxp.com>
---
 arch/arm/boot/dts/imx6sx-sdb.dts        | 4 ++--
 arch/arm/boot/dts/imx6ul-14x14-evk.dtsi | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/imx6sx-sdb.dts b/arch/arm/boot/dts/imx6sx-sdb.dts
index 5a63ca615722..99f4cf777a38 100644
--- a/arch/arm/boot/dts/imx6sx-sdb.dts
+++ b/arch/arm/boot/dts/imx6sx-sdb.dts
@@ -114,7 +114,7 @@
 		compatible = "micron,n25q256a", "jedec,spi-nor";
 		spi-max-frequency = <29000000>;
 		spi-rx-bus-width = <4>;
-		spi-tx-bus-width = <4>;
+		spi-tx-bus-width = <1>;
 		reg = <0>;
 	};
 
@@ -124,7 +124,7 @@
 		compatible = "micron,n25q256a", "jedec,spi-nor";
 		spi-max-frequency = <29000000>;
 		spi-rx-bus-width = <4>;
-		spi-tx-bus-width = <4>;
+		spi-tx-bus-width = <1>;
 		reg = <2>;
 	};
 };
diff --git a/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi b/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
index 779cc536566d..a3fde3316c73 100644
--- a/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
+++ b/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
@@ -292,7 +292,7 @@
 		compatible = "micron,n25q256a", "jedec,spi-nor";
 		spi-max-frequency = <29000000>;
 		spi-rx-bus-width = <4>;
-		spi-tx-bus-width = <4>;
+		spi-tx-bus-width = <1>;
 		reg = <0>;
 	};
 };
-- 
2.17.1

