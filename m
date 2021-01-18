Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 559782F9825
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 04:21:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731527AbhARDVk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 17 Jan 2021 22:21:40 -0500
Received: from szxga04-in.huawei.com ([45.249.212.190]:11169 "EHLO
        szxga04-in.huawei.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731533AbhARDVk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 17 Jan 2021 22:21:40 -0500
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.58])
        by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4DJxpq3t7Jzl6Hx;
        Mon, 18 Jan 2021 11:19:31 +0800 (CST)
Received: from thunder-town.china.huawei.com (10.174.176.220) by
 DGGEMS402-HUB.china.huawei.com (10.3.19.202) with Microsoft SMTP Server id
 14.3.498.0; Mon, 18 Jan 2021 11:20:43 +0800
From:   Zhen Lei <thunder.leizhen@huawei.com>
To:     Wei Xu <xuwei5@hisilicon.com>, Rob Herring <robh+dt@kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
CC:     Zhen Lei <thunder.leizhen@huawei.com>
Subject: [PATCH 6/6] arm64: dts: hisilicon: delete unused property smmu-cb-memtype
Date:   Mon, 18 Jan 2021 11:16:34 +0800
Message-ID: <20210118031634.934-7-thunder.leizhen@huawei.com>
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

The "smmu-cb-memtype" is a private property developed by the Hisilicon
driver in the early stage and is not used now. So delete it.

Otherwise, below YAML check warnings are reported:
arch/arm64/boot/dts/hisilicon/hip06-d03.dt.yaml: iommu@a0040000: \
'smmu-cb-memtype' does not match any of the regexes: 'pinctrl-[0-9]+'
arch/arm64/boot/dts/hisilicon/hip07-d05.dt.yaml: iommu@a0040000: \
'smmu-cb-memtype' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Zhen Lei <thunder.leizhen@huawei.com>
---
 arch/arm64/boot/dts/hisilicon/hip06.dtsi | 1 -
 arch/arm64/boot/dts/hisilicon/hip07.dtsi | 5 -----
 2 files changed, 6 deletions(-)

diff --git a/arch/arm64/boot/dts/hisilicon/hip06.dtsi b/arch/arm64/boot/dts/hisilicon/hip06.dtsi
index 78050d67a78645b..7deca5f763d5037 100644
--- a/arch/arm64/boot/dts/hisilicon/hip06.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hip06.dtsi
@@ -335,7 +335,6 @@
 		reg = <0x0 0xa0040000 0x0 0x20000>;
 		#iommu-cells = <1>;
 		dma-coherent;
-		smmu-cb-memtype = <0x0 0x1>;
 		hisilicon,broken-prefetch-cmd;
 		status = "disabled";
 	};
diff --git a/arch/arm64/boot/dts/hisilicon/hip07.dtsi b/arch/arm64/boot/dts/hisilicon/hip07.dtsi
index f477f442c275561..2172d807118143c 100644
--- a/arch/arm64/boot/dts/hisilicon/hip07.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hip07.dtsi
@@ -1166,7 +1166,6 @@
 		reg = <0x0 0xa0040000 0x0 0x20000>;
 		#iommu-cells = <1>;
 		dma-coherent;
-		smmu-cb-memtype = <0x0 0x1>;
 		hisilicon,broken-prefetch-cmd;
 		status = "disabled";
 	};
@@ -1181,7 +1180,6 @@
 		#iommu-cells = <1>;
 		dma-coherent;
 		hisilicon,broken-prefetch-cmd;
-		/* smmu-cb-memtype = <0x0 0x1>;*/
 	};
 	p0_smmu_alg_b: iommu@8d0040000 {
 		compatible = "arm,smmu-v3";
@@ -1194,7 +1192,6 @@
 		#iommu-cells = <1>;
 		dma-coherent;
 		hisilicon,broken-prefetch-cmd;
-		/* smmu-cb-memtype = <0x0 0x1>;*/
 	};
 	p1_smmu_alg_a: iommu@400d0040000 {
 		compatible = "arm,smmu-v3";
@@ -1207,7 +1204,6 @@
 		#iommu-cells = <1>;
 		dma-coherent;
 		hisilicon,broken-prefetch-cmd;
-		/* smmu-cb-memtype = <0x0 0x1>;*/
 	};
 	p1_smmu_alg_b: iommu@408d0040000 {
 		compatible = "arm,smmu-v3";
@@ -1220,7 +1216,6 @@
 		#iommu-cells = <1>;
 		dma-coherent;
 		hisilicon,broken-prefetch-cmd;
-		/* smmu-cb-memtype = <0x0 0x1>;*/
 	};
 
 	soc {
-- 
1.8.3


