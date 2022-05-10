Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17481520AE2
	for <lists+devicetree@lfdr.de>; Tue, 10 May 2022 03:53:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234354AbiEJB5J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 May 2022 21:57:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234362AbiEJB5I (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 May 2022 21:57:08 -0400
Received: from mo-csw.securemx.jp (mo-csw1114.securemx.jp [210.130.202.156])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F31CB140843
        for <devicetree@vger.kernel.org>; Mon,  9 May 2022 18:53:11 -0700 (PDT)
Received: by mo-csw.securemx.jp (mx-mo-csw1114) id 24A1qjst012867; Tue, 10 May 2022 10:52:45 +0900
X-Iguazu-Qid: 2wGr4Oa011E4R7HqRU
X-Iguazu-QSIG: v=2; s=0; t=1652147565; q=2wGr4Oa011E4R7HqRU; m=d6iPStV5WN59X0D/0+KgIj+zhCh66bQ5aFdQ1JZRDdI=
Received: from imx12-a.toshiba.co.jp (imx12-a.toshiba.co.jp [61.202.160.135])
        by relay.securemx.jp (mx-mr1110) id 24A1qig5024951
        (version=TLSv1.2 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
        Tue, 10 May 2022 10:52:44 +0900
From:   Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>, yuji2.ishikawa@toshiba.co.jp,
        Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
Subject: [PATCH 6/9] arm64: dts: visconti: Update the clock providers for PCIe host controller
Date:   Tue, 10 May 2022 10:52:26 +0900
X-TSB-HOP2: ON
Message-Id: <20220510015229.139818-7-nobuhiro1.iwamatsu@toshiba.co.jp>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220510015229.139818-1-nobuhiro1.iwamatsu@toshiba.co.jp>
References: <20220510015229.139818-1-nobuhiro1.iwamatsu@toshiba.co.jp>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Remove fixed clock and source common clock for PCIe host controller.

Signed-off-by: Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
---
 arch/arm64/boot/dts/toshiba/tmpv7708-rm-mbrc.dts |  2 --
 arch/arm64/boot/dts/toshiba/tmpv7708.dtsi        | 16 ++--------------
 2 files changed, 2 insertions(+), 16 deletions(-)

diff --git a/arch/arm64/boot/dts/toshiba/tmpv7708-rm-mbrc.dts b/arch/arm64/boot/dts/toshiba/tmpv7708-rm-mbrc.dts
index 527bb437dd90..d209fdc98597 100644
--- a/arch/arm64/boot/dts/toshiba/tmpv7708-rm-mbrc.dts
+++ b/arch/arm64/boot/dts/toshiba/tmpv7708-rm-mbrc.dts
@@ -72,6 +72,4 @@ &pwm {
 
 &pcie {
 	status = "okay";
-	clocks = <&extclk100mhz>, <&clk600mhz>, <&clk25mhz>;
-	clock-names = "ref", "core", "aux";
 };
diff --git a/arch/arm64/boot/dts/toshiba/tmpv7708.dtsi b/arch/arm64/boot/dts/toshiba/tmpv7708.dtsi
index 7c80a9434e10..0fc32c036f30 100644
--- a/arch/arm64/boot/dts/toshiba/tmpv7708.dtsi
+++ b/arch/arm64/boot/dts/toshiba/tmpv7708.dtsi
@@ -129,20 +129,6 @@ timer {
 			<GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>;
 	};
 
-	clk25mhz: clk25mhz {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <25000000>;
-		clock-output-names = "clk25mhz";
-	};
-
-	clk600mhz: clk600mhz {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <600000000>;
-		clock-output-names = "clk600mhz";
-	};
-
 	extclk100mhz: extclk100mhz {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
@@ -520,6 +506,8 @@ pcie: pcie@28400000 {
 				 0 0 0 3 &gic GIC_SPI 215 IRQ_TYPE_LEVEL_HIGH
 				 0 0 0 4 &gic GIC_SPI 215 IRQ_TYPE_LEVEL_HIGH>;
 			max-link-speed = <2>;
+			clocks = <&extclk100mhz>, <&pismu TMPV770X_CLK_PCIE_MSTR>, <&pismu TMPV770X_CLK_PCIE_AUX>;
+			clock-names = "ref", "core", "aux";
 			status = "disabled";
 		};
 	};
-- 
2.36.0


