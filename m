Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3F0375BECF
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2019 16:55:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728618AbfGAOzu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Jul 2019 10:55:50 -0400
Received: from mail.kernel.org ([198.145.29.99]:47436 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726967AbfGAOzu (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 1 Jul 2019 10:55:50 -0400
Received: from localhost.localdomain (cpe-70-114-128-244.austin.res.rr.com [70.114.128.244])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id AB8EA2064B;
        Mon,  1 Jul 2019 14:55:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1561992949;
        bh=l8bzr4Ae9+jizLwolBwo+0nVG7sfR/kOF80EVfSOE80=;
        h=From:To:Cc:Subject:Date:From;
        b=eHde0xrjAFaUXvFuHxi7NXNRdOoOOZswS7uSvJ0gwLwiXKsAF87o5K+R9im6cl0hD
         W/wDAYttWofPqDqCMcgs5D3dQpPbZImyQnGEuEYHuU4GEEHtMJM6vj67KDw4IzdyhA
         ZYhdcZFwc1/MFPd4GCL9GErmt5dMzsa5L/G+EZx0=
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     robh+dt@kernel.org, mark.rutland@arm.com
Cc:     dinguyen@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: dts: stratix10: Add NAND device node
Date:   Mon,  1 Jul 2019 09:55:38 -0500
Message-Id: <20190701145538.351-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the NAND device node to the base Stratix10 DTS.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 .../arm64/boot/dts/altera/socfpga_stratix10.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
index 5db9ff05fc33..7fea8ec4bab2 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
@@ -313,6 +313,22 @@
 			status = "disabled";
 		};
 
+		nand: nand@ffb90000 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			compatible = "altr,socfpga-denali-nand";
+			reg = <0xffb90000 0x10000>,
+			      <0xffb80000 0x1000>;
+			reg-names = "nand_data", "denali_reg";
+			interrupts = <0 97 4>;
+			clocks = <&clkmgr STRATIX10_NAND_CLK>,
+				 <&clkmgr STRATIX10_NAND_X_CLK>,
+				 <&clkmgr STRATIX10_NAND_ECC_CLK>;
+			clock-names = "nand", "nand_x", "ecc";
+			resets = <&rst NAND_RESET>, <&rst NAND_OCP_RESET>;
+			status = "disabled";
+		};
+
 		ocram: sram@ffe00000 {
 			compatible = "mmio-sram";
 			reg = <0xffe00000 0x100000>;
-- 
2.20.0

