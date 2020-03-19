Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 06A9518AD8F
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2020 08:51:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726926AbgCSHvA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Mar 2020 03:51:00 -0400
Received: from mx.socionext.com ([202.248.49.38]:23092 "EHLO mx.socionext.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726905AbgCSHvA (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 19 Mar 2020 03:51:00 -0400
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
  by mx.socionext.com with ESMTP; 19 Mar 2020 16:50:58 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
        by iyokan-ex.css.socionext.com (Postfix) with ESMTP id 0006A60057;
        Thu, 19 Mar 2020 16:50:58 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP; Thu, 19 Mar 2020 16:50:58 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
        by kinkan.css.socionext.com (Postfix) with ESMTP id 6D26F1A15BF;
        Thu, 19 Mar 2020 16:50:58 +0900 (JST)
From:   Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To:     Masahiro Yamada <yamada.masahiro@socionext.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Masami Hiramatsu <masami.hiramatsu@linaro.org>,
        Jassi Brar <jaswinder.singh@linaro.org>,
        Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: [PATCH v2 2/6] ARM: dts: uniphier: Add XDMAC node
Date:   Thu, 19 Mar 2020 16:50:48 +0900
Message-Id: <1584604252-13172-3-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584604252-13172-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1584604252-13172-1-git-send-email-hayashi.kunihiko@socionext.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add external DMA controller support implemented in UniPhier SoCs.
This supports for Pro4, Pro5 and PXs2.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 arch/arm/boot/dts/uniphier-pro4.dtsi | 8 ++++++++
 arch/arm/boot/dts/uniphier-pro5.dtsi | 8 ++++++++
 arch/arm/boot/dts/uniphier-pxs2.dtsi | 8 ++++++++
 3 files changed, 24 insertions(+)

diff --git a/arch/arm/boot/dts/uniphier-pro4.dtsi b/arch/arm/boot/dts/uniphier-pro4.dtsi
index 2ec04d7..cb26c10 100644
--- a/arch/arm/boot/dts/uniphier-pro4.dtsi
+++ b/arch/arm/boot/dts/uniphier-pro4.dtsi
@@ -426,6 +426,14 @@
 			};
 		};
 
+		xdmac: dma-controller@5fc10000 {
+			compatible = "socionext,uniphier-xdmac";
+			reg = <0x5fc10000 0x1000>;
+			interrupts = <0 188 4>;
+			dma-channels = <16>;
+			#dma-cells = <2>;
+		};
+
 		aidet: aidet@5fc20000 {
 			compatible = "socionext,uniphier-pro4-aidet";
 			reg = <0x5fc20000 0x200>;
diff --git a/arch/arm/boot/dts/uniphier-pro5.dtsi b/arch/arm/boot/dts/uniphier-pro5.dtsi
index 6909323..95c1c9b 100644
--- a/arch/arm/boot/dts/uniphier-pro5.dtsi
+++ b/arch/arm/boot/dts/uniphier-pro5.dtsi
@@ -408,6 +408,14 @@
 			};
 		};
 
+		xdmac: dma-controller@5fc10000 {
+			compatible = "socionext,uniphier-xdmac";
+			reg = <0x5fc10000 0x1000>;
+			interrupts = <0 188 4>;
+			dma-channels = <16>;
+			#dma-cells = <2>;
+		};
+
 		aidet: aidet@5fc20000 {
 			compatible = "socionext,uniphier-pro5-aidet";
 			reg = <0x5fc20000 0x200>;
diff --git a/arch/arm/boot/dts/uniphier-pxs2.dtsi b/arch/arm/boot/dts/uniphier-pxs2.dtsi
index 60f44f22..543b2a9 100644
--- a/arch/arm/boot/dts/uniphier-pxs2.dtsi
+++ b/arch/arm/boot/dts/uniphier-pxs2.dtsi
@@ -508,6 +508,14 @@
 			};
 		};
 
+		xdmac: dma-controller@5fc10000 {
+			compatible = "socionext,uniphier-xdmac";
+			reg = <0x5fc10000 0x1000>;
+			interrupts = <0 188 4>;
+			dma-channels = <16>;
+			#dma-cells = <2>;
+		};
+
 		aidet: aidet@5fc20000 {
 			compatible = "socionext,uniphier-pxs2-aidet";
 			reg = <0x5fc20000 0x200>;
-- 
2.7.4

