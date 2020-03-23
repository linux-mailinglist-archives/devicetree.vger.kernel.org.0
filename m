Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0C3CC18F1DE
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2020 10:33:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727699AbgCWJdO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Mar 2020 05:33:14 -0400
Received: from mx.socionext.com ([202.248.49.38]:5768 "EHLO mx.socionext.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727695AbgCWJdN (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 23 Mar 2020 05:33:13 -0400
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
  by mx.socionext.com with ESMTP; 23 Mar 2020 18:33:13 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
        by kinkan-ex.css.socionext.com (Postfix) with ESMTP id 451A9180BCB;
        Mon, 23 Mar 2020 18:33:13 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP; Mon, 23 Mar 2020 18:33:13 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
        by kinkan.css.socionext.com (Postfix) with ESMTP id C0A811A12AD;
        Mon, 23 Mar 2020 18:33:12 +0900 (JST)
From:   Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To:     Masahiro Yamada <yamada.masahiro@socionext.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Masami Hiramatsu <masami.hiramatsu@linaro.org>,
        Jassi Brar <jaswinder.singh@linaro.org>,
        Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: [PATCH v3 6/6] arm64: dts: uniphier: Stabilize Ethernet RGMII mode of PXs3 ref board
Date:   Mon, 23 Mar 2020 18:32:50 +0900
Message-Id: <1584955970-8162-7-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584955970-8162-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1584955970-8162-1-git-send-email-hayashi.kunihiko@socionext.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The RGMII PHY needs to change drive-strength properties of the Ethernet
Tx pins to stabilize the PHY.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 arch/arm64/boot/dts/socionext/uniphier-pxs3-ref.dts | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

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

