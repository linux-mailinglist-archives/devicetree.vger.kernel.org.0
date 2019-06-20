Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 07E814D248
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2019 17:37:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731805AbfFTPhz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Jun 2019 11:37:55 -0400
Received: from mail.kernel.org ([198.145.29.99]:49268 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1732017AbfFTPhy (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 20 Jun 2019 11:37:54 -0400
Received: from localhost.localdomain (cpe-70-114-128-244.austin.res.rr.com [70.114.128.244])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 0AF1B208CA;
        Thu, 20 Jun 2019 15:37:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1561045074;
        bh=tzFoQg+XZWpuWpU/eNJJDW2zLVEyi2sxbQ7e/gymY9w=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=H8kid3qep27TZNEAi1hjCilbnrVdIzX7fGHe4NhuveoCtCjvGIjBKteZMlz1cDb/F
         Z05ReQoonGuTp6an5RXOTtChe66J7nNz1eqoEt7tIKtY1vrZ9x0tBYyK37MJ8Xxo2F
         MhzfQhTAqTtQrhSMZvVRh7N5U6d/bVSpxFTGjF+E=
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     robh+dt@kernel.org, mark.rutland@arm.com
Cc:     dinguyen@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] arm64: dts: agilex/stratix10: Add reset properties for DMA
Date:   Thu, 20 Jun 2019 10:37:32 -0500
Message-Id: <20190620153732.26738-2-dinguyen@kernel.org>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190620153732.26738-1-dinguyen@kernel.org>
References: <20190620153732.26738-1-dinguyen@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add both the reset and reset-ocp properties for the DMA node on the
Stratix10 and Agilex platforms.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi | 2 ++
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi     | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
index a781e699a538..5db9ff05fc33 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
@@ -335,6 +335,8 @@
 			#dma-requests = <32>;
 			clocks = <&clkmgr STRATIX10_L4_MAIN_CLK>;
 			clock-names = "apb_pclk";
+			resets = <&rst DMA_RESET>, <&rst DMA_OCP_RESET>;
+			reset-names = "dma", "dma-ocp";
 		};
 
 		rst: rstmgr@ffd11000 {
diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
index e4ceb3a73c81..36abc25320a8 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
@@ -249,6 +249,8 @@
 			#dma-cells = <1>;
 			#dma-channels = <8>;
 			#dma-requests = <32>;
+			resets = <&rst DMA_RESET>, <&rst DMA_OCP_RESET>;
+			reset-names = "dma", "dma-ocp";
 		};
 
 		rst: rstmgr@ffd11000 {
-- 
2.20.0

