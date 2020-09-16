Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0856426C610
	for <lists+devicetree@lfdr.de>; Wed, 16 Sep 2020 19:31:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727118AbgIPRbr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Sep 2020 13:31:47 -0400
Received: from lelv0142.ext.ti.com ([198.47.23.249]:59126 "EHLO
        lelv0142.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727178AbgIPRbo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Sep 2020 13:31:44 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08GEishS076310;
        Wed, 16 Sep 2020 09:44:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1600267494;
        bh=ASQ/hozXbE9GgVToWrEmeOzPhcOeVJGgS1nLFH5Yokw=;
        h=From:To:CC:Subject:Date;
        b=SHeC/OB3I9XLWY1nkX1yUcWtPqxaX4HFX8e5TrowBDjnG4yP6gd6dN1c9CUcikNw/
         Y44cPt0HQLH4egda2dMSf6wNm8baHW3FtIr8nMJ41QYo+HuDk5eWWqEcJABuj3KZvD
         TEA1lLpElGv6ywL6jWnMznKPC4MMUjSWfUb6BgKc=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08GEisco068554;
        Wed, 16 Sep 2020 09:44:54 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 16
 Sep 2020 09:44:51 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 16 Sep 2020 09:44:51 -0500
Received: from deskari.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08GEim8t129310;
        Wed, 16 Sep 2020 09:44:49 -0500
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
Subject: [PATCH] dt-bindings: dp-connector: add binding for DisplayPort connector
Date:   Wed, 16 Sep 2020 17:44:40 +0300
Message-ID: <20200916144440.233714-1-tomi.valkeinen@ti.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add binding for DisplayPort connector. A few notes:

* Similar to hdmi-connector, it has hpd-gpios as an optional property,
  as the HPD could also be handled by, e.g., the DP bridge.

* dp-pwr-supply, which provides 3.3V on DP_PWR pin, is optional, as it
  is not strictly required: standard DP cables do not even have the pin
  connected.

* No property for the connector type. Full size and mini connectors are
  identical except for the connector size and form, so I believe there
  is no need to include the type in the bindings.

* No eDP. There's really no "eDP connector", as it's always a custom
  made connection between the DP and the DP panel. So possibly there is
  no need for edp-connector binding, but even if there is, I don't want
  to guess what it could look like, and could it be part of the
  dp-connector binding.

* No DP++. I'm not familiar with DP++, but I think it's all handled by
  the DP bridge, and does not need any new properties to the dp-connector.

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
---
 .../display/connector/dp-connector.yaml       | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/connector/dp-connector.yaml

diff --git a/Documentation/devicetree/bindings/display/connector/dp-connector.yaml b/Documentation/devicetree/bindings/display/connector/dp-connector.yaml
new file mode 100644
index 000000000000..983be1fe43f0
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/connector/dp-connector.yaml
@@ -0,0 +1,48 @@
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
+  - port
+
+additionalProperties: false
+
+examples:
+  - |
+    connector {
+        compatible = "dp-connector";
+        label = "dp0";
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

