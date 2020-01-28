Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4A60314B539
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2020 14:39:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725997AbgA1Njk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Jan 2020 08:39:40 -0500
Received: from ip-78-45-52-129.net.upcbroadband.cz ([78.45.52.129]:39204 "EHLO
        ixit.cz" rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726299AbgA1Njj (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 28 Jan 2020 08:39:39 -0500
Received: from localhost.localdomain (227.146.230.94.awnet.cz [94.230.146.227])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by ixit.cz (Postfix) with ESMTPSA id 3B079251E7;
        Tue, 28 Jan 2020 14:32:00 +0100 (CET)
From:   David Heidelberg <david@ixit.cz>
To:     linux-iio@vger.kernel.org
Cc:     David Heidelberg <david@ixit.cz>,
        Dmitry Osipenko <digetx@gmail.com>,
        Daniel Baluta <daniel.baluta@nxp.com>,
        Jonathan Cameron <jic23@kernel.org>,
        Hartmut Knaack <knaack.h@gmx.de>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org
Subject: [PATCH v2 1/7] dt-bindings: iio: light: add support for Dyna-Image AL3320A
Date:   Tue, 28 Jan 2020 14:30:46 +0100
Message-Id: <20200128133052.201587-2-david@ixit.cz>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200128133052.201587-1-david@ixit.cz>
References: <20200128133052.201587-1-david@ixit.cz>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This commit add dt-bindings support to al3320a driver and vendor-prefix
dynaimage.
Partly based on unmerged commit:
"iio: Add Dyna-Image AP3223 ambient light and proximity driver"

Signed-off-by: David Heidelberg <david@ixit.cz>
---
 .../bindings/iio/light/al3320a.yaml           | 40 +++++++++++++++++++
 .../devicetree/bindings/vendor-prefixes.yaml  |  2 +
 2 files changed, 42 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/light/al3320a.yaml

diff --git a/Documentation/devicetree/bindings/iio/light/al3320a.yaml b/Documentation/devicetree/bindings/iio/light/al3320a.yaml
new file mode 100644
index 000000000000..05d01df069a7
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/light/al3320a.yaml
@@ -0,0 +1,40 @@
+# SPDX-License-Identifier: (GPL-2.0-only)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/light/al3320a.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Dyna-Image AL3320A sensor
+
+maintainers:
+  - David Heidelberg <david@ixit.cz>
+
+properties:
+  compatible:
+    const: dynaimage,al3320a
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  vdd-supply:
+    description: Regulator that provides power to the sensor
+
+required:
+  - compatible
+  - reg
+  - interrupt
+  - vdd-supply
+
+examples:
+  - |
+    i2c {
+        al3320a@1c {
+            compatible = "dynaimage,al3320a";
+            reg = <0x1c>;
+            vdd-supply = <&vdd_reg>;
+            interrupts = <0 99 4>;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 9cd52d9e1f7f..8d2ebf3d0aa1 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -267,6 +267,8 @@ patternProperties:
     description: Dragino Technology Co., Limited
   "^dserve,.*":
     description: dServe Technology B.V.
+  "^dynaimage,.*":
+    description: Dyna-Image
   "^ea,.*":
     description: Embedded Artists AB
   "^ebs-systart,.*":
-- 
2.25.0

