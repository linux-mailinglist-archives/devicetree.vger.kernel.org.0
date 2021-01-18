Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D00002F9828
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 04:21:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731526AbhARDVd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 17 Jan 2021 22:21:33 -0500
Received: from szxga04-in.huawei.com ([45.249.212.190]:11104 "EHLO
        szxga04-in.huawei.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731527AbhARDVc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 17 Jan 2021 22:21:32 -0500
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.59])
        by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4DJxq34XL0z15v8r;
        Mon, 18 Jan 2021 11:19:43 +0800 (CST)
Received: from thunder-town.china.huawei.com (10.174.176.220) by
 DGGEMS402-HUB.china.huawei.com (10.3.19.202) with Microsoft SMTP Server id
 14.3.498.0; Mon, 18 Jan 2021 11:20:40 +0800
From:   Zhen Lei <thunder.leizhen@huawei.com>
To:     Wei Xu <xuwei5@hisilicon.com>, Rob Herring <robh+dt@kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
CC:     Zhen Lei <thunder.leizhen@huawei.com>
Subject: [PATCH 1/6] arm64: dts: hisilicon: separate each group of data in the property "ranges"
Date:   Mon, 18 Jan 2021 11:16:29 +0800
Message-ID: <20210118031634.934-2-thunder.leizhen@huawei.com>
X-Mailer: git-send-email 2.26.0.windows.1
In-Reply-To: <20210118031634.934-1-thunder.leizhen@huawei.com>
References: <20210118031634.934-1-thunder.leizhen@huawei.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [10.174.176.220]
X-CFilter-Loop: Reflected
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Do not write the "ranges" of multiple groups of data into a uint32 array,
use <> to separate them. Otherwise, the errors similar to the following
will be reported:

soc: pcie@a0090000:ranges: [[33554432, 0, 2986344448, 0, 2986344448, 0, \
100597760, 16777216, 0, 0, 0, 3086942208, 0, 65536]] is not valid under \
any of the given schemas (Possible causes of the failure):
soc: pcie@a0090000:ranges: [[33554432, 0, 2986344448, 0, 2986344448, 0, \
100597760, 16777216, 0, 0, 0, 3086942208, 0, 65536]] is not of type 'boolean'
soc: pcie@a0090000:ranges:0: [33554432, 0, 2986344448, 0, 2986344448, 0, \
100597760, 16777216, 0, 0, 0, 3086942208, 0, 65536] is too long

Signed-off-by: Zhen Lei <thunder.leizhen@huawei.com>
---
 arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi | 4 ++--
 arch/arm64/boot/dts/hisilicon/hip06.dtsi       | 5 ++---
 arch/arm64/boot/dts/hisilicon/hip07.dtsi       | 4 ++--
 3 files changed, 6 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi b/arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi
index 81d09434c5c610d..16e11fde3ed9020 100644
--- a/arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi
@@ -565,8 +565,8 @@
 			device_type = "pci";
 			bus-range = <0x00 0xff>;
 			num-lanes = <1>;
-			ranges = <0x81000000 0x0 0x00000000 0x4f00000 0x0 0x100000
-				  0x82000000 0x0 0x3000000 0x3000000 0x0 0x01f00000>;
+			ranges = <0x81000000 0x0 0x00000000 0x4f00000 0x0 0x100000>,
+				 <0x82000000 0x0 0x3000000 0x3000000 0x0 0x01f00000>;
 			interrupts = <GIC_SPI 128 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "msi";
 			#interrupt-cells = <1>;
diff --git a/arch/arm64/boot/dts/hisilicon/hip06.dtsi b/arch/arm64/boot/dts/hisilicon/hip06.dtsi
index 7980709e21ff020..78050d67a78645b 100644
--- a/arch/arm64/boot/dts/hisilicon/hip06.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hip06.dtsi
@@ -737,9 +737,8 @@
 			#size-cells = <2>;
 			device_type = "pci";
 			dma-coherent;
-			ranges = <0x02000000 0 0xb2000000 0x0 0xb2000000 0
-				 0x5ff0000 0x01000000 0 0 0 0xb7ff0000
-				 0 0x10000>;
+			ranges = <0x02000000 0 0xb2000000 0x0 0xb2000000 0 0x5ff0000>,
+				 <0x01000000 0 0 0 0xb7ff0000 0 0x10000>;
 			#interrupt-cells = <1>;
 			interrupt-map-mask = <0xf800 0 0 7>;
 			interrupt-map = <0x0 0 0 1 &mbigen_pcie0 650 4
diff --git a/arch/arm64/boot/dts/hisilicon/hip07.dtsi b/arch/arm64/boot/dts/hisilicon/hip07.dtsi
index 7832d9cdec21c93..f477f442c275561 100644
--- a/arch/arm64/boot/dts/hisilicon/hip07.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hip07.dtsi
@@ -1708,8 +1708,8 @@
 			#size-cells = <2>;
 			device_type = "pci";
 			dma-coherent;
-			ranges = <0x02000000 0 0xa8000000 0 0xa8000000 0 0x77f0000
-				  0x01000000 0 0 0 0xaf7f0000 0 0x10000>;
+			ranges = <0x02000000 0 0xa8000000 0 0xa8000000 0 0x77f0000>,
+				 <0x01000000 0 0 0 0xaf7f0000 0 0x10000>;
 			#interrupt-cells = <1>;
 			interrupt-map-mask = <0xf800 0 0 7>;
 			interrupt-map = <0x0 0 0 1 &mbigen_pcie2_a 671 4
-- 
1.8.3


