Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 70AB33FE788
	for <lists+devicetree@lfdr.de>; Thu,  2 Sep 2021 04:18:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233133AbhIBCTh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 22:19:37 -0400
Received: from twspam01.aspeedtech.com ([211.20.114.71]:44922 "EHLO
        twspam01.aspeedtech.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232868AbhIBCTh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 22:19:37 -0400
Received: from mail.aspeedtech.com ([192.168.0.24])
        by twspam01.aspeedtech.com with ESMTP id 1821xBgw068911;
        Thu, 2 Sep 2021 09:59:11 +0800 (GMT-8)
        (envelope-from chiawei_wang@aspeedtech.com)
Received: from ChiaWeiWang-PC.aspeed.com (192.168.2.66) by TWMBX02.aspeed.com
 (192.168.0.24) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Thu, 2 Sep
 2021 10:18:15 +0800
From:   Chia-Wei Wang <chiawei_wang@aspeedtech.com>
To:     <robh+dt@kernel.org>, <joel@jms.id.au>, <andrew@aj.id.au>,
        <lee.jones@linaro.org>, <osk@google.com>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-aspeed@lists.ozlabs.org>, <linux-kernel@vger.kernel.org>,
        <openbmc@lists.ozlabs.org>
Subject: [PATCH v2 3/3] ARM: dts: aspeed: Add uart routing to device tree
Date:   Thu, 2 Sep 2021 10:18:17 +0800
Message-ID: <20210902021817.17506-5-chiawei_wang@aspeedtech.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210902021817.17506-1-chiawei_wang@aspeedtech.com>
References: <20210902021817.17506-1-chiawei_wang@aspeedtech.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [192.168.2.66]
X-ClientProxiedBy: TWMBX02.aspeed.com (192.168.0.24) To TWMBX02.aspeed.com
 (192.168.0.24)
X-DNSRBL: 
X-MAIL: twspam01.aspeedtech.com 1821xBgw068911
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add LPC uart routing to the device tree for Aspeed AST25xx/AST26xx SoCs.

Signed-off-by: Chia-Wei Wang <chiawei_wang@aspeedtech.com>
---
 arch/arm/boot/dts/aspeed-g5.dtsi | 6 ++++++
 arch/arm/boot/dts/aspeed-g6.dtsi | 6 ++++++
 2 files changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-g5.dtsi b/arch/arm/boot/dts/aspeed-g5.dtsi
index 329eaeef66fb..d3da5c948165 100644
--- a/arch/arm/boot/dts/aspeed-g5.dtsi
+++ b/arch/arm/boot/dts/aspeed-g5.dtsi
@@ -492,6 +492,12 @@
 					#reset-cells = <1>;
 				};
 
+				uart_routing: uart-routing@98 {
+					compatible = "aspeed,ast2500-uart-routing";
+					reg = <0x98 0x8>;
+					status = "disabled";
+				};
+
 				lhc: lhc@a0 {
 					compatible = "aspeed,ast2500-lhc";
 					reg = <0xa0 0x24 0xc8 0x8>;
diff --git a/arch/arm/boot/dts/aspeed-g6.dtsi b/arch/arm/boot/dts/aspeed-g6.dtsi
index f96607b7b4e2..c287d9dba118 100644
--- a/arch/arm/boot/dts/aspeed-g6.dtsi
+++ b/arch/arm/boot/dts/aspeed-g6.dtsi
@@ -523,6 +523,12 @@
 					#reset-cells = <1>;
 				};
 
+				uart_routing: uart-routing@98 {
+					compatible = "aspeed,ast2600-uart-routing";
+					reg = <0x98 0x8>;
+					status = "disabled";
+				};
+
 				ibt: ibt@140 {
 					compatible = "aspeed,ast2600-ibt-bmc";
 					reg = <0x140 0x18>;
-- 
2.17.1

