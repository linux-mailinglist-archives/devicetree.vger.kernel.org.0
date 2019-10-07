Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9E881CE085
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2019 13:33:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727566AbfJGLdh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Oct 2019 07:33:37 -0400
Received: from foss.arm.com ([217.140.110.172]:60344 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727376AbfJGLdh (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 7 Oct 2019 07:33:37 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7AD6615A2;
        Mon,  7 Oct 2019 04:33:37 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com [10.1.197.57])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id BEE433F706;
        Mon,  7 Oct 2019 04:33:36 -0700 (PDT)
From:   Robin Murphy <robin.murphy@arm.com>
To:     heiko@sntech.de
Cc:     devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: Update nanopi4 phy reset properties
Date:   Mon,  7 Oct 2019 12:33:26 +0100
Message-Id: <4d16c24ae3651a2119cf5bb1213f46a9fce4b39a.1570444773.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use the now-preferred generic phy reset properties instead of the
dwmac-specific ones.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
index dd16c80d923e..170f7ed6d773 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
@@ -152,9 +152,6 @@
 	phy-handle = <&rtl8211e>;
 	phy-mode = "rgmii";
 	phy-supply = <&vcc3v3_s3>;
-	snps,reset-active-low;
-	snps,reset-delays-us = <0 10000 30000>;
-	snps,reset-gpio = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
 	tx_delay = <0x28>;
 	rx_delay = <0x11>;
 	status = "okay";
@@ -168,6 +165,9 @@
 			reg = <1>;
 			interrupt-parent = <&gpio3>;
 			interrupts = <RK_PB2 IRQ_TYPE_LEVEL_LOW>;
+			reset-assert-us = <10000>;
+			reset-deassert-us = <30000>;
+			reset-gpios = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
 		};
 	};
 };
-- 
2.21.0.dirty

