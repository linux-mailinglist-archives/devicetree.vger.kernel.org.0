Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 551C96B03D3
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 11:17:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230379AbjCHKR3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 05:17:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229527AbjCHKR2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 05:17:28 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D23BA6BDA
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 02:17:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1678270644; x=1709806644;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=ea11wll1JJ0Kd7SnJp+LOrRgpzliUwJUS8LkunFigKY=;
  b=V+jyTDv04F2qGWq12m7cK7aHbDBAXDENhL3vPhNrK2RUwth/ISYCNLoa
   2x0nfz6vpxA+Rw6E9I3RX2+aaeuUDZm1jTcJyEnyoA0GxZ3UHIpNCS/Ok
   Kf+Ig/qBk2ZhgKV5Q0BzMPyZGgqBnHw+VlxvQJeMwj3zXzHd5PjBbnzY/
   HK9pwqVy5b1zWnGscUmbvR1GsDlk5Z22D2vOBVm4Q7XHQv4wiZYi4cqRw
   w9X8ouR7ZQumsuYePdSdKjnJiNXzTWKMVqXFawUs21KgtRCuCG6sGzt4S
   YbOdaN/I7GLvIkvh9gwAlABMsw0qJP3KeAIA3OH0P0O1dnl027jVaUjnB
   g==;
X-IronPort-AV: E=Sophos;i="5.98,243,1673910000"; 
   d="scan'208";a="29542284"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 08 Mar 2023 11:17:22 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 08 Mar 2023 11:17:22 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 08 Mar 2023 11:17:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1678270642; x=1709806642;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=ea11wll1JJ0Kd7SnJp+LOrRgpzliUwJUS8LkunFigKY=;
  b=NbP3GfDGxlo9iWVJZloNfqTk4O2dnQQnvE+XpWYjsAjHRfJrhSudi7Ju
   FPkMokJ6lE4/W81mjvn4QSTroJ6ADmV6lyu31/gXFtH/ie2Ffk8JvTJ5a
   67bbQtJ1rnIAM0eT4Wo/PJgQGCk57Yti7qBcDwHiWgvGQptli6jztmdNc
   e3AF7cmTkrjUvAObXJPHL2al67K3YTc8AcZQYQRAR3S91Sq0GXqnc5wzx
   UuN5Z3TUDAWj6LhzlF0uBWJeQol+85djZsNzLwk/bvcbHeGIQh0MNopsB
   W2w7kAS7lapolkfBwvTONgy8ZuB50XHX20WQX7FQ2V7Ehg2d+ftCnsPbv
   g==;
X-IronPort-AV: E=Sophos;i="5.98,243,1673910000"; 
   d="scan'208";a="29542283"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 08 Mar 2023 11:17:22 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 73B49280056;
        Wed,  8 Mar 2023 11:17:22 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] arm64: dts: imx93: add missing #address-cells and #size-cells to i2c nodes
Date:   Wed,  8 Mar 2023 11:17:20 +0100
Message-Id: <20230308101720.2781627-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add them to the SoC .dtsi, so that not every board has to specify them.

Fixes: 1225396fefea ("arm64: dts: imx93: add lpi2c nodes")
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx93.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi b/arch/arm64/boot/dts/freescale/imx93.dtsi
index 0ed405fd381b..cace9bb5c186 100644
--- a/arch/arm64/boot/dts/freescale/imx93.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
@@ -190,6 +190,8 @@ tpm2: pwm@44320000 {
 			lpi2c1: i2c@44340000 {
 				compatible = "fsl,imx93-lpi2c", "fsl,imx7ulp-lpi2c";
 				reg = <0x44340000 0x10000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
 				interrupts = <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX93_CLK_LPI2C1_GATE>,
 					 <&clk IMX93_CLK_BUS_AON>;
@@ -200,6 +202,8 @@ lpi2c1: i2c@44340000 {
 			lpi2c2: i2c@44350000 {
 				compatible = "fsl,imx93-lpi2c", "fsl,imx7ulp-lpi2c";
 				reg = <0x44350000 0x10000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
 				interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX93_CLK_LPI2C2_GATE>,
 					 <&clk IMX93_CLK_BUS_AON>;
@@ -420,6 +424,8 @@ tpm6: pwm@42510000 {
 			lpi2c3: i2c@42530000 {
 				compatible = "fsl,imx93-lpi2c", "fsl,imx7ulp-lpi2c";
 				reg = <0x42530000 0x10000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
 				interrupts = <GIC_SPI 62 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX93_CLK_LPI2C3_GATE>,
 					 <&clk IMX93_CLK_BUS_WAKEUP>;
@@ -430,6 +436,8 @@ lpi2c3: i2c@42530000 {
 			lpi2c4: i2c@42540000 {
 				compatible = "fsl,imx93-lpi2c", "fsl,imx7ulp-lpi2c";
 				reg = <0x42540000 0x10000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
 				interrupts = <GIC_SPI 63 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX93_CLK_LPI2C4_GATE>,
 					 <&clk IMX93_CLK_BUS_WAKEUP>;
@@ -547,6 +555,8 @@ lpuart8: serial@426a0000 {
 			lpi2c5: i2c@426b0000 {
 				compatible = "fsl,imx93-lpi2c", "fsl,imx7ulp-lpi2c";
 				reg = <0x426b0000 0x10000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
 				interrupts = <GIC_SPI 195 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX93_CLK_LPI2C5_GATE>,
 					 <&clk IMX93_CLK_BUS_WAKEUP>;
@@ -557,6 +567,8 @@ lpi2c5: i2c@426b0000 {
 			lpi2c6: i2c@426c0000 {
 				compatible = "fsl,imx93-lpi2c", "fsl,imx7ulp-lpi2c";
 				reg = <0x426c0000 0x10000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
 				interrupts = <GIC_SPI 196 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX93_CLK_LPI2C6_GATE>,
 					 <&clk IMX93_CLK_BUS_WAKEUP>;
@@ -567,6 +579,8 @@ lpi2c6: i2c@426c0000 {
 			lpi2c7: i2c@426d0000 {
 				compatible = "fsl,imx93-lpi2c", "fsl,imx7ulp-lpi2c";
 				reg = <0x426d0000 0x10000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
 				interrupts = <GIC_SPI 197 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX93_CLK_LPI2C7_GATE>,
 					 <&clk IMX93_CLK_BUS_WAKEUP>;
@@ -577,6 +591,8 @@ lpi2c7: i2c@426d0000 {
 			lpi2c8: i2c@426e0000 {
 				compatible = "fsl,imx93-lpi2c", "fsl,imx7ulp-lpi2c";
 				reg = <0x426e0000 0x10000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
 				interrupts = <GIC_SPI 198 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX93_CLK_LPI2C8_GATE>,
 					 <&clk IMX93_CLK_BUS_WAKEUP>;
-- 
2.34.1

