Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5EC7838C3FE
	for <lists+devicetree@lfdr.de>; Fri, 21 May 2021 11:54:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237462AbhEUJzz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 May 2021 05:55:55 -0400
Received: from szxga04-in.huawei.com ([45.249.212.190]:5648 "EHLO
        szxga04-in.huawei.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237099AbhEUJyf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 May 2021 05:54:35 -0400
Received: from dggems704-chm.china.huawei.com (unknown [172.30.72.59])
        by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4Fmhg26grWz16Q8Q;
        Fri, 21 May 2021 17:50:22 +0800 (CST)
Received: from dggpemm500006.china.huawei.com (7.185.36.236) by
 dggems704-chm.china.huawei.com (10.3.19.181) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Fri, 21 May 2021 17:53:10 +0800
Received: from thunder-town.china.huawei.com (10.174.177.72) by
 dggpemm500006.china.huawei.com (7.185.36.236) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Fri, 21 May 2021 17:53:10 +0800
From:   Zhen Lei <thunder.leizhen@huawei.com>
To:     Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-mediatek <linux-mediatek@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>
CC:     Zhen Lei <thunder.leizhen@huawei.com>
Subject: [PATCH 1/1] arm64: dts: mt8173-elm: Correct the value of the property 'reg'
Date:   Fri, 21 May 2021 17:52:43 +0800
Message-ID: <20210521095243.8527-1-thunder.leizhen@huawei.com>
X-Mailer: git-send-email 2.26.0.windows.1
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [10.174.177.72]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 dggpemm500006.china.huawei.com (7.185.36.236)
X-CFilter-Loop: Reflected
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The values of property '#address-cells' and '#size-cells' defined in the
parent node are both 1. Therefore, the value 0 of the upper 32 bits cannot
be written.

This error is detected by reg.yaml, the information reported is as
follows:

arch/arm64/boot/dts/mediatek/mt8173-elm.dt.yaml:
 mt6397: syscfg_pctl_pmic@c000:reg:0: [0, 49152, 0, 264] is too long

Signed-off-by: Zhen Lei <thunder.leizhen@huawei.com>
---
 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
index 21452c51a20a813..9bc02ea020f10e8 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
@@ -1112,7 +1112,7 @@ rtc: mt6397rtc {
 		syscfg_pctl_pmic: syscfg_pctl_pmic@c000 {
 			compatible = "mediatek,mt6397-pctl-pmic-syscfg",
 				     "syscon";
-			reg = <0 0x0000c000 0 0x0108>;
+			reg = <0x0000c000 0x0108>;
 		};
 	};
 };
-- 
2.26.0.106.g9fadedd


