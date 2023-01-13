Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD7E5669386
	for <lists+devicetree@lfdr.de>; Fri, 13 Jan 2023 10:57:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241062AbjAMJ5p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Jan 2023 04:57:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241047AbjAMJ5J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Jan 2023 04:57:09 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51E306A0EC
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 01:54:20 -0800 (PST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <m.tretter@pengutronix.de>)
        id 1pGGlK-0003cp-BO; Fri, 13 Jan 2023 10:54:14 +0100
From:   Michael Tretter <m.tretter@pengutronix.de>
Date:   Fri, 13 Jan 2023 10:54:14 +0100
Subject: [PATCH v2 08/16] ARM: dts: imx7d: add node for PXP
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230112-imx-pxp-v2-8-e2281da1db55@pengutronix.de>
References: <20230112-imx-pxp-v2-0-e2281da1db55@pengutronix.de>
In-Reply-To: <20230112-imx-pxp-v2-0-e2281da1db55@pengutronix.de>
To:     linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Michael Tretter <m.tretter@pengutronix.de>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Fabio Estevam <festevam@gmail.com>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        kernel@pengutronix.de, linux-imx@nxp.com,
        linux-arm-kernel@lists.infradead.org
X-Mailer: b4 0.11.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::54
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The i.MX7d contains a Pixel Pipeline in version 3.0. Add the device tree
node to make it available.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changelog

v2:

- fix alignment
---
 arch/arm/boot/dts/imx7d.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/boot/dts/imx7d.dtsi b/arch/arm/boot/dts/imx7d.dtsi
index 7ceb7c09f7ad..4b94b8afb55d 100644
--- a/arch/arm/boot/dts/imx7d.dtsi
+++ b/arch/arm/boot/dts/imx7d.dtsi
@@ -165,6 +165,15 @@ pcie_phy: pcie-phy@306d0000 {
 		  reg = <0x306d0000 0x10000>;
 		  status = "disabled";
 	};
+
+	pxp: pxp@30700000 {
+		compatible = "fsl,imx7d-pxp";
+		reg = <0x30700000 0x10000>;
+		interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&clks IMX7D_PXP_CLK>;
+		clock-names = "axi";
+	};
 };
 
 &aips3 {

-- 
2.30.2
