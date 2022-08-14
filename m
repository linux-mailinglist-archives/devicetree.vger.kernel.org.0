Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 947F25926CD
	for <lists+devicetree@lfdr.de>; Mon, 15 Aug 2022 00:18:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229462AbiHNWSh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 14 Aug 2022 18:18:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229459AbiHNWSg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 14 Aug 2022 18:18:36 -0400
Received: from dev.flatmax.com (41.68.233.220.static.exetel.com.au [220.233.68.41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EA5C2675
        for <devicetree@vger.kernel.org>; Sun, 14 Aug 2022 15:18:35 -0700 (PDT)
Received: by dev.flatmax.com (Postfix, from userid 1000)
        id A5E7D3846E8C; Mon, 15 Aug 2022 08:18:30 +1000 (AEST)
From:   Matt Flax <flatmax@flatmax.com>
To:     devicetree@vger.kernel.org
Cc:     robh@kernel.org, broonie@kernel.org, alsa-devel@alsa-project.org,
        Matt Flax <flatmax@flatmax.com>
Subject: [PATCH v3] ASoC: codecs: dt bind. doc for the new TI SRC4392 codec
Date:   Mon, 15 Aug 2022 08:18:28 +1000
Message-Id: <20220814221828.118643-1-flatmax@flatmax.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,KHOP_HELO_FCRDNS,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Signed-off-by: Matt Flax <flatmax@flatmax.com>
---

Notes:
    v3:
    * Renamed to include ti,
    * fixed license to include BSD-2-Clause
    * removed generic description
    * renamed the node in the example
    v2:
    * Changed the maintainer

 .../devicetree/bindings/sound/ti,src4xxx.yaml | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/ti,src4xxx.yaml

diff --git a/Documentation/devicetree/bindings/sound/ti,src4xxx.yaml b/Documentation/devicetree/bindings/sound/ti,src4xxx.yaml
new file mode 100644
index 000000000000..807b9e35b9b9
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/ti,src4xxx.yaml
@@ -0,0 +1,48 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/src4xxx.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Texas Instruments SRC4392 Device Tree Bindings
+
+description: |
+  The SRC4392 is a digital audio codec that can be connected via
+  I2C or SPI. Currently, only I2C bus is supported.
+
+maintainers:
+  - Matt Flax <flatmax@flatmax.com>
+
+allOf:
+  - $ref: name-prefix.yaml#
+
+properties:
+  compatible:
+    const: ti,src4392
+
+  "#sound-dai-cells":
+    const: 0
+
+  reg:
+    maxItems: 1
+
+required:
+  - "#sound-dai-cells"
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        audio-codec@70 {
+            #sound-dai-cells = <0>;
+            compatible = "ti,src4392";
+            reg = <0x70>;
+        };
+    };
+...
-- 
2.34.1

