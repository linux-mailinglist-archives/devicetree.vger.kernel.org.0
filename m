Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B37212E83D1
	for <lists+devicetree@lfdr.de>; Fri,  1 Jan 2021 14:25:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727047AbhAANZg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Jan 2021 08:25:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727005AbhAANZf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Jan 2021 08:25:35 -0500
Received: from yawp.biot.com (yawp.biot.com [IPv6:2a01:4f8:10a:8e::fce2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89335C0613C1
        for <devicetree@vger.kernel.org>; Fri,  1 Jan 2021 05:24:55 -0800 (PST)
Received: from debian-spamd by yawp.biot.com with sa-checked (Exim 4.93)
        (envelope-from <bert@biot.com>)
        id 1kvKQH-00B66S-Sy
        for devicetree@vger.kernel.org; Fri, 01 Jan 2021 14:24:54 +0100
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on yawp
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
        version=3.4.4
Received: from [2a02:578:460c:1:ae1f:6bff:fed1:9ca8] (helo=sumner.biot.com)
        by yawp.biot.com with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.93)
        (envelope-from <bert@biot.com>)
        id 1kvKQ6-00B64j-V0; Fri, 01 Jan 2021 14:24:43 +0100
Received: from bert by sumner.biot.com with local (Exim 4.93)
        (envelope-from <bert@biot.com>)
        id 1kvKQ6-00Bggu-GV; Fri, 01 Jan 2021 14:24:42 +0100
From:   Bert Vermeulen <bert@biot.com>
To:     Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Birger Koblitz <mail@birger-koblitz.de>,
        linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Bert Vermeulen <bert@biot.com>
Subject: [PATCH v3 1/2] dt-bindings: spi: Realtek RTL838x/RTL839x SPI controller
Date:   Fri,  1 Jan 2021 14:24:31 +0100
Message-Id: <20210101132432.2785663-2-bert@biot.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210101132432.2785663-1-bert@biot.com>
References: <20210101132432.2785663-1-bert@biot.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Signed-off-by: Bert Vermeulen <bert@biot.com>
---
 .../bindings/spi/realtek,rtl-spi.yaml         | 36 +++++++++++++++++++
 1 file changed, 36 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/spi/realtek,rtl-spi.yaml

diff --git a/Documentation/devicetree/bindings/spi/realtek,rtl-spi.yaml b/Documentation/devicetree/bindings/spi/realtek,rtl-spi.yaml
new file mode 100644
index 000000000000..0d3f8448c9ab
--- /dev/null
+++ b/Documentation/devicetree/bindings/spi/realtek,rtl-spi.yaml
@@ -0,0 +1,36 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/spi/realtek,rtl-spi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Realtek RTL838x/RTL839x SPI controller
+
+maintainers:
+  - Bert Vermeulen <bert@biot.com>
+  - Birger Koblitz <mail@birger-koblitz.de>
+
+allOf:
+  - $ref: "spi-controller.yaml#"
+
+properties:
+  compatible:
+    const: realtek,rtl-spi
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    spi: spi@1200 {
+        compatible = "realtek,rtl-spi";
+        reg = <0x1200 0x100>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+    };
-- 
2.25.1

