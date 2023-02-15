Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 156166988C7
	for <lists+devicetree@lfdr.de>; Thu, 16 Feb 2023 00:32:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229536AbjBOXcb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Feb 2023 18:32:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229532AbjBOXca (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Feb 2023 18:32:30 -0500
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC2EE43458
        for <devicetree@vger.kernel.org>; Wed, 15 Feb 2023 15:32:28 -0800 (PST)
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id D5B9F10B;
        Thu, 16 Feb 2023 00:32:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1676503947;
        bh=viuFjVMCzD0U39O19AK5XNjkJmhFKUae+MeCqOsg0io=;
        h=From:To:Cc:Subject:Date:From;
        b=daTjk7StmYo2uX33x0Nn7kHxmXMprdevX7OFYWchv/Is9ZCQlpCByk2fwYJF6hRro
         RjQRjvXdS4ARARSzCtLqDIz26A+cMDFsCjtAi6vrO0tz5ooNoPDxx6X7QmuQnA3u7e
         VIM4/H0+mvfzjXXzQTy2dW9p8l1crUotIHA/BTvI=
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     devicetree@vger.kernel.org, linux-imx@nxp.com,
        kernel@pengutronix.de, Teresa Remmet <t.remmet@phytec.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: [PATCH v2] arm64: dts: freescale: imx8mm-phyboard: Add I2C4 pinmuxing
Date:   Thu, 16 Feb 2023 01:32:26 +0200
Message-Id: <20230215233226.25856-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.39.2
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
Changes since v1:

- Don't set bit 0 as it is reserved
---
 .../dts/freescale/imx8mm-phyboard-polis-rdk.dts     | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-rdk.dts b/arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-rdk.dts
index 4a3df2b77b0b..0b384ad1ea82 100644
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
+			MX8MM_IOMUXC_I2C4_SCL_I2C4_SCL		0x400001c2
+			MX8MM_IOMUXC_I2C4_SDA_I2C4_SDA		0x400001c2
+		>;
+	};
+
 	pinctrl_leds: leds1grp {
 		fsl,pins = <
 			MX8MM_IOMUXC_GPIO1_IO01_GPIO1_IO1	0x16
-- 
Regards,

Laurent Pinchart

