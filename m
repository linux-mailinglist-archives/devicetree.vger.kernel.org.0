Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1E43818AD94
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2020 08:51:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726958AbgCSHvF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Mar 2020 03:51:05 -0400
Received: from mx.socionext.com ([202.248.49.38]:23102 "EHLO mx.socionext.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726905AbgCSHvE (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 19 Mar 2020 03:51:04 -0400
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
  by mx.socionext.com with ESMTP; 19 Mar 2020 16:51:02 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
        by kinkan-ex.css.socionext.com (Postfix) with ESMTP id B43DC18005C;
        Thu, 19 Mar 2020 16:51:02 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP; Thu, 19 Mar 2020 16:51:02 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
        by kinkan.css.socionext.com (Postfix) with ESMTP id 29B261A0E67;
        Thu, 19 Mar 2020 16:51:02 +0900 (JST)
From:   Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To:     Masahiro Yamada <yamada.masahiro@socionext.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Masami Hiramatsu <masami.hiramatsu@linaro.org>,
        Jassi Brar <jaswinder.singh@linaro.org>,
        Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: [PATCH v2 5/6] arm64: dts: uniphier: Add ethernet aliases
Date:   Thu, 19 Mar 2020 16:50:51 +0900
Message-Id: <1584604252-13172-6-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584604252-13172-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1584604252-13172-1-git-send-email-hayashi.kunihiko@socionext.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add aliases properties of ethernet device for each SoC.

U-boot performs a fix-up of the MAC address and will overwrite the values
from the Linux devicetree for aliased ethernet device. The MAC address can
be inherited from u-boot by adding aliases of ethernet devices.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 arch/arm64/boot/dts/socionext/uniphier-ld11-global.dts | 1 +
 arch/arm64/boot/dts/socionext/uniphier-ld11-ref.dts    | 1 +
 arch/arm64/boot/dts/socionext/uniphier-ld20-global.dts | 1 +
 arch/arm64/boot/dts/socionext/uniphier-ld20-ref.dts    | 1 +
 arch/arm64/boot/dts/socionext/uniphier-pxs3-ref.dts    | 2 ++
 5 files changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld11-global.dts b/arch/arm64/boot/dts/socionext/uniphier-ld11-global.dts
index f72f048..816ac25 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-ld11-global.dts
+++ b/arch/arm64/boot/dts/socionext/uniphier-ld11-global.dts
@@ -30,6 +30,7 @@
 		i2c3 = &i2c3;
 		i2c4 = &i2c4;
 		i2c5 = &i2c5;
+		ethernet0 = &eth;
 	};
 
 	memory@80000000 {
diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld11-ref.dts b/arch/arm64/boot/dts/socionext/uniphier-ld11-ref.dts
index b8f6273..693171f 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-ld11-ref.dts
+++ b/arch/arm64/boot/dts/socionext/uniphier-ld11-ref.dts
@@ -29,6 +29,7 @@
 		i2c3 = &i2c3;
 		i2c4 = &i2c4;
 		i2c5 = &i2c5;
+		ethernet0 = &eth;
 	};
 
 	memory@80000000 {
diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld20-global.dts b/arch/arm64/boot/dts/socionext/uniphier-ld20-global.dts
index 9ca692e..2c00008 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-ld20-global.dts
+++ b/arch/arm64/boot/dts/socionext/uniphier-ld20-global.dts
@@ -30,6 +30,7 @@
 		i2c3 = &i2c3;
 		i2c4 = &i2c4;
 		i2c5 = &i2c5;
+		ethernet0 = &eth;
 	};
 
 	memory@80000000 {
diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld20-ref.dts b/arch/arm64/boot/dts/socionext/uniphier-ld20-ref.dts
index 406244a..eeb976e 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-ld20-ref.dts
+++ b/arch/arm64/boot/dts/socionext/uniphier-ld20-ref.dts
@@ -29,6 +29,7 @@
 		i2c3 = &i2c3;
 		i2c4 = &i2c4;
 		i2c5 = &i2c5;
+		ethernet0 = &eth;
 	};
 
 	memory@80000000 {
diff --git a/arch/arm64/boot/dts/socionext/uniphier-pxs3-ref.dts b/arch/arm64/boot/dts/socionext/uniphier-pxs3-ref.dts
index d887835..fcab6d1 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-pxs3-ref.dts
+++ b/arch/arm64/boot/dts/socionext/uniphier-pxs3-ref.dts
@@ -29,6 +29,8 @@
 		i2c6 = &i2c6;
 		spi0 = &spi0;
 		spi1 = &spi1;
+		ethernet0 = &eth0;
+		ethernet1 = &eth1;
 	};
 
 	memory@80000000 {
-- 
2.7.4

