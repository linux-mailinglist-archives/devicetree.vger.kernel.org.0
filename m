Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BF765183E12
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2020 01:58:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727053AbgCMA6p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Mar 2020 20:58:45 -0400
Received: from mx.socionext.com ([202.248.49.38]:4532 "EHLO mx.socionext.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727085AbgCMA6o (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 12 Mar 2020 20:58:44 -0400
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
  by mx.socionext.com with ESMTP; 13 Mar 2020 09:58:43 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
        by iyokan-ex.css.socionext.com (Postfix) with ESMTP id 873CA603AB;
        Fri, 13 Mar 2020 09:58:43 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP; Fri, 13 Mar 2020 09:58:43 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
        by kinkan.css.socionext.com (Postfix) with ESMTP id EB6E41A01BB;
        Fri, 13 Mar 2020 09:58:42 +0900 (JST)
From:   Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To:     Masahiro Yamada <yamada.masahiro@socionext.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Masami Hiramatsu <masami.hiramatsu@linaro.org>,
        Jassi Brar <jaswinder.singh@linaro.org>,
        Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: [PATCH 10/10] arm64: dts: uniphier: Stabilize Ethernet RGMII mode of LD20 global and PXs3 ref board
Date:   Fri, 13 Mar 2020 09:58:16 +0900
Message-Id: <1584061096-23686-11-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584061096-23686-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1584061096-23686-1-git-send-email-hayashi.kunihiko@socionext.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The RGMII PHY needs to change drive-strength properties of the Ethernet
Tx pins to stabilize the PHY.

The devicetree for LD20 global board specifies RMII PHY in the ethernet
node as default, however, there is also another board that has RGMII PHY.
The devicetree for the board doesn't exist, so the users should change
the ethernet properties by outside way.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 arch/arm64/boot/dts/socionext/uniphier-ld20-global.dts | 13 +++++++++++++
 arch/arm64/boot/dts/socionext/uniphier-pxs3-ref.dts    | 16 ++++++++++++++++
 2 files changed, 29 insertions(+)

diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld20-global.dts b/arch/arm64/boot/dts/socionext/uniphier-ld20-global.dts
index 2c00008..89b133f 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-ld20-global.dts
+++ b/arch/arm64/boot/dts/socionext/uniphier-ld20-global.dts
@@ -146,6 +146,19 @@
 	};
 };
 
+&pinctrl_ether_rgmii {
+	tx {
+		pins = "RGMII_TXD0", "RGMII_TXD1", "RGMII_TXD2",
+		       "RGMII_TXD3", "RGMII_TXCTL";
+		drive-strength = <12>;
+	};
+
+	txclk {
+		pins = "RGMII_TXCLK";
+		drive-strength = <9>;
+	};
+};
+
 &usb {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/socionext/uniphier-pxs3-ref.dts b/arch/arm64/boot/dts/socionext/uniphier-pxs3-ref.dts
index fcab6d1..d74a6c6 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-pxs3-ref.dts
+++ b/arch/arm64/boot/dts/socionext/uniphier-pxs3-ref.dts
@@ -132,3 +132,19 @@
 		reg = <0>;
 	};
 };
+
+&pinctrl_ether_rgmii {
+	tx {
+		pins = "RGMII0_TXCLK", "RGMII0_TXD0", "RGMII0_TXD1",
+		       "RGMII0_TXD2", "RGMII0_TXD3", "RGMII0_TXCTL";
+		drive-strength = <9>;
+	};
+};
+
+&pinctrl_ether1_rgmii {
+	tx {
+		pins = "RGMII1_TXCLK", "RGMII1_TXD0", "RGMII1_TXD1",
+		       "RGMII1_TXD2", "RGMII1_TXD3", "RGMII1_TXCTL";
+		drive-strength = <9>;
+	};
+};
-- 
2.7.4

