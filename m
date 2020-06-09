Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3B6811F31E5
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2020 03:21:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726928AbgFIBVK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Jun 2020 21:21:10 -0400
Received: from lucky1.263xmail.com ([211.157.147.135]:51700 "EHLO
        lucky1.263xmail.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726888AbgFIBVK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Jun 2020 21:21:10 -0400
Received: from localhost (unknown [192.168.167.235])
        by lucky1.263xmail.com (Postfix) with ESMTP id 3E26099408;
        Tue,  9 Jun 2020 09:21:08 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
        by smtp.263.net (postfix) whith ESMTP id P31250T139913132439296S1591665629442073_;
        Tue, 09 Jun 2020 09:21:08 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <8f542065cd69492624f2b311df5fa09c>
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
Subject: [PATCH v2 08/13] ARM: dts: rv1108: Add 'arm,pl330-periph-burst' for dmac
Date:   Tue,  9 Jun 2020 09:20:18 +0800
Message-Id: <1591665623-38275-4-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591665267-37713-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1591665267-37713-1-git-send-email-sugar.zhang@rock-chips.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch Add the quirk to specify to use burst transfer
for better compatible and higher performance.

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>

---

Changes in v2:
- fix FATAL ERROR: Unable to parse input tree

 arch/arm/boot/dts/rv1108.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
index f9cfe2c..4c3444a 100644
--- a/arch/arm/boot/dts/rv1108.dtsi
+++ b/arch/arm/boot/dts/rv1108.dtsi
@@ -97,6 +97,7 @@
 			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>;
 			#dma-cells = <1>;
 			arm,pl330-broken-no-flushp;
+			arm,pl330-periph-burst;
 			clocks = <&cru ACLK_DMAC>;
 			clock-names = "apb_pclk";
 		};
-- 
2.7.4



