Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C0BB81F31EE
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2020 03:24:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727048AbgFIBWe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Jun 2020 21:22:34 -0400
Received: from lucky1.263xmail.com ([211.157.147.133]:57364 "EHLO
        lucky1.263xmail.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726977AbgFIBWe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Jun 2020 21:22:34 -0400
Received: from localhost (unknown [192.168.167.32])
        by lucky1.263xmail.com (Postfix) with ESMTP id 7FC6AC3706;
        Tue,  9 Jun 2020 09:22:31 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
        by smtp.263.net (postfix) whith ESMTP id P3328T139697392834304S1591665750167995_;
        Tue, 09 Jun 2020 09:22:31 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <85dc3a210b595b2615b1401dd4aecd4f>
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
Subject: [PATCH v2 10/13] arm64: dts: rk3308: Add 'arm,pl330-periph-burst' for dmac
Date:   Tue,  9 Jun 2020 09:22:20 +0800
Message-Id: <1591665743-38416-1-git-send-email-sugar.zhang@rock-chips.com>
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

 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index ac7f694..0a881d1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -527,6 +527,7 @@
 			clocks = <&cru ACLK_DMAC0>;
 			clock-names = "apb_pclk";
 			#dma-cells = <1>;
+			arm,pl330-periph-burst;
 		};
 
 		dmac1: dma-controller@ff2d0000 {
@@ -537,6 +538,7 @@
 			clocks = <&cru ACLK_DMAC1>;
 			clock-names = "apb_pclk";
 			#dma-cells = <1>;
+			arm,pl330-periph-burst;
 		};
 	};
 
-- 
2.7.4



