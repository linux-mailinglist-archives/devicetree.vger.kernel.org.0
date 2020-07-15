Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0CE4D22151C
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2020 21:28:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726491AbgGOT2e (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jul 2020 15:28:34 -0400
Received: from mail.kernel.org ([198.145.29.99]:46298 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726736AbgGOT2e (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 15 Jul 2020 15:28:34 -0400
Received: from localhost.localdomain (cpe-70-114-128-244.austin.res.rr.com [70.114.128.244])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 067022067D;
        Wed, 15 Jul 2020 19:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1594841314;
        bh=KTSVJ2WkLhXyaIYuDAqz09clMcn7p0ijaffcHvPUisA=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=tsACsWvyjAWvqwuRtdnFBM5TMlbSIOZ31nJUACLlJsRvVck7ESru+/JjZMOznyuAh
         +5XeAnCBTw80E7yZonTQLWb+qivsab+EgcQ6pbbBrb870LkiYlH0k51jA7SCH/olq+
         dj27ABl1YXd/TCGyodHo+oTUtvIdW/FG43gpMSQU=
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     linux-arm-kernel@lists.infradead.org
Cc:     dinguyen@kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 2/3] arm: dts: socfpga: add reset-names to spi node
Date:   Wed, 15 Jul 2020 14:28:23 -0500
Message-Id: <20200715192824.22210-2-dinguyen@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200715192824.22210-1-dinguyen@kernel.org>
References: <20200715192824.22210-1-dinguyen@kernel.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add reset-names = "spi" to spi dts nodes.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm/boot/dts/socfpga.dtsi                    | 2 ++
 arch/arm/boot/dts/socfpga_arria10.dtsi            | 2 ++
 arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi | 2 ++
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi     | 2 ++
 4 files changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/socfpga.dtsi b/arch/arm/boot/dts/socfpga.dtsi
index c2b54af417a2..a5fde3691d42 100644
--- a/arch/arm/boot/dts/socfpga.dtsi
+++ b/arch/arm/boot/dts/socfpga.dtsi
@@ -829,6 +829,7 @@
 			num-cs = <4>;
 			clocks = <&spi_m_clk>;
 			resets = <&rst SPIM0_RESET>;
+			reset-names = "spi";
 			status = "disabled";
 		};
 
@@ -841,6 +842,7 @@
 			num-cs = <4>;
 			clocks = <&spi_m_clk>;
 			resets = <&rst SPIM1_RESET>;
+			reset-names = "spi";
 			status = "disabled";
 		};
 
diff --git a/arch/arm/boot/dts/socfpga_arria10.dtsi b/arch/arm/boot/dts/socfpga_arria10.dtsi
index 3b8571b8b412..fe5826805519 100644
--- a/arch/arm/boot/dts/socfpga_arria10.dtsi
+++ b/arch/arm/boot/dts/socfpga_arria10.dtsi
@@ -613,6 +613,7 @@
 			/*32bit_access;*/
 			clocks = <&spi_m_clk>;
 			resets = <&rst SPIM0_RESET>;
+			reset-names = "spi";
 			status = "disabled";
 		};
 
@@ -628,6 +629,7 @@
 			rx-dma-channel = <&pdma 17>;
 			clocks = <&spi_m_clk>;
 			resets = <&rst SPIM1_RESET>;
+			reset-names = "spi";
 			status = "disabled";
 		};
 
diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
index d1fc9c2055f4..d71961942b5b 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
@@ -380,6 +380,7 @@
 			reg = <0xffda4000 0x1000>;
 			interrupts = <0 99 4>;
 			resets = <&rst SPIM0_RESET>;
+			reset-names = "spi";
 			reg-io-width = <4>;
 			num-cs = <4>;
 			clocks = <&clkmgr STRATIX10_L4_MAIN_CLK>;
@@ -393,6 +394,7 @@
 			reg = <0xffda5000 0x1000>;
 			interrupts = <0 100 4>;
 			resets = <&rst SPIM1_RESET>;
+			reset-names = "spi";
 			reg-io-width = <4>;
 			num-cs = <4>;
 			clocks = <&clkmgr STRATIX10_L4_MAIN_CLK>;
diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
index ac1b2422e8d4..9d7f19e97df7 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
@@ -380,6 +380,7 @@
 			reg = <0xffda4000 0x1000>;
 			interrupts = <0 99 4>;
 			resets = <&rst SPIM0_RESET>;
+			reset-names = "spi";
 			reg-io-width = <4>;
 			num-cs = <4>;
 			clocks = <&clkmgr AGILEX_L4_MAIN_CLK>;
@@ -393,6 +394,7 @@
 			reg = <0xffda5000 0x1000>;
 			interrupts = <0 100 4>;
 			resets = <&rst SPIM1_RESET>;
+			reset-names = "spi";
 			reg-io-width = <4>;
 			num-cs = <4>;
 			clocks = <&clkmgr AGILEX_L4_MAIN_CLK>;
-- 
2.17.1

