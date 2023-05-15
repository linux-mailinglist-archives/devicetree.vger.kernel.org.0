Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 85E2D7031DB
	for <lists+devicetree@lfdr.de>; Mon, 15 May 2023 17:51:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240291AbjEOPvQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 May 2023 11:51:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232079AbjEOPvP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 May 2023 11:51:15 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1C801FD5
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 08:51:13 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id D071D80383;
        Mon, 15 May 2023 17:51:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1684165871;
        bh=KvRHGjaOmv+5DB7lt1VgEISRoQ9pBkxjIfQks2+BpPY=;
        h=From:To:Cc:Subject:Date:From;
        b=fEhti8r1IIbAycwhSa4thlrzV3T7eM5g2L7Q9/MVXRGT91VPDO2qtLeJc47zfT+Y8
         wnScNKd/FG8B1r1Nz0vJerujd2VLWuBN5Fz299DeuA5Jok4j9sZ3YKnZixKaBYpwKZ
         Tlzi6kVbN8YegE+2kV3nPsIu4dic95bDhmjqh/HJA72z1SwS+30t7O2zKWVaV+49TR
         kBVQ+IvZRIcbz4eK9D6J5WL1PZ7ohw2nMRD6ufqMRwa4kmEmN5Mr6fDKQRWGmNfvyB
         3REW59MJerrdQG6HcLJ1eJUdSOU0FUQayno9hYWgGUezDpUAa2Hmgp9Cg0960Kv1Zw
         gn55sigYDz/PA==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Conor Dooley <conor+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: imx8mp: Describe PCIe clock generator on DH electronics i.MX8M Plus DHCOM on PDK3
Date:   Mon, 15 May 2023 17:51:02 +0200
Message-Id: <20230515155102.61227-1-marex@denx.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The PDK3 carrier board contains a PCIe clock generator which is used to
supply the PCIe clock lanes. This generator is always on, unless external
CLKREQ signal toggles an output off, but this is handled in hardware. The
generator does however have I2C interface, describe it in DT.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
---
 arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts
index b5e76b992a103..24dc58b3404fb 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts
@@ -23,10 +23,10 @@ chosen {
 		stdout-path = &uart1;
 	};
 
-	clk_pcie: clock-pcie {
+	clk_xtal25: clock-xtal25 {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
-		clock-frequency = <100000000>;
+		clock-frequency = <25000000>;
 	};
 
 	connector {
@@ -203,6 +203,13 @@ eeprom_board: eeprom@54 {
 				pagesize = <16>;
 				reg = <0x54>;
 			};
+
+			pcieclk: clock@6b {
+				compatible = "skyworks,si52144";
+				reg = <0x6b>;
+				clocks = <&clk_xtal25>;
+				#clock-cells = <1>;
+			};
 		};
 
 		i2cmuxed1: i2c@1 {	/* HDMI DDC I2C */
@@ -244,7 +251,7 @@ &flexcan1 {
 };
 
 &pcie_phy {
-	clocks = <&clk_pcie>;
+	clocks = <&pcieclk 1>;
 	clock-names = "ref";
 	fsl,refclk-pad-mode = <IMX8_PCIE_REFCLK_PAD_INPUT>;
 	status = "okay";
-- 
2.39.2

