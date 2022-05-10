Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 52757520ADD
	for <lists+devicetree@lfdr.de>; Tue, 10 May 2022 03:53:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234363AbiEJB5L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 May 2022 21:57:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234357AbiEJB5H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 May 2022 21:57:07 -0400
Received: from mo-csw.securemx.jp (mo-csw1115.securemx.jp [210.130.202.157])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F30D614043B
        for <devicetree@vger.kernel.org>; Mon,  9 May 2022 18:53:11 -0700 (PDT)
Received: by mo-csw.securemx.jp (mx-mo-csw1115) id 24A1qj1Q006273; Tue, 10 May 2022 10:52:45 +0900
X-Iguazu-Qid: 2wGqyLn9T3vbyctJBe
X-Iguazu-QSIG: v=2; s=0; t=1652147564; q=2wGqyLn9T3vbyctJBe; m=JCgZA7eIZwXi42xXttiBqso4BAIt6viVmPzhvQDnw9c=
Received: from imx2-a.toshiba.co.jp (imx2-a.toshiba.co.jp [106.186.93.35])
        by relay.securemx.jp (mx-mr1113) id 24A1qhVO026791
        (version=TLSv1.2 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
        Tue, 10 May 2022 10:52:44 +0900
From:   Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>, yuji2.ishikawa@toshiba.co.jp,
        Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
Subject: [PATCH 3/9] arm64: dts: visconti: Update the clock providers for watchdog timer
Date:   Tue, 10 May 2022 10:52:23 +0900
X-TSB-HOP2: ON
Message-Id: <20220510015229.139818-4-nobuhiro1.iwamatsu@toshiba.co.jp>
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

Remove fixed clock and source common clock for watchdog timer.

Signed-off-by: Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
---
 arch/arm64/boot/dts/toshiba/tmpv7708-rm-mbrc.dts      | 1 -
 arch/arm64/boot/dts/toshiba/tmpv7708-visrobo-vrc.dtsi | 1 -
 arch/arm64/boot/dts/toshiba/tmpv7708.dtsi             | 7 +------
 3 files changed, 1 insertion(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/toshiba/tmpv7708-rm-mbrc.dts b/arch/arm64/boot/dts/toshiba/tmpv7708-rm-mbrc.dts
index 9b0666df6593..45ddf6f03175 100644
--- a/arch/arm64/boot/dts/toshiba/tmpv7708-rm-mbrc.dts
+++ b/arch/arm64/boot/dts/toshiba/tmpv7708-rm-mbrc.dts
@@ -58,7 +58,6 @@ phy0: ethernet-phy@1 {
 
 &wdt {
 	status = "okay";
-	clocks = <&wdt_clk>;
 };
 
 &gpio {
diff --git a/arch/arm64/boot/dts/toshiba/tmpv7708-visrobo-vrc.dtsi b/arch/arm64/boot/dts/toshiba/tmpv7708-visrobo-vrc.dtsi
index 03827ce06ee3..adfe8406c24c 100644
--- a/arch/arm64/boot/dts/toshiba/tmpv7708-visrobo-vrc.dtsi
+++ b/arch/arm64/boot/dts/toshiba/tmpv7708-visrobo-vrc.dtsi
@@ -13,7 +13,6 @@
 
 &wdt {
 	status = "okay";
-	clocks = <&wdt_clk>;
 };
 
 &gpio {
diff --git a/arch/arm64/boot/dts/toshiba/tmpv7708.dtsi b/arch/arm64/boot/dts/toshiba/tmpv7708.dtsi
index 048b5dc7ae18..6050796a1678 100644
--- a/arch/arm64/boot/dts/toshiba/tmpv7708.dtsi
+++ b/arch/arm64/boot/dts/toshiba/tmpv7708.dtsi
@@ -171,12 +171,6 @@ extclk100mhz: extclk100mhz {
 		clock-output-names = "extclk100mhz";
 	};
 
-	wdt_clk: wdt-clk {
-		compatible = "fixed-clock";
-		clock-frequency = <150000000>;
-		#clock-cells = <0>;
-	};
-
 	osc2_clk: osc2-clk {
 		compatible = "fixed-clock";
 		clock-frequency = <20000000>;
@@ -490,6 +484,7 @@ piether: ethernet@28000000 {
 		wdt: wdt@28330000 {
 			compatible = "toshiba,visconti-wdt";
 			reg = <0 0x28330000 0 0x1000>;
+			clocks = <&pismu TMPV770X_CLK_WDTCLK>;
 			status = "disabled";
 		};
 
-- 
2.36.0


