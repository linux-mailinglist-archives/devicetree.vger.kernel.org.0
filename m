Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D512F5A132F
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 16:16:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241191AbiHYOOu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Aug 2022 10:14:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241846AbiHYOOb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Aug 2022 10:14:31 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A280B6D04
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 07:14:19 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <jzi@pengutronix.de>)
        id 1oRDce-0002wr-U6; Thu, 25 Aug 2022 16:14:16 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <jzi@pengutronix.de>)
        id 1oRDce-001ums-2M; Thu, 25 Aug 2022 16:14:16 +0200
Received: from jzi by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <jzi@pengutronix.de>)
        id 1oRDcc-005xwC-0S; Thu, 25 Aug 2022 16:14:14 +0200
From:   Johannes Zink <j.zink@pengutronix.de>
To:     linux-fpga@vger.kernel.org
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Moritz Fischer <mdf@kernel.org>, Wu Hao <hao.wu@intel.com>,
        Xu Yilun <yilun.xu@intel.com>, kernel@pengutronix.de,
        Johannes Zink <j.zink@pengutronix.de>
Subject: [PATCH 04/16] dt-bindings: fpga: machxo2-slave: add lattice,machxo2-slave-i2c compatible
Date:   Thu, 25 Aug 2022 16:13:31 +0200
Message-Id: <20220825141343.1375690-5-j.zink@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220825141343.1375690-1-j.zink@pengutronix.de>
References: <20220825141343.1375690-1-j.zink@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: jzi@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Lattice MachXO2 FPGAs allow reconfiguration over I2C as well as over
SPI. Add the I2C option to the binding as well.

Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
---
 .../bindings/fpga/lattice,machxo2-slave.yaml         | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/fpga/lattice,machxo2-slave.yaml b/Documentation/devicetree/bindings/fpga/lattice,machxo2-slave.yaml
index 03dc134ec7b8..d48d92f27c92 100644
--- a/Documentation/devicetree/bindings/fpga/lattice,machxo2-slave.yaml
+++ b/Documentation/devicetree/bindings/fpga/lattice,machxo2-slave.yaml
@@ -21,10 +21,22 @@ allOf:
             const: lattice,machxo2-slave-spi
     then:
       $ref: /schemas/spi/spi-peripheral-props.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: lattice,machxo2-slave-i2c
+    then:
+      properties:
+        reg:
+          description: I2C address
+          maxItems: 1
+
 properties:
   compatible:
     enum:
       - lattice,machxo2-slave-spi
+      - lattice,machxo2-slave-i2c
 
   program-gpios:
     maxItems: 1
-- 
2.30.2

