Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A3CAB38909B
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 16:19:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239737AbhESOUr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 10:20:47 -0400
Received: from szxga06-in.huawei.com ([45.249.212.32]:3604 "EHLO
        szxga06-in.huawei.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241449AbhESOUq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 May 2021 10:20:46 -0400
Received: from dggems705-chm.china.huawei.com (unknown [172.30.72.58])
        by szxga06-in.huawei.com (SkyGuard) with ESMTP id 4FlZgn1F4FzmXJt;
        Wed, 19 May 2021 22:17:09 +0800 (CST)
Received: from dggpemm500006.china.huawei.com (7.185.36.236) by
 dggems705-chm.china.huawei.com (10.3.19.182) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Wed, 19 May 2021 22:19:25 +0800
Received: from thunder-town.china.huawei.com (10.174.177.72) by
 dggpemm500006.china.huawei.com (7.185.36.236) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Wed, 19 May 2021 22:19:24 +0800
From:   Zhen Lei <thunder.leizhen@huawei.com>
To:     Manivannan Sadhasivam <mani@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
        Jisheng Zhang <Jisheng.Zhang@synaptics.com>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        linux-realtek-soc <linux-realtek-soc@lists.infradead.org>,
        bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>
CC:     Zhen Lei <thunder.leizhen@huawei.com>
Subject: [PATCH 3/4] arm64: dts: realtek: rtd16xx: normalize the node name of the UART devices
Date:   Wed, 19 May 2021 22:19:13 +0800
Message-ID: <20210519141914.8044-4-thunder.leizhen@huawei.com>
X-Mailer: git-send-email 2.26.0.windows.1
In-Reply-To: <20210519141914.8044-1-thunder.leizhen@huawei.com>
References: <20210519141914.8044-1-thunder.leizhen@huawei.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [10.174.177.72]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 dggpemm500006.china.huawei.com (7.185.36.236)
X-CFilter-Loop: Reflected
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Change the node name of the UART devices to match
"^serial(@[0-9a-f,]+)*$".

Signed-off-by: Zhen Lei <thunder.leizhen@huawei.com>
---
 arch/arm64/boot/dts/realtek/rtd16xx.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/realtek/rtd16xx.dtsi b/arch/arm64/boot/dts/realtek/rtd16xx.dtsi
index afba5f04c8ec..bf4d9e917925 100644
--- a/arch/arm64/boot/dts/realtek/rtd16xx.dtsi
+++ b/arch/arm64/boot/dts/realtek/rtd16xx.dtsi
@@ -195,7 +195,7 @@
 };
 
 &iso {
-	uart0: serial0@800 {
+	uart0: serial@800 {
 		compatible = "snps,dw-apb-uart";
 		reg = <0x800 0x400>;
 		reg-shift = <2>;
@@ -207,7 +207,7 @@
 };
 
 &misc {
-	uart1: serial1@200 {
+	uart1: serial@200 {
 		compatible = "snps,dw-apb-uart";
 		reg = <0x200 0x400>;
 		reg-shift = <2>;
@@ -217,7 +217,7 @@
 		status = "disabled";
 	};
 
-	uart2: serial2@400 {
+	uart2: serial@400 {
 		compatible = "snps,dw-apb-uart";
 		reg = <0x400 0x400>;
 		reg-shift = <2>;
-- 
2.21.1


