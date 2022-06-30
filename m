Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 96666562165
	for <lists+devicetree@lfdr.de>; Thu, 30 Jun 2022 19:40:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234372AbiF3Rjj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jun 2022 13:39:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233863AbiF3Rji (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jun 2022 13:39:38 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53FD21107
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 10:39:37 -0700 (PDT)
Received: from tr.lan (ip-86-49-12-201.bb.vodafone.cz [86.49.12.201])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id B5640842D0;
        Thu, 30 Jun 2022 19:39:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1656610775;
        bh=gLy1//28wUBXNtxNj+UL/N0qEuZeBJdS8jvKgQKkrzg=;
        h=From:To:Cc:Subject:Date:From;
        b=GehRBY2hZ+1ZxMJdt6aAPS7rdeZmtpYLNyLsmGl99OnnGSQk8eyj0KuJB8SodUar8
         MjYISdhtVGLZwaxHD/7f5dDRSIjRXQcM7rgJGSyFEfh6umvkLMYNG1HjwjYNv7e/ql
         LZUv3SScqKClYRgK5cxFqW9NE4ySKmHIYA/Fx+aV0DD98OFq0B8nZgHfYbp+AqeqcF
         ZxJXC3+yS77ELrr+7i3/kPap9OSLjvg5TVtUlCoM0mTkLy+SIjCNOBK/NNhVPgE/4r
         BZMyZOEvOhlQPjZ01hfeDW2/fTFejIoVyBvA7Ez/cCvPLC+vLykOXAO3YqOZW8kxtI
         fXtc4t3uBTBiQ==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: soc: imx8mp-media-blk-ctrl: Add LDB into DT example
Date:   Thu, 30 Jun 2022 19:39:22 +0200
Message-Id: <20220630173922.92296-1-marex@denx.de>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the LDB bridge subnode and add the subnode into the example.
For the subnode to work, the block control must be compatible with
simple-mfd in addition to the existing compatibles.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Paul Elder <paul.elder@ideasonboard.com>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
---
 .../soc/imx/fsl,imx8mp-media-blk-ctrl.yaml    | 54 ++++++++++++++++++-
 1 file changed, 53 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
index b246d8386ba4a..05a19d3229830 100644
--- a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
+++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
@@ -18,11 +18,18 @@ properties:
   compatible:
     items:
       - const: fsl,imx8mp-media-blk-ctrl
+      - const: simple-mfd
       - const: syscon
 
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
 
@@ -64,9 +71,16 @@ properties:
       - const: isp
       - const: phy
 
+  bridge@5c:
+    type: object
+    $ref: "/schemas/display/bridge/fsl,ldb.yaml#"
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
@@ -81,7 +95,7 @@ examples:
     #include <dt-bindings/power/imx8mp-power.h>
 
     media_blk_ctl: blk-ctl@32ec0000 {
-        compatible = "fsl,imx8mp-media-blk-ctrl", "syscon";
+        compatible = "fsl,imx8mp-media-blk-ctrl", "simple-mfd", "syscon";
         reg = <0x32ec0000 0x138>;
         power-domains = <&mediamix_pd>, <&mipi_phy1_pd>, <&mipi_phy1_pd>,
                         <&mediamix_pd>, <&mediamix_pd>, <&mipi_phy2_pd>,
@@ -100,5 +114,43 @@ examples:
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
2.35.1

