Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0CD734C7A24
	for <lists+devicetree@lfdr.de>; Mon, 28 Feb 2022 21:21:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229704AbiB1USV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Feb 2022 15:18:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229754AbiB1USV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Feb 2022 15:18:21 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B9AE4D9C2
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 12:17:42 -0800 (PST)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1nOmSd-0003aH-1l; Mon, 28 Feb 2022 21:17:35 +0100
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Marek Vasut <marex@denx.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        patchwork-lst@pengutronix.de
Subject: [PATCH v3 4/7] dt-bindings: usb: dwc3-imx8mp: add power domain property
Date:   Mon, 28 Feb 2022 21:17:28 +0100
Message-Id: <20220228201731.3330192-5-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220228201731.3330192-1-l.stach@pengutronix.de>
References: <20220228201731.3330192-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::39
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The USB controllers in the i.MX8MP are located inside the HSIO
power domain. Add the power-domains property to the DT binding
to be able to describe the hardware properly.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 Documentation/devicetree/bindings/usb/fsl,imx8mp-dwc3.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/fsl,imx8mp-dwc3.yaml b/Documentation/devicetree/bindings/usb/fsl,imx8mp-dwc3.yaml
index 974032b1fda0..048a3e4c1b60 100644
--- a/Documentation/devicetree/bindings/usb/fsl,imx8mp-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/fsl,imx8mp-dwc3.yaml
@@ -49,6 +49,9 @@ properties:
       - const: hsio
       - const: suspend
 
+  power-domains:
+    maxItems: 1
+
 # Required child node:
 
 patternProperties:
@@ -65,12 +68,14 @@ required:
   - clocks
   - clock-names
   - interrupts
+  - power-domains
 
 additionalProperties: false
 
 examples:
   - |
     #include <dt-bindings/clock/imx8mp-clock.h>
+    #include <dt-bindings/power/imx8mp-power.h>
     #include <dt-bindings/interrupt-controller/arm-gic.h>
     usb3_0: usb@32f10100 {
       compatible = "fsl,imx8mp-dwc3";
@@ -79,6 +84,7 @@ examples:
                <&clk IMX8MP_CLK_USB_ROOT>;
       clock-names = "hsio", "suspend";
       interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
+      power-domains = <&hsio_blk_ctrl IMX8MP_HSIOBLK_PD_USB>;
       #address-cells = <1>;
       #size-cells = <1>;
       dma-ranges = <0x40000000 0x40000000 0xc0000000>;
-- 
2.30.2

