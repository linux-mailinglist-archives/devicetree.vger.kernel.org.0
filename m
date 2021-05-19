Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 10724389099
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 16:19:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239148AbhESOUq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 10:20:46 -0400
Received: from szxga05-in.huawei.com ([45.249.212.191]:4536 "EHLO
        szxga05-in.huawei.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239857AbhESOUp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 May 2021 10:20:45 -0400
Received: from dggems703-chm.china.huawei.com (unknown [172.30.72.59])
        by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4FlZgB4Hq3zsRRP;
        Wed, 19 May 2021 22:16:38 +0800 (CST)
Received: from dggpemm500006.china.huawei.com (7.185.36.236) by
 dggems703-chm.china.huawei.com (10.3.19.180) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Wed, 19 May 2021 22:19:24 +0800
Received: from thunder-town.china.huawei.com (10.174.177.72) by
 dggpemm500006.china.huawei.com (7.185.36.236) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Wed, 19 May 2021 22:19:23 +0800
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
Subject: [PATCH 2/4] arm64: dts: broadcom: normalize the node name of the UART devices
Date:   Wed, 19 May 2021 22:19:12 +0800
Message-ID: <20210519141914.8044-3-thunder.leizhen@huawei.com>
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
 arch/arm64/boot/dts/broadcom/stingray/stingray.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/broadcom/stingray/stingray.dtsi b/arch/arm64/boot/dts/broadcom/stingray/stingray.dtsi
index 2ffb2c92182a..7b04dfe67bef 100644
--- a/arch/arm64/boot/dts/broadcom/stingray/stingray.dtsi
+++ b/arch/arm64/boot/dts/broadcom/stingray/stingray.dtsi
@@ -470,7 +470,7 @@
 			status = "disabled";
 		};
 
-		uart0: uart@100000 {
+		uart0: serial@100000 {
 			device_type = "serial";
 			compatible = "snps,dw-apb-uart";
 			reg = <0x00100000 0x1000>;
@@ -481,7 +481,7 @@
 			status = "disabled";
 		};
 
-		uart1: uart@110000 {
+		uart1: serial@110000 {
 			device_type = "serial";
 			compatible = "snps,dw-apb-uart";
 			reg = <0x00110000 0x1000>;
@@ -492,7 +492,7 @@
 			status = "disabled";
 		};
 
-		uart2: uart@120000 {
+		uart2: serial@120000 {
 			device_type = "serial";
 			compatible = "snps,dw-apb-uart";
 			reg = <0x00120000 0x1000>;
@@ -503,7 +503,7 @@
 			status = "disabled";
 		};
 
-		uart3: uart@130000 {
+		uart3: serial@130000 {
 			device_type = "serial";
 			compatible = "snps,dw-apb-uart";
 			reg = <0x00130000 0x1000>;
-- 
2.21.1


