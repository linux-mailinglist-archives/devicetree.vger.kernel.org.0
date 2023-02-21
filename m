Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B50469E35C
	for <lists+devicetree@lfdr.de>; Tue, 21 Feb 2023 16:28:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229945AbjBUP2W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Feb 2023 10:28:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234052AbjBUP2V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Feb 2023 10:28:21 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F536206BE
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 07:28:19 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id B5A22859CE;
        Tue, 21 Feb 2023 16:28:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1676993297;
        bh=ANn3mFpd0bVy8UAv8zpHMsk4B9Fixg9mZtHZFbOnYOA=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=rP77max0ySobSFEIzrQJXslw5BHsr+u0sc7MV4eQY36KXfxMw547FF7dOalNe0vPV
         o1f7+1WAwkrKIgrqWWXHhkvnN6IPAYaZqHOj8YXcXuKLiV6aFgtP69NIgrvoGNNHC/
         GJaUj1GuxaK8RwD/uAWJexmzPK6ADc/r3E6mhkc6Q4s5oJl9nrXNdjEBbELpGaetv2
         QokPmjQhE92+axVmWrJTw20VQEEK/UhXNiRrDO/mRyIC7NrRHkHLW5lRWy/Qn61SPr
         kZd8jSnaQX3zqH+l19YJW2DcIwNankkN1utfGEOiQGp2VtzBwedlDtPSvFXJqkUFpx
         HRwuTG+ZKv/jQ==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Liu Ying <victor.liu@nxp.com>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v3 2/4] dt-bindings: soc: imx8mp-media-blk-ctrl: Add LDB subnode into schema and example
Date:   Tue, 21 Feb 2023 16:28:02 +0100
Message-Id: <20230221152804.6061-2-marex@denx.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230221152804.6061-1-marex@denx.de>
References: <20230221152804.6061-1-marex@denx.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the LDB bridge subnode and add the subnode into the example.
For the subnode to work, the block control must scan its subnodes and
bind drivers to them, do not misuse either simple-bus or simple-mfd
here.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Liu Ying <victor.liu@nxp.com>
Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Paul Elder <paul.elder@ideasonboard.com>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Richard Cochran <richardcochran@gmail.com>
Cc: Richard Zhu <hongxing.zhu@nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
---
V2: Add RB from Liu
V3: - Update commit subject and drop space before fullstop.
    - Add RB from Krzysztof
---
 .../soc/imx/fsl,imx8mp-media-blk-ctrl.yaml    | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
index a0f7c73510d04..f092916dc8594 100644
--- a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
+++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
@@ -23,6 +23,12 @@ properties:
   reg:
     maxItems: 1
 
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 1
+
   '#power-domain-cells':
     const: 1
 
@@ -78,9 +84,16 @@ properties:
       - const: isp1
       - const: dwe
 
+  bridge@5c:
+    type: object
+    $ref: /schemas/display/bridge/fsl,ldb.yaml#
+    unevaluatedProperties: false
+
 required:
   - compatible
   - reg
+  - '#address-cells'
+  - '#size-cells'
   - '#power-domain-cells'
   - power-domains
   - power-domain-names
@@ -114,5 +127,43 @@ examples:
         clock-names = "apb", "axi", "cam1", "cam2", "disp1", "disp2",
                       "isp", "phy";
         #power-domain-cells = <1>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        bridge@5c {
+            compatible = "fsl,imx8mp-ldb";
+            clocks = <&clk IMX8MP_CLK_MEDIA_LDB>;
+            clock-names = "ldb";
+            reg = <0x5c 0x4>, <0x128 0x4>;
+            reg-names = "ldb", "lvds";
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+
+                    ldb_from_lcdif2: endpoint {
+                        remote-endpoint = <&lcdif2_to_ldb>;
+                    };
+                };
+
+                port@1 {
+                    reg = <1>;
+
+                    ldb_lvds_ch0: endpoint {
+                        remote-endpoint = <&ldb_to_lvdsx4panel>;
+                    };
+                };
+
+                port@2 {
+                    reg = <2>;
+
+                    ldb_lvds_ch1: endpoint {
+                    };
+                };
+            };
+        };
     };
 ...
-- 
2.39.1

