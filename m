Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DB7B326D345
	for <lists+devicetree@lfdr.de>; Thu, 17 Sep 2020 07:52:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726112AbgIQFwb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Sep 2020 01:52:31 -0400
Received: from lelv0143.ext.ti.com ([198.47.23.248]:40468 "EHLO
        lelv0143.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725267AbgIQFwa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Sep 2020 01:52:30 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08H5qIrD078199;
        Thu, 17 Sep 2020 00:52:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1600321938;
        bh=SICXoOieM2uc9FJrfUuOfTfVBWoYANiwpphFfhvvh2s=;
        h=From:To:CC:Subject:Date;
        b=v+j4O2/BBzai3F030wbUG9FMh2NL3Tnz4ej2u8vmlVXmrVusHc4LTieIk18adEnqa
         91O3rnDA1DMix/22Kzpy3tLjgPRrbAocPGPdPnESGk/tBKBA1ju6D53Md3YMTrSmQP
         p2/etACjp3jaGuM3hbYSZW93+vq8ZJV+CJkaYbYA=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08H5qIPf083732
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 17 Sep 2020 00:52:18 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 17
 Sep 2020 00:52:18 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 17 Sep 2020 00:52:18 -0500
Received: from deskari.lan (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08H5qFku071024;
        Thu, 17 Sep 2020 00:52:16 -0500
From:   Tomi Valkeinen <tomi.valkeinen@ti.com>
To:     <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
CC:     Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Swapnil Kashinath Jakhade <sjakhade@cadence.com>,
        Tomi Valkeinen <tomi.valkeinen@ti.com>
Subject: [PATCHv2] dt-bindings: dp-connector: add binding for DisplayPort connector
Date:   Thu, 17 Sep 2020 08:52:10 +0300
Message-ID: <20200917055210.22868-1-tomi.valkeinen@ti.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add binding for DisplayPort connector. A few notes:

* Similar to hdmi-connector, it has hpd-gpios as an optional property,
  as the HPD could also be handled by, e.g., the DP bridge.

* dp-pwr-supply, which provides 3.3V on DP_PWR pin, is optional, as it
  is not strictly required: standard DP cables do not even have the pin
  connected.

* Connector type. Full size and mini connectors are identical except for
  the connector size and form, so I believe there is no functional need
  for this property. But similar to 'label' property, it might be used
  to present information about the connector to the userspace.

* No eDP. There's really no "eDP connector", as it's always a custom
  made connection between the DP and the DP panel. So possibly there is
  no need for edp-connector binding, but even if there is, I don't want
  to guess what it could look like, and could it be part of the
  dp-connector binding.

* No DP++. I'm not familiar with DP++, but I think it's all handled by
  the DP bridge, and does not need any new properties to the dp-connector.

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
---

Changes in v2: Add connector type.


 .../display/connector/dp-connector.yaml       | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/connector/dp-connector.yaml

diff --git a/Documentation/devicetree/bindings/display/connector/dp-connector.yaml b/Documentation/devicetree/bindings/display/connector/dp-connector.yaml
new file mode 100644
index 000000000000..b5fc3e52899e
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/connector/dp-connector.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/connector/dp-connector.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: DisplayPort Connector
+
+maintainers:
+  - Tomi Valkeinen <tomi.valkeinen@ti.com>
+
+properties:
+  compatible:
+    const: dp-connector
+
+  label: true
+
+  type:
+    enum:
+      - full-size
+      - mini
+
+  hpd-gpios:
+    description: A GPIO line connected to HPD
+    maxItems: 1
+
+  dp-pwr-supply:
+    description: Power supply for the DP_PWR pin
+    maxItems: 1
+
+  port:
+    description: Connection to controller providing DP signals
+
+required:
+  - compatible
+  - type
+  - port
+
+additionalProperties: false
+
+examples:
+  - |
+    connector {
+        compatible = "dp-connector";
+        label = "dp0";
+        type = "full-size";
+
+        port {
+            dp_connector_in: endpoint {
+                remote-endpoint = <&dp_out>;
+            };
+        };
+    };
+
+...
-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

