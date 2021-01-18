Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DCA4C2F9824
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 04:21:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731529AbhARDVj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 17 Jan 2021 22:21:39 -0500
Received: from szxga04-in.huawei.com ([45.249.212.190]:11170 "EHLO
        szxga04-in.huawei.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731527AbhARDVj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 17 Jan 2021 22:21:39 -0500
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.58])
        by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4DJxpq3VfVzl6Hs;
        Mon, 18 Jan 2021 11:19:31 +0800 (CST)
Received: from thunder-town.china.huawei.com (10.174.176.220) by
 DGGEMS402-HUB.china.huawei.com (10.3.19.202) with Microsoft SMTP Server id
 14.3.498.0; Mon, 18 Jan 2021 11:20:42 +0800
From:   Zhen Lei <thunder.leizhen@huawei.com>
To:     Wei Xu <xuwei5@hisilicon.com>, Rob Herring <robh+dt@kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
CC:     Zhen Lei <thunder.leizhen@huawei.com>
Subject: [PATCH 4/6] arm64: dts: hisilicon: normalize the node name of the localbus
Date:   Mon, 18 Jan 2021 11:16:32 +0800
Message-ID: <20210118031634.934-5-thunder.leizhen@huawei.com>
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

Change the node name of the localbus to match
'^([a-z][a-z0-9\\-]+-bus|bus|soc|axi|ahb|apb)(@[0-9a-f]+)?$'. This error
is detected by simple-bus.yaml.

Signed-off-by: Zhen Lei <thunder.leizhen@huawei.com>
---
 arch/arm64/boot/dts/hisilicon/hip05.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/hisilicon/hip05.dtsi b/arch/arm64/boot/dts/hisilicon/hip05.dtsi
index 405acaa3e9ddab7..4aed8d440b3aa5a 100644
--- a/arch/arm64/boot/dts/hisilicon/hip05.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hip05.dtsi
@@ -318,7 +318,7 @@
 			status = "disabled";
 		};
 
-		lbc: localbus@80380000 {
+		lbc: local-bus@80380000 {
 			compatible = "hisilicon,hisi-localbus", "simple-bus";
 			reg = <0x0 0x80380000 0x0 0x10000>;
 			status = "disabled";
-- 
1.8.3


