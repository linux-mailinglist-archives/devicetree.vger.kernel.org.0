Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 445D42AF065
	for <lists+devicetree@lfdr.de>; Wed, 11 Nov 2020 13:18:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726504AbgKKMSM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Nov 2020 07:18:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726384AbgKKMRu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Nov 2020 07:17:50 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82A9CC0613D4
        for <devicetree@vger.kernel.org>; Wed, 11 Nov 2020 04:17:47 -0800 (PST)
Received: from heimdall.vpn.pengutronix.de ([2001:67c:670:205:1d::14] helo=blackshift.org)
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <mkl@pengutronix.de>)
        id 1kcp4K-0004sr-KC; Wed, 11 Nov 2020 13:17:44 +0100
From:   Marc Kleine-Budde <mkl@pengutronix.de>
To:     kernel@pengutronix.de
Cc:     Marc Kleine-Budde <mkl@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Oleksij Rempel <o.rempel@pengutronix.de>,
        devicetree@vger.kernel.org
Subject: [PATCH 2/8] dt-bindings: can: fsl,flexcan.yaml: fix fsl,stop-mode
Date:   Wed, 11 Nov 2020 13:17:12 +0100
Message-Id: <20201111121718.1552402-2-mkl@pengutronix.de>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201111121718.1552402-1-mkl@pengutronix.de>
References: <20201111121718.1552402-1-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:205:1d::14
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The fsl,stop-mode property is a phandle-array and should consist of one phandle
and two 32 bit integers, e.g.:

    fsl,stop-mode = <&gpr 0x34 28>;

This patch fixes the following errors, which shows up during a dtbs_check:

arch/arm/boot/dts/imx6dl-apf6dev.dt.yaml: can@2090000: fsl,stop-mode: [[1, 52, 28]] is too short
    From schema: Documentation/devicetree/bindings/net/can/fsl,flexcan.yaml

Reported-by: Rob Herring <robh+dt@kernel.org>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: devicetree@vger.kernel.org
Fixes: e5ab9aa7e49b ("dt-bindings: can: flexcan: convert fsl,*flexcan bindings to yaml")
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 .../devicetree/bindings/net/can/fsl,flexcan.yaml      | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/can/fsl,flexcan.yaml b/Documentation/devicetree/bindings/net/can/fsl,flexcan.yaml
index 04127714e704..7eca1bf034e6 100644
--- a/Documentation/devicetree/bindings/net/can/fsl,flexcan.yaml
+++ b/Documentation/devicetree/bindings/net/can/fsl,flexcan.yaml
@@ -86,11 +86,12 @@ properties:
       req_bit is the bit offset of CAN stop request.
     $ref: /schemas/types.yaml#/definitions/phandle-array
     items:
-      - description: The 'gpr' is the phandle to general purpose register node.
-      - description: The 'req_gpr' is the gpr register offset of CAN stop request.
-        maximum: 0xff
-      - description: The 'req_bit' is the bit offset of CAN stop request.
-        maximum: 0x1f
+      items:
+        - description: The 'gpr' is the phandle to general purpose register node.
+        - description: The 'req_gpr' is the gpr register offset of CAN stop request.
+          maximum: 0xff
+        - description: The 'req_bit' is the bit offset of CAN stop request.
+          maximum: 0x1f
 
   fsl,clk-source:
     description: |
-- 
2.28.0

