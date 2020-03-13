Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A5FB5183E0B
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2020 01:58:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727074AbgCMA6i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Mar 2020 20:58:38 -0400
Received: from mx.socionext.com ([202.248.49.38]:4526 "EHLO mx.socionext.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726620AbgCMA6i (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 12 Mar 2020 20:58:38 -0400
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
  by mx.socionext.com with ESMTP; 13 Mar 2020 09:58:37 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
        by kinkan-ex.css.socionext.com (Postfix) with ESMTP id 0E38818020C;
        Fri, 13 Mar 2020 09:58:38 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP; Fri, 13 Mar 2020 09:58:38 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
        by kinkan.css.socionext.com (Postfix) with ESMTP id 649461A03A2;
        Fri, 13 Mar 2020 09:58:37 +0900 (JST)
From:   Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To:     Masahiro Yamada <yamada.masahiro@socionext.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Masami Hiramatsu <masami.hiramatsu@linaro.org>,
        Jassi Brar <jaswinder.singh@linaro.org>,
        Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: [PATCH 04/10] arm64: dts: uniphier: Enable spi node for PXs3 reference board
Date:   Fri, 13 Mar 2020 09:58:10 +0900
Message-Id: <1584061096-23686-5-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584061096-23686-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1584061096-23686-1-git-send-email-hayashi.kunihiko@socionext.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

PXs3 reference board has 2 spi connectors. This enables spi0 and spi1,
and add aliases properties for each spi to determine device name
assignments.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 arch/arm64/boot/dts/socionext/uniphier-pxs3-ref.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/socionext/uniphier-pxs3-ref.dts b/arch/arm64/boot/dts/socionext/uniphier-pxs3-ref.dts
index 754315b..d887835 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-pxs3-ref.dts
+++ b/arch/arm64/boot/dts/socionext/uniphier-pxs3-ref.dts
@@ -27,6 +27,8 @@
 		i2c2 = &i2c2;
 		i2c3 = &i2c3;
 		i2c6 = &i2c6;
+		spi0 = &spi0;
+		spi1 = &spi1;
 	};
 
 	memory@80000000 {
@@ -75,6 +77,14 @@
 	status = "okay";
 };
 
+&spi0 {
+	status = "okay";
+};
+
+&spi1 {
+	status = "okay";
+};
+
 &sd {
 	status = "okay";
 };
-- 
2.7.4

