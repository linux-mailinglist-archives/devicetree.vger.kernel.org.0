Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A702932AB28
	for <lists+devicetree@lfdr.de>; Tue,  2 Mar 2021 21:13:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1836463AbhCBUIi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Mar 2021 15:08:38 -0500
Received: from szxga06-in.huawei.com ([45.249.212.32]:13413 "EHLO
        szxga06-in.huawei.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1383415AbhCBLfL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Mar 2021 06:35:11 -0500
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.58])
        by szxga06-in.huawei.com (SkyGuard) with ESMTP id 4DqZkH5mttzjTQ9;
        Tue,  2 Mar 2021 19:32:55 +0800 (CST)
Received: from thunder-town.china.huawei.com (10.174.179.202) by
 DGGEMS401-HUB.china.huawei.com (10.3.19.201) with Microsoft SMTP Server id
 14.3.498.0; Tue, 2 Mar 2021 19:34:07 +0800
From:   Zhen Lei <thunder.leizhen@huawei.com>
To:     Wei Xu <xuwei5@hisilicon.com>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Arnd Bergmann <arnd@kernel.org>
CC:     Zhen Lei <thunder.leizhen@huawei.com>,
        Zhangfei Gao <zhangfei.gao@linaro.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: [PATCH v4 1/1] arm64: dts: correct vendor prefix hisi to hisilicon
Date:   Tue, 2 Mar 2021 19:33:51 +0800
Message-ID: <20210302113351.1204-2-thunder.leizhen@huawei.com>
X-Mailer: git-send-email 2.26.0.windows.1
In-Reply-To: <20210302113351.1204-1-thunder.leizhen@huawei.com>
References: <20210302113351.1204-1-thunder.leizhen@huawei.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [10.174.179.202]
X-CFilter-Loop: Reflected
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The vendor prefix of "Hisilicon Limited" is "hisilicon", it is clearly
stated in "vendor-prefixes.yaml".

Fixes: a4e36ae0fb33 ("arm64: dts: hi3660: add resources for clock and reset")
Fixes: 757a4b2913eb ("arm64: dts: hisilicon: hi3670: Add reset controller support")
Fixes: 305656e0989d ("arm64: dts: hisilicon: hi3670.dtsi: add iomcu_rst")
Signed-off-by: Zhen Lei <thunder.leizhen@huawei.com>
Cc: Zhangfei Gao <zhangfei.gao@linaro.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 arch/arm64/boot/dts/hisilicon/hi3660.dtsi | 4 ++--
 arch/arm64/boot/dts/hisilicon/hi3670.dtsi | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/hisilicon/hi3660.dtsi b/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
index cab89dc6f596121..8b8d3d07b67fe84 100644
--- a/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
@@ -345,7 +345,7 @@
 		crg_rst: crg_rst_controller {
 			compatible = "hisilicon,hi3660-reset";
 			#reset-cells = <2>;
-			hisi,rst-syscon = <&crg_ctrl>;
+			hisilicon,rst-syscon = <&crg_ctrl>;
 		};
 
 
@@ -376,7 +376,7 @@
 
 		iomcu_rst: reset {
 			compatible = "hisilicon,hi3660-reset";
-			hisi,rst-syscon = <&iomcu>;
+			hisilicon,rst-syscon = <&iomcu>;
 			#reset-cells = <2>;
 		};
 
diff --git a/arch/arm64/boot/dts/hisilicon/hi3670.dtsi b/arch/arm64/boot/dts/hisilicon/hi3670.dtsi
index 8830795c8efc5a5..37409f0639628d0 100644
--- a/arch/arm64/boot/dts/hisilicon/hi3670.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hi3670.dtsi
@@ -155,7 +155,7 @@
 			compatible = "hisilicon,hi3670-reset",
 				     "hisilicon,hi3660-reset";
 			#reset-cells = <2>;
-			hisi,rst-syscon = <&crg_ctrl>;
+			hisilicon,rst-syscon = <&crg_ctrl>;
 		};
 
 		pctrl: pctrl@e8a09000 {
@@ -196,7 +196,7 @@
 
 		iomcu_rst: reset {
 			compatible = "hisilicon,hi3660-reset";
-			hisi,rst-syscon = <&iomcu>;
+			hisilicon,rst-syscon = <&iomcu>;
 			#reset-cells = <2>;
 		};
 
-- 
1.8.3


