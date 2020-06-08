Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 726FF1F165A
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2020 12:08:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729348AbgFHKIC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Jun 2020 06:08:02 -0400
Received: from lucky1.263xmail.com ([211.157.147.132]:45374 "EHLO
        lucky1.263xmail.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729264AbgFHKIB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Jun 2020 06:08:01 -0400
Received: from localhost (unknown [192.168.167.32])
        by lucky1.263xmail.com (Postfix) with ESMTP id A4827DD028;
        Mon,  8 Jun 2020 18:07:59 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
        by smtp.263.net (postfix) whith ESMTP id P3328T139695958783744S1591610878452365_;
        Mon, 08 Jun 2020 18:07:59 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <2fedcd5a00f434f0f7021325eb97710c>
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
Subject: [PATCH v1 10/13] arm64: dts: rk3308: Add 'arm,pl330-periph-burst' for dmac
Date:   Mon,  8 Jun 2020 18:07:39 +0800
Message-Id: <1591610862-71359-1-git-send-email-sugar.zhang@rock-chips.com>
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

 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index ac7f694..c56cfcc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -527,6 +527,7 @@
 			clocks = <&cru ACLK_DMAC0>;
 			clock-names = "apb_pclk";
 			#dma-cells = <1>;
++			arm,pl330-periph-burst;
 		};
 
 		dmac1: dma-controller@ff2d0000 {
@@ -537,6 +538,7 @@
 			clocks = <&cru ACLK_DMAC1>;
 			clock-names = "apb_pclk";
 			#dma-cells = <1>;
++			arm,pl330-periph-burst;
 		};
 	};
 
-- 
2.7.4



