Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C95836A556C
	for <lists+devicetree@lfdr.de>; Tue, 28 Feb 2023 10:18:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229983AbjB1JSG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Feb 2023 04:18:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229720AbjB1JSF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Feb 2023 04:18:05 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B93886A4
        for <devicetree@vger.kernel.org>; Tue, 28 Feb 2023 01:18:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1677575884; x=1709111884;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=xtKwWIuJPNNrupQGEV8OtRgIoj1GKM8fafiElxRqYew=;
  b=YFXXomBKfH35V15koZNk6bK19aV0iOwkraBWwI0W2P1YJuAuRhQk7QyC
   gwLAfMqnMQ39i1F4V3IF17826sjgfnvVxm23ltxLQKgrHTBRGdpyQGZxZ
   eS2E7O9vl2grW+u4uVjywh9NoZrtgOUtXZpyzgcA4OeHHDaKHJLjKyamX
   sYuuAvxk0sfQO2RV/wYqcYL6jYUh7QmtDUFeW9M0mKykS16/oxmzzqw5s
   DBmUn/VhxmNhxzrMRDneBvJi7YUVhhl6nb820j5FyQ1dVp6NAcspP0dRP
   2xawXRop1y2RV6TfjIOK4lbz60i650xLvV/ZB7PLC6he18zi0DlQhxPbl
   A==;
X-IronPort-AV: E=Sophos;i="5.98,221,1673910000"; 
   d="scan'208";a="29359346"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 28 Feb 2023 10:18:02 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 28 Feb 2023 10:18:03 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 28 Feb 2023 10:18:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1677575883; x=1709111883;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=xtKwWIuJPNNrupQGEV8OtRgIoj1GKM8fafiElxRqYew=;
  b=dtrm6x61E82bG7dAKNWv0GXWS+HW2duN93KcGAmrbM+0CzdK4NwTndHy
   7OqNYthKfGoIuhEnV43L1f5zfMEkFQ0MKlPcpxS7w4zOiN/843KXpwuvs
   AiSVc30MelYvJXFri7MzPH6s7kPuxS+wpgc2mRgtiVjZsYoVAEV+bqH43
   VUGw1jUYV3UqUVCE8mimXcVtPfHtyN8aMIFwEx1nhQXnOiajblNifCVkR
   C8VR6oWJ9+6CIMrO7POMSq20gHakVplKpbCbxLaP6tO8KsNQo40DKqzkt
   HE1PiSgUzkiA46Rvn+iKTif1odiwxsB2N3BPlpm6+hWFamdwnQGYnpgi6
   w==;
X-IronPort-AV: E=Sophos;i="5.98,221,1673910000"; 
   d="scan'208";a="29359345"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 28 Feb 2023 10:18:02 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 983CD280056;
        Tue, 28 Feb 2023 10:18:02 +0100 (CET)
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
Subject: [PATCH v2 1/1] arm64: dts: imx93: Add FlexSPI support
Date:   Tue, 28 Feb 2023 10:17:57 +0100
Message-Id: <20230228091757.381583-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add FlexSPI node for i.MX93.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
Changes in v2:
* Move 'compatible' and 'reg*' properties to top location

 arch/arm64/boot/dts/freescale/imx93.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi b/arch/arm64/boot/dts/freescale/imx93.dtsi
index 64901ae10b2c..dccbcedf0206 100644
--- a/arch/arm64/boot/dts/freescale/imx93.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
@@ -458,6 +458,21 @@ flexcan2: can@425b0000 {
 				status = "disabled";
 			};
 
+			flexspi1: spi@425e0000 {
+				compatible = "nxp,imx8mm-fspi";
+				reg = <0x425e0000 0x10000>, <0x28000000 0x10000000>;
+				reg-names = "fspi_base", "fspi_mmap";
+				#address-cells = <1>;
+				#size-cells = <0>;
+				interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX93_CLK_FLEXSPI1_GATE>,
+					 <&clk IMX93_CLK_FLEXSPI1_GATE>;
+				clock-names = "fspi_en", "fspi";
+				assigned-clocks = <&clk IMX93_CLK_FLEXSPI1>;
+				assigned-clock-parents = <&clk IMX93_CLK_SYS_PLL_PFD1>;
+				status = "disabled";
+			};
+
 			lpuart7: serial@42690000 {
 				compatible = "fsl,imx93-lpuart", "fsl,imx7ulp-lpuart";
 				reg = <0x42690000 0x1000>;
-- 
2.34.1

