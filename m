Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B09A37AAAF
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2019 16:15:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730570AbfG3OPo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Jul 2019 10:15:44 -0400
Received: from mail.kernel.org ([198.145.29.99]:40606 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727338AbfG3OPo (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 30 Jul 2019 10:15:44 -0400
Received: from localhost.localdomain (cpe-70-114-128-244.austin.res.rr.com [70.114.128.244])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 2BE1620651;
        Tue, 30 Jul 2019 14:15:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1564496143;
        bh=Mgp7b2HsODz74e59mBT8PXI+RPCRAY3Cr3ZbqisHfp8=;
        h=From:To:Cc:Subject:Date:From;
        b=PaTnHz6Z7dhycXV9UeFoGD7qRWPpbJOa3Qk7KOI0vJIkqkuVw7MxWtoM/Z7FwTRGb
         nDRKDR289dIeaTVqh8jUKoy18/G98K86+0fRlDvrHvWbcDnzpYbHD7dab4gyO2r102
         SEV4tv6P9FgBggJDETMmZMAPdTnCSjOGgTZYJBmc=
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     robh+dt@kernel.org, mark.rutland@arm.com
Cc:     dinguyen@kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: [PATCH] ARM: dts: socfpga: add missing reset-names for dma
Date:   Tue, 30 Jul 2019 09:15:34 -0500
Message-Id: <20190730141534.30852-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The dma dts node was missing the reset-names = "dma". The reset driver
needs this line to get the reset property.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm/boot/dts/socfpga.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/socfpga.dtsi b/arch/arm/boot/dts/socfpga.dtsi
index ec1966480f2f..ba47dc15a5d0 100644
--- a/arch/arm/boot/dts/socfpga.dtsi
+++ b/arch/arm/boot/dts/socfpga.dtsi
@@ -85,6 +85,7 @@
 				clocks = <&l4_main_clk>;
 				clock-names = "apb_pclk";
 				resets = <&rst DMA_RESET>;
+				reset-names = "dma";
 			};
 		};
 
-- 
2.20.0

