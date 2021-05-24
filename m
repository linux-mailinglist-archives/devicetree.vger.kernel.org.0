Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B776238DFF7
	for <lists+devicetree@lfdr.de>; Mon, 24 May 2021 05:53:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232159AbhEXDy0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 May 2021 23:54:26 -0400
Received: from szxga06-in.huawei.com ([45.249.212.32]:3971 "EHLO
        szxga06-in.huawei.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232120AbhEXDyZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 23 May 2021 23:54:25 -0400
Received: from dggems702-chm.china.huawei.com (unknown [172.30.72.59])
        by szxga06-in.huawei.com (SkyGuard) with ESMTP id 4FpNXX3qSMzmZNg;
        Mon, 24 May 2021 11:50:36 +0800 (CST)
Received: from dggpemm500006.china.huawei.com (7.185.36.236) by
 dggems702-chm.china.huawei.com (10.3.19.179) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Mon, 24 May 2021 11:52:54 +0800
Received: from thunder-town.china.huawei.com (10.174.177.72) by
 dggpemm500006.china.huawei.com (7.185.36.236) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Mon, 24 May 2021 11:52:52 +0800
From:   Zhen Lei <thunder.leizhen@huawei.com>
To:     Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>
CC:     Zhen Lei <thunder.leizhen@huawei.com>
Subject: [PATCH 1/1] arm64: dts: lx2160a: Normalize the compatible string of "arm,sbsa-uart"
Date:   Mon, 24 May 2021 11:52:44 +0800
Message-ID: <20210524035244.8677-1-thunder.leizhen@huawei.com>
X-Mailer: git-send-email 2.26.0.windows.1
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [10.174.177.72]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 dggpemm500006.china.huawei.com (7.185.36.236)
X-CFilter-Loop: Reflected
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The compatible string of ARM SBSA defined generic UART needs to contain
only "arm,sbsa-uart" and does not need to contain "arm,pl011". Otherwise,
the pl011.yaml will check it and falsely report many warnings similar to
the following:

arch/arm64/boot/dts/freescale/fsl-lx2160a-clearfog-cx.dt.yaml:
 serial@21c0000: compatible:0: 'arm,pl011' was expected
 serial@21c0000: compatible:1: 'arm,primecell' was expected

Delete the redundant "arm,pl011" to fix it.

Signed-off-by: Zhen Lei <thunder.leizhen@huawei.com>
---
 arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
index 4fcc869c21a4..417546616d85 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
@@ -920,7 +920,7 @@
 		};
 
 		uart0: serial@21c0000 {
-			compatible = "arm,sbsa-uart","arm,pl011";
+			compatible = "arm,sbsa-uart";
 			reg = <0x0 0x21c0000 0x0 0x1000>;
 			interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
 			current-speed = <115200>;
@@ -928,7 +928,7 @@
 		};
 
 		uart1: serial@21d0000 {
-			compatible = "arm,sbsa-uart","arm,pl011";
+			compatible = "arm,sbsa-uart";
 			reg = <0x0 0x21d0000 0x0 0x1000>;
 			interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
 			current-speed = <115200>;
@@ -936,7 +936,7 @@
 		};
 
 		uart2: serial@21e0000 {
-			compatible = "arm,sbsa-uart","arm,pl011";
+			compatible = "arm,sbsa-uart";
 			reg = <0x0 0x21e0000 0x0 0x1000>;
 			interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
 			current-speed = <115200>;
@@ -944,7 +944,7 @@
 		};
 
 		uart3: serial@21f0000 {
-			compatible = "arm,sbsa-uart","arm,pl011";
+			compatible = "arm,sbsa-uart";
 			reg = <0x0 0x21f0000 0x0 0x1000>;
 			interrupts = <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>;
 			current-speed = <115200>;
-- 
2.21.1


