Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B232C1F1652
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2020 12:06:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729232AbgFHKGL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Jun 2020 06:06:11 -0400
Received: from lucky1.263xmail.com ([211.157.147.135]:34780 "EHLO
        lucky1.263xmail.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729240AbgFHKGL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Jun 2020 06:06:11 -0400
Received: from localhost (unknown [192.168.167.16])
        by lucky1.263xmail.com (Postfix) with ESMTP id 9D95999931;
        Mon,  8 Jun 2020 18:04:42 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
        by smtp.263.net (postfix) whith ESMTP id P760T139944424257280S1591610682251378_;
        Mon, 08 Jun 2020 18:04:44 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <257d5b358e853a83e1b669d71ce4386d>
X-RL-SENDER: sugar.zhang@rock-chips.com
X-SENDER: zxg@rock-chips.com
X-LOGIN-NAME: sugar.zhang@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
From:   Sugar Zhang <sugar.zhang@rock-chips.com>
To:     heiko@sntech.de, vkoul@kernel.org
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Sugar Zhang <sugar.zhang@rock-chips.com>
Subject: [PATCH v1 07/13] ARM: dts: rk3xxx: Add 'arm,pl330-periph-burst' for dmac
Date:   Mon,  8 Jun 2020 18:04:25 +0800
Message-Id: <1591610671-71238-3-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591602567-43788-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1591602567-43788-1-git-send-email-sugar.zhang@rock-chips.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch Add the quirk to specify to use burst transfer
for better compatible and higher performance.

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
---

 arch/arm/boot/dts/rk3xxx.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/rk3xxx.dtsi b/arch/arm/boot/dts/rk3xxx.dtsi
index d929b60..9af86a18 100644
--- a/arch/arm/boot/dts/rk3xxx.dtsi
+++ b/arch/arm/boot/dts/rk3xxx.dtsi
@@ -45,6 +45,7 @@
 				     <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>;
 			#dma-cells = <1>;
 			arm,pl330-broken-no-flushp;
++			arm,pl330-periph-burst;
 			clocks = <&cru ACLK_DMA1>;
 			clock-names = "apb_pclk";
 		};
@@ -56,6 +57,7 @@
 				     <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>;
 			#dma-cells = <1>;
 			arm,pl330-broken-no-flushp;
++			arm,pl330-periph-burst;
 			clocks = <&cru ACLK_DMA1>;
 			clock-names = "apb_pclk";
 			status = "disabled";
@@ -68,6 +70,7 @@
 				     <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
 			#dma-cells = <1>;
 			arm,pl330-broken-no-flushp;
++			arm,pl330-periph-burst;
 			clocks = <&cru ACLK_DMA2>;
 			clock-names = "apb_pclk";
 		};
-- 
2.7.4



