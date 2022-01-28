Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8431549F7BB
	for <lists+devicetree@lfdr.de>; Fri, 28 Jan 2022 11:59:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347960AbiA1K7S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Jan 2022 05:59:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347971AbiA1K7R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Jan 2022 05:59:17 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1E1EC06173B
        for <devicetree@vger.kernel.org>; Fri, 28 Jan 2022 02:59:17 -0800 (PST)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1nDOyC-0006q4-Lu; Fri, 28 Jan 2022 11:59:08 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1nDOy8-00CxGo-Ul; Fri, 28 Jan 2022 11:59:04 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1nDOy7-001vPs-KV; Fri, 28 Jan 2022 11:59:03 +0100
From:   =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
To:     Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Shawn Guo <shawnguo@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: display: imx: Add fsl,imx21-lcdc docs
Date:   Fri, 28 Jan 2022 11:58:48 +0100
Message-Id: <20220128105849.368438-2-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220128105849.368438-1-u.kleine-koenig@pengutronix.de>
References: <20220128105849.368438-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2387; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=qJjoLH/SqeH200AJXw2O3KmhsfNc+QfPB7i+GBCaI5g=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBh88xerpXLhSvmxZFZ/HEfMyB1vMYATEcC6Qr8xidg 0aecnXOJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCYfPMXgAKCRDB/BR4rcrsCVl8CA CIJoFA7KqDHgpMirgpH5txZIfQcN58L3dZXfjIU+nWwCSkyZYDXPnbxNiOU5DFk9c5RZeegX6o3yQ8 xfZP3zcnuYqPGOhmsjwF8xeJCY0KcZiXbCZIY7G3xhtDjcfMD0ZHMwG+dVfqAfNhSSDpPhynbavxD/ qAR1wGRWVHcgUX8324IAFANFRdD+uZhDUFX7oFZhnQczCil4Mv+vchz1xNYtwXMJUHPUXLKq3vMz/z zES2twDXefb5q7MtdxcMeP4XpdFv7i3wBwtHjgxO3ailDYvYgCLjUrxU5Z7KbcxBd+nDENY/kyEJYj +q8GR2JnNDyDL/uCwJbt5D9N1nPRza
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Marian Cichy <m.cichy@pengutronix.de>

This files documents the device tree for the new imx21-lcdc DRM driver.

Signed-off-by: Marian Cichy <m.cichy@pengutronix.de>
Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 .../bindings/display/imx/fsl,imx21-lcdc.yaml  | 79 +++++++++++++++++++
 1 file changed, 79 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx21-lcdc.yaml

diff --git a/Documentation/devicetree/bindings/display/imx/fsl,imx21-lcdc.yaml b/Documentation/devicetree/bindings/display/imx/fsl,imx21-lcdc.yaml
new file mode 100644
index 000000000000..edf71cfac81c
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/imx/fsl,imx21-lcdc.yaml
@@ -0,0 +1,79 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/imx/fsl,imx21-lcdc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: i.MX21 LCD Controller
+
+maintainers:
+  - Philipp Zabel <p.zabel@pengutronix.de>
+
+properties:
+  compatible:
+    oneOf:
+      - const: fsl,imx21-lcdc
+      - items:
+          - enum:
+              - fsl,imx25-lcdc
+              - fsl,imx27-lcdc
+          - const: fsl,imx21-lcdc
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 3
+
+  clock-names:
+    items:
+      - const: ipg
+      - const: per
+      - const: ahb
+
+  resets:
+    maxItems: 1
+
+  port:
+    type: object
+    description:
+      "Video port for DPI RGB output."
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - port
+
+additionalProperties: false
+
+examples:
+  - |
+    lcdc: lcdc@53fbc000 {
+        compatible = "fsl,imx25-lcdc", "fsl,imx21-lcdc";
+        reg = <0x53fbc000 0x4000>;
+        interrupts = <39>;
+        clocks = <&clks 103>, <&clks 66>, <&clks 49>;
+        clock-names = "ipg", "ahb", "per";
+
+        port {
+             parallel_out: endpoint {
+                 remote-endpoint = <&panel_in>;
+             };
+        };
+
+    };
+
+    panel: panel {
+        compatible = "edt,etm0700g0dh6";
+        power-supply = <&lcd_supply>;
+        backlight = <&bl>;
+
+        port {
+                panel_in: endpoint {
+                        remote-endpoint = <&parallel_out>;
+                };
+        };
+    };
-- 
2.34.1

