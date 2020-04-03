Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0B52719CE42
	for <lists+devicetree@lfdr.de>; Fri,  3 Apr 2020 03:43:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390250AbgDCBnv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Apr 2020 21:43:51 -0400
Received: from mx.socionext.com ([202.248.49.38]:19260 "EHLO mx.socionext.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2389108AbgDCBnv (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 2 Apr 2020 21:43:51 -0400
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
  by mx.socionext.com with ESMTP; 03 Apr 2020 10:43:49 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
        by iyokan-ex.css.socionext.com (Postfix) with ESMTP id 304C460057;
        Fri,  3 Apr 2020 10:43:49 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP; Fri, 3 Apr 2020 10:43:49 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
        by kinkan.css.socionext.com (Postfix) with ESMTP id D3D611A01BB;
        Fri,  3 Apr 2020 10:43:48 +0900 (JST)
From:   Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To:     Masahiro Yamada <yamada.masahiro@socionext.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Masami Hiramatsu <masami.hiramatsu@linaro.org>,
        Jassi Brar <jaswinder.singh@linaro.org>,
        Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: [PATCH v4 2/5] arm64: dts: uniphier: Add XDMAC node
Date:   Fri,  3 Apr 2020 10:43:04 +0900
Message-Id: <1585878187-8131-3-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585878187-8131-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1585878187-8131-1-git-send-email-hayashi.kunihiko@socionext.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add external DMA controller support implemented in UniPhier SoCs.
This supports for LD11, LD20 and PXs3.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi | 8 ++++++++
 arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi | 8 ++++++++
 arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi | 8 ++++++++
 3 files changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi b/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
index 2ca2d3d..60ff9b4 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
@@ -566,6 +566,14 @@
 			};
 		};
 
+		xdmac: dma-controller@5fc10000 {
+			compatible = "socionext,uniphier-xdmac";
+			reg = <0x5fc10000 0x5300>;
+			interrupts = <0 188 4>;
+			dma-channels = <16>;
+			#dma-cells = <2>;
+		};
+
 		aidet: interrupt-controller@5fc20000 {
 			compatible = "socionext,uniphier-ld11-aidet";
 			reg = <0x5fc20000 0x200>;
diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi b/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
index a93148c..afa90b7 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
@@ -664,6 +664,14 @@
 			};
 		};
 
+		xdmac: dma-controller@5fc10000 {
+			compatible = "socionext,uniphier-xdmac";
+			reg = <0x5fc10000 0x5300>;
+			interrupts = <0 188 4>;
+			dma-channels = <16>;
+			#dma-cells = <2>;
+		};
+
 		aidet: interrupt-controller@5fc20000 {
 			compatible = "socionext,uniphier-ld20-aidet";
 			reg = <0x5fc20000 0x200>;
diff --git a/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi b/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
index 616835b..ba18a96 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
@@ -498,6 +498,14 @@
 			};
 		};
 
+		xdmac: dma-controller@5fc10000 {
+			compatible = "socionext,uniphier-xdmac";
+			reg = <0x5fc10000 0x5300>;
+			interrupts = <0 188 4>;
+			dma-channels = <16>;
+			#dma-cells = <2>;
+		};
+
 		aidet: interrupt-controller@5fc20000 {
 			compatible = "socionext,uniphier-pxs3-aidet";
 			reg = <0x5fc20000 0x200>;
-- 
2.7.4

