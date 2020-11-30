Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3C0F12C8347
	for <lists+devicetree@lfdr.de>; Mon, 30 Nov 2020 12:32:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726463AbgK3Lb2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Nov 2020 06:31:28 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:38696 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726298AbgK3Lb2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Nov 2020 06:31:28 -0500
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0AUBTZ7S071705;
        Mon, 30 Nov 2020 05:29:35 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1606735775;
        bh=9eVVrcPHVKYHIwRVICkrJQ0TOFsgS1/qtJ65d3RGgdI=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=S/O/NbUuxZYSG2FYRRDobAI3S2pnQfZSzWYdfhmvZ5Lh6vKjzdfMuMMmZbeBdy0ty
         /hZ+KjQ+2MxYH6jkSdtN6IBHj7gL+f95X+nkxAqWgl3+m2UoJHI6q/CTohwDnkCTMD
         pHKO0iuOuKUtOzl+hm42nZAip4xh1O769y4AN8vM=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0AUBTYbQ030432
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 30 Nov 2020 05:29:35 -0600
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 30
 Nov 2020 05:29:34 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 30 Nov 2020 05:29:34 -0600
Received: from deskari.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0AUBTSFY047293;
        Mon, 30 Nov 2020 05:29:31 -0600
From:   Tomi Valkeinen <tomi.valkeinen@ti.com>
To:     <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>
CC:     Nikhil Devshatwar <nikhil.nd@ti.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        <ville.syrjala@linux.intel.com>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Daniel Vetter <daniel@ffwll.ch>,
        Swapnil Kashinath Jakhade <sjakhade@cadence.com>,
        Sekhar Nori <nsekhar@ti.com>,
        Tomi Valkeinen <tomi.valkeinen@ti.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: [PATCH v4 1/2] dt-bindings: dp-connector: add binding for DisplayPort connector
Date:   Mon, 30 Nov 2020 13:29:18 +0200
Message-ID: <20201130112919.241054-2-tomi.valkeinen@ti.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201130112919.241054-1-tomi.valkeinen@ti.com>
References: <20201130112919.241054-1-tomi.valkeinen@ti.com>
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
  made connection between the DP and the DP panel, although the eDP spec
  does offer a few suggested pin setups. So possibly there is no need for
  edp-connector binding, but even if there is, I don't want to guess what
  it could look like, and could it be part of the dp-connector binding.

* No DP++. I'm not familiar with DP++. DP++ might need an i2c bus added
  to the bindings.

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../display/connector/dp-connector.yaml       | 56 +++++++++++++++++++
 1 file changed, 56 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/connector/dp-connector.yaml

diff --git a/Documentation/devicetree/bindings/display/connector/dp-connector.yaml b/Documentation/devicetree/bindings/display/connector/dp-connector.yaml
new file mode 100644
index 000000000000..1c17d60e7760
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/connector/dp-connector.yaml
@@ -0,0 +1,56 @@
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
+    $ref: /schemas/graph.yaml#/properties/port
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

