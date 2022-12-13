Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C851864B922
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 17:01:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235645AbiLMQB3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 11:01:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235845AbiLMQB0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 11:01:26 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1DD7FD7
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 08:01:25 -0800 (PST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1p57iU-0006gU-OD; Tue, 13 Dec 2022 17:01:14 +0100
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Richard Zhu <hongxing.zhu@nxp.com>
Cc:     NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        marcel.ziswiler@toradex.com, marex@denx.de, tharvey@gateworks.com,
        alexander.stein@ew.tq-group.com, richard.leitner@linux.dev,
        lukas@mntre.com, patchwork-lst@pengutronix.de,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/4] dt-bindings: soc: imx8mp-hsio-blk-ctrl: add clock cells
Date:   Tue, 13 Dec 2022 17:01:09 +0100
Message-Id: <20221213160112.1900410-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::28
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The HSIO blk-ctrl has a internal PLL, which can be used as a reference
clock for the PCIe PHY. Add clock-cells to the binding to allow the
driver to expose this PLL.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 .../devicetree/bindings/soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml
index c29181a9745b..1cc7c2bdf2bb 100644
--- a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml
+++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml
@@ -39,6 +39,9 @@ properties:
       - const: pcie
       - const: pcie-phy
 
+  '#clock-cells':
+    const: 1
+
   clocks:
     minItems: 2
     maxItems: 2
@@ -85,4 +88,5 @@ examples:
         power-domain-names = "bus", "usb", "usb-phy1",
                              "usb-phy2", "pcie", "pcie-phy";
         #power-domain-cells = <1>;
+        #clock-cells = <0>;
     };
-- 
2.30.2

