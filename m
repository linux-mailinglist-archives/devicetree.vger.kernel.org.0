Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 31E87520ADA
	for <lists+devicetree@lfdr.de>; Tue, 10 May 2022 03:53:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234357AbiEJB5O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 May 2022 21:57:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234374AbiEJB5K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 May 2022 21:57:10 -0400
Received: from mo-csw.securemx.jp (mo-csw1514.securemx.jp [210.130.202.153])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E141C140411
        for <devicetree@vger.kernel.org>; Mon,  9 May 2022 18:53:13 -0700 (PDT)
Received: by mo-csw.securemx.jp (mx-mo-csw1514) id 24A1qjqG003910; Tue, 10 May 2022 10:52:45 +0900
X-Iguazu-Qid: 34tKqc85ajEnMmVoyl
X-Iguazu-QSIG: v=2; s=0; t=1652147564; q=34tKqc85ajEnMmVoyl; m=FJsIshXhcRlbdePv3gtM7h+YGqRqdamPFVtbsucn8fk=
Received: from imx2-a.toshiba.co.jp (imx2-a.toshiba.co.jp [106.186.93.35])
        by relay.securemx.jp (mx-mr1513) id 24A1qiow010902
        (version=TLSv1.2 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
        Tue, 10 May 2022 10:52:44 +0900
From:   Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>, yuji2.ishikawa@toshiba.co.jp,
        Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
Subject: [PATCH 5/9] arm64: dts: visconti: Update the clock providers for ethernet device
Date:   Tue, 10 May 2022 10:52:25 +0900
X-TSB-HOP2: ON
Message-Id: <20220510015229.139818-6-nobuhiro1.iwamatsu@toshiba.co.jp>
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

Remove fixed clock and source common clock for ethernet device.

Signed-off-by: Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
---
 arch/arm64/boot/dts/toshiba/tmpv7708-rm-mbrc.dts |  2 --
 .../boot/dts/toshiba/tmpv7708-visrobo-vrb.dts    |  2 --
 arch/arm64/boot/dts/toshiba/tmpv7708.dtsi        | 16 ++--------------
 3 files changed, 2 insertions(+), 18 deletions(-)

diff --git a/arch/arm64/boot/dts/toshiba/tmpv7708-rm-mbrc.dts b/arch/arm64/boot/dts/toshiba/tmpv7708-rm-mbrc.dts
index 45ddf6f03175..527bb437dd90 100644
--- a/arch/arm64/boot/dts/toshiba/tmpv7708-rm-mbrc.dts
+++ b/arch/arm64/boot/dts/toshiba/tmpv7708-rm-mbrc.dts
@@ -42,8 +42,6 @@ &piether {
 	status = "okay";
 	phy-handle = <&phy0>;
 	phy-mode = "rgmii-id";
-	clocks = <&clk300mhz>, <&clk125mhz>;
-	clock-names = "stmmaceth", "phy_ref_clk";
 
 	mdio0 {
 		#address-cells = <1>;
diff --git a/arch/arm64/boot/dts/toshiba/tmpv7708-visrobo-vrb.dts b/arch/arm64/boot/dts/toshiba/tmpv7708-visrobo-vrb.dts
index 56701e0e1dab..ed7aa7e457b1 100644
--- a/arch/arm64/boot/dts/toshiba/tmpv7708-visrobo-vrb.dts
+++ b/arch/arm64/boot/dts/toshiba/tmpv7708-visrobo-vrb.dts
@@ -42,8 +42,6 @@ &piether {
 	status = "okay";
 	phy-handle = <&phy0>;
 	phy-mode = "rgmii-id";
-	clocks = <&clk300mhz>, <&clk125mhz>;
-	clock-names = "stmmaceth", "phy_ref_clk";
 
 	mdio0 {
 		#address-cells = <1>;
diff --git a/arch/arm64/boot/dts/toshiba/tmpv7708.dtsi b/arch/arm64/boot/dts/toshiba/tmpv7708.dtsi
index 196cda7b5d90..7c80a9434e10 100644
--- a/arch/arm64/boot/dts/toshiba/tmpv7708.dtsi
+++ b/arch/arm64/boot/dts/toshiba/tmpv7708.dtsi
@@ -136,20 +136,6 @@ clk25mhz: clk25mhz {
 		clock-output-names = "clk25mhz";
 	};
 
-	clk125mhz: clk125mhz {
-		compatible = "fixed-clock";
-		clock-frequency = <125000000>;
-		#clock-cells = <0>;
-		clock-output-names = "clk125mhz";
-	};
-
-	clk300mhz: clk300mhz {
-		compatible = "fixed-clock";
-		clock-frequency = <300000000>;
-		#clock-cells = <0>;
-		clock-output-names = "clk300mhz";
-	};
-
 	clk600mhz: clk600mhz {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
@@ -485,6 +471,8 @@ piether: ethernet@28000000 {
 			snps,txpbl = <4>;
 			snps,rxpbl = <4>;
 			snps,tso;
+			clocks = <&pismu TMPV770X_CLK_PIETHER_BUS>, <&pismu TMPV770X_CLK_PIETHER_125M>;
+			clock-names = "stmmaceth", "phy_ref_clk";
 			status = "disabled";
 		};
 
-- 
2.36.0


