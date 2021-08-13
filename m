Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 85CCD3EAFC1
	for <lists+devicetree@lfdr.de>; Fri, 13 Aug 2021 07:48:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238754AbhHMFtQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Aug 2021 01:49:16 -0400
Received: from twspam01.aspeedtech.com ([211.20.114.71]:58890 "EHLO
        twspam01.aspeedtech.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238764AbhHMFtP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Aug 2021 01:49:15 -0400
Received: from mail.aspeedtech.com ([192.168.0.24])
        by twspam01.aspeedtech.com with ESMTP id 17D5UDmZ018826;
        Fri, 13 Aug 2021 13:30:13 +0800 (GMT-8)
        (envelope-from chiawei_wang@aspeedtech.com)
Received: from ChiaWeiWang-PC.aspeed.com (192.168.2.66) by TWMBX02.aspeed.com
 (192.168.0.24) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Fri, 13 Aug
 2021 13:48:05 +0800
From:   Chia-Wei Wang <chiawei_wang@aspeedtech.com>
To:     <robh+dt@kernel.org>, <joel@jms.id.au>, <andrew@aj.id.au>,
        <cyrilbur@gmail.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-aspeed@lists.ozlabs.org>, <linux-kernel@vger.kernel.org>,
        <openbmc@lists.ozlabs.org>
Subject: [PATCH 2/2] ARM: dts: aspeed: Add mailbox to device tree
Date:   Fri, 13 Aug 2021 13:47:58 +0800
Message-ID: <20210813054758.13189-3-chiawei_wang@aspeedtech.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210813054758.13189-1-chiawei_wang@aspeedtech.com>
References: <20210813054758.13189-1-chiawei_wang@aspeedtech.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [192.168.2.66]
X-ClientProxiedBy: TWMBX02.aspeed.com (192.168.0.24) To TWMBX02.aspeed.com
 (192.168.0.24)
X-DNSRBL: 
X-MAIL: twspam01.aspeedtech.com 17D5UDmZ018826
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add mailbox to the device tree for Aspeed AST24xx/AST25xx/AST26xx SoCs.

Signed-off-by: Chia-Wei Wang <chiawei_wang@aspeedtech.com>
---
 arch/arm/boot/dts/aspeed-g4.dtsi | 7 +++++++
 arch/arm/boot/dts/aspeed-g5.dtsi | 8 +++++++-
 arch/arm/boot/dts/aspeed-g6.dtsi | 7 +++++++
 3 files changed, 21 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/aspeed-g4.dtsi b/arch/arm/boot/dts/aspeed-g4.dtsi
index c5aeb3cf3a09..6298d69df415 100644
--- a/arch/arm/boot/dts/aspeed-g4.dtsi
+++ b/arch/arm/boot/dts/aspeed-g4.dtsi
@@ -383,6 +383,13 @@
 					interrupts = <8>;
 					status = "disabled";
 				};
+
+				mbox: mbox@200 {
+					compatible = "aspeed,ast2500-mbox";
+					reg = <0x200 0x30>;
+					interrupts = <46>;
+					status = "disabled";
+				};
 			};
 
 			uart2: serial@1e78d000 {
diff --git a/arch/arm/boot/dts/aspeed-g5.dtsi b/arch/arm/boot/dts/aspeed-g5.dtsi
index 329eaeef66fb..ab9453d7803c 100644
--- a/arch/arm/boot/dts/aspeed-g5.dtsi
+++ b/arch/arm/boot/dts/aspeed-g5.dtsi
@@ -497,13 +497,19 @@
 					reg = <0xa0 0x24 0xc8 0x8>;
 				};
 
-
 				ibt: ibt@140 {
 					compatible = "aspeed,ast2500-ibt-bmc";
 					reg = <0x140 0x18>;
 					interrupts = <8>;
 					status = "disabled";
 				};
+
+				mbox: mbox@200 {
+					compatible = "aspeed,ast2500-mbox";
+					reg = <0x200 0x30>;
+					interrupts = <46>;
+					status = "disabled";
+				};
 			};
 
 			uart2: serial@1e78d000 {
diff --git a/arch/arm/boot/dts/aspeed-g6.dtsi b/arch/arm/boot/dts/aspeed-g6.dtsi
index f96607b7b4e2..09b286f2ece2 100644
--- a/arch/arm/boot/dts/aspeed-g6.dtsi
+++ b/arch/arm/boot/dts/aspeed-g6.dtsi
@@ -529,6 +529,13 @@
 					interrupts = <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>;
 					status = "disabled";
 				};
+
+				mbox: mbox@200 {
+					compatible = "aspeed,ast2600-mbox";
+					reg = <0x200 0xc0>;
+					interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
+					status = "disabled";
+				};
 			};
 
 			sdc: sdc@1e740000 {
-- 
2.17.1

