Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D275E68005B
	for <lists+devicetree@lfdr.de>; Sun, 29 Jan 2023 18:01:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230247AbjA2RBo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 Jan 2023 12:01:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229617AbjA2RBn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 Jan 2023 12:01:43 -0500
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DB5A6A43
        for <devicetree@vger.kernel.org>; Sun, 29 Jan 2023 09:01:41 -0800 (PST)
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 6E0A7327;
        Sun, 29 Jan 2023 18:01:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1675011699;
        bh=Nr7wHX8nkfFO/cHU7o4Unq5fd3RGLbVdlBjyzJZIqFQ=;
        h=From:To:Cc:Subject:Date:From;
        b=VW8+2GFQ7OCi0EJbysSk6lnVg+520z6qE/q7PLlgZV6S2gmmuCVVP8JCxJqS7Kje5
         RTtpAKEFvjOMxj5zsoQCnAvOJ1Mw8HDbYnmbzCgoiqJAloynd88XEPbtnSPTfy8QDg
         DEYS0MBUhjVmVsJFBUlKBKnqGIPV4Xx6hizRvXDg=
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     devicetree@vger.kernel.org, linux-imx@nxp.com,
        kernel@pengutronix.de, Teresa Remmet <t.remmet@phytec.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: [PATCH] arm64: dts: freescale: imx8mm-phyboard: Add I2C4 pinmuxing
Date:   Sun, 29 Jan 2023 19:01:36 +0200
Message-Id: <20230129170136.14506-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The I2C4 bus is exposed on the camera connector. Add and select the
corresponding pinmux entries and set the default frequency. The device
is left disabled, to be enabled from camera overlays.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../dts/freescale/imx8mm-phyboard-polis-rdk.dts     | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-rdk.dts b/arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-rdk.dts
index 4a3df2b77b0b..17521bb911c2 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-rdk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-rdk.dts
@@ -168,6 +168,12 @@ &gpio5 {
 		"", "ECSPI1_SS0";
 };
 
+&i2c4 {
+	clock-frequency = <400000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c4>;
+};
+
 /* PCIe */
 &pcie0 {
 	assigned-clocks = <&clk IMX8MM_CLK_PCIE1_AUX>,
@@ -336,6 +342,13 @@ MX8MM_IOMUXC_SAI1_RXD6_GPIO4_IO8	0x16
 		>;
 	};
 
+	pinctrl_i2c4: i2c4grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_I2C4_SCL_I2C4_SCL		0x400001c3
+			MX8MM_IOMUXC_I2C4_SDA_I2C4_SDA		0x400001c3
+		>;
+	};
+
 	pinctrl_leds: leds1grp {
 		fsl,pins = <
 			MX8MM_IOMUXC_GPIO1_IO01_GPIO1_IO1	0x16
-- 
Regards,

Laurent Pinchart

