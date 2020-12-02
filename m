Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2F3FE2CB817
	for <lists+devicetree@lfdr.de>; Wed,  2 Dec 2020 10:07:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387831AbgLBJGX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Dec 2020 04:06:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387718AbgLBJGV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Dec 2020 04:06:21 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DAB6C0613CF
        for <devicetree@vger.kernel.org>; Wed,  2 Dec 2020 01:05:41 -0800 (PST)
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mtr@pengutronix.de>)
        id 1kkO4u-0002XE-Ju; Wed, 02 Dec 2020 10:05:37 +0100
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.92)
        (envelope-from <mtr@dude03.red.stw.pengutronix.de>)
        id 1kkO4t-0013Ui-MB; Wed, 02 Dec 2020 10:05:35 +0100
From:   Michael Tretter <m.tretter@pengutronix.de>
To:     devicetree@vger.kernel.org, michal.simek@xilinx.com
Cc:     robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
        kernel@pengutronix.de, Michael Tretter <m.tretter@pengutronix.de>
Date:   Wed,  2 Dec 2020 10:05:22 +0100
Message-Id: <20201202090522.251607-1-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::39
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
        metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=4.0 tests=AWL,BAYES_00,RDNS_NONE,
        SPF_HELO_NONE,SPF_SOFTFAIL,SUBJ_OBFU_PUNCT_FEW,SUBJ_OBFU_PUNCT_MANY,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.2
Subject: [PATCH] dt-bindings: xlnx,vcu-settings: fix dt_binding_check warnings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

When running make dt_binding_check, the xlnx,vcu-settings binding
triggers the following two warnings:

	'additionalProperties' is a required property

	example-0: vcu@a0041000:reg:0: [0, 2684620800, 0, 4096] is too long

Fix the binding and make the checker happy.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---

Hi,

The xlnx,vcu-settings binding was reviewed [0] before the bot started to
run automated tests on the device tree bindings, but now produces some
warnings. The original patch that introduces the binding is still in
Michal's tree and I am not entirely sure how to handle it, but here is a
patch.

Michael

[0] https://lore.kernel.org/linux-arm-kernel/20200429213659.GA9051@bogus/
---
 .../bindings/soc/xilinx/xlnx,vcu-settings.yaml    | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu-settings.yaml b/Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu-settings.yaml
index 378d0ced43c8..cb245f400287 100644
--- a/Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu-settings.yaml
+++ b/Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu-settings.yaml
@@ -26,9 +26,18 @@ required:
   - compatible
   - reg
 
+additionalProperties: false
+
 examples:
   - |
-    xlnx_vcu: vcu@a0041000 {
-          compatible = "xlnx,vcu-settings", "syscon";
-          reg = <0x0 0xa0041000 0x0 0x1000>;
+    fpga {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        xlnx_vcu: vcu@a0041000 {
+            compatible = "xlnx,vcu-settings", "syscon";
+            reg = <0x0 0xa0041000 0x0 0x1000>;
+        };
     };
+
+...
-- 
2.20.1

