Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 96F1C2765B1
	for <lists+devicetree@lfdr.de>; Thu, 24 Sep 2020 03:10:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726687AbgIXBKT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Sep 2020 21:10:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726466AbgIXBKT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Sep 2020 21:10:19 -0400
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com [IPv6:2607:f8b0:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9395C0613CE
        for <devicetree@vger.kernel.org>; Wed, 23 Sep 2020 18:10:18 -0700 (PDT)
Received: by mail-pf1-x441.google.com with SMTP id z18so833349pfg.0
        for <devicetree@vger.kernel.org>; Wed, 23 Sep 2020 18:10:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rfxM7/I+KfynMolnQ/7xYwDSvDrAFMXPNgmT9bF/6pc=;
        b=BzV1h/oiYBaReYrl2BNiTM1mdBn+EvWoeKawFQOP5VHQtBqrSheGrMhEN+zAFSa/5k
         XiQihU9HJUaXEtM9FYZc7G/skJiwWYlW1T7GRRJ8JHzQT7/7wC4I6gPV6oCWNlX3pcfm
         bXSJq9CGKtF2C9mxyh/JYUGnitKRvdykjMYf0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rfxM7/I+KfynMolnQ/7xYwDSvDrAFMXPNgmT9bF/6pc=;
        b=sz2Y5a/xAL1/FPGhC1QmclE9tTdX5YkFCykRY1/cZT6CcPzVvjXP+V5EVMS+Qckwkj
         1VCIhxTZ5k4BfxgNev3Amkp15DX5VCn5mnyk8Tzy1zqXRdS62RT8yACMG7keOSn5ZuvY
         y7LhLeBL54Q8Yx4pbkx+AZMdBPAcl1ZcULQRl4PH4fN10d1uBIup5dYHTzKY12J2kYra
         OW0so5yHN4qsFDya+b0Dr0PG5yheMw0LHcuT9ekFor7P7BfIUQAyehMl6Xf5ofnwak6n
         X+rsikSj1jga/fF9UQXBHJgzDnzGGqIUR+vYO9zFm5M/Q3aqMqv+KtioBh+S732vFckq
         JEQQ==
X-Gm-Message-State: AOAM532EuSryCJQapo6nvpVIzeZFxp1ZxlEDK00t+qBiLpcHiiUDw0Zr
        HsgtllVSO82nT2f+Wt7xLX/W1g==
X-Google-Smtp-Source: ABdhPJzPtYjeba5CrOvU5m9qU3CaJVwHEuBdgPcw5qhfUMWoc1MRtoCedROx/cRLP8albttSP2c0sQ==
X-Received: by 2002:a65:4984:: with SMTP id r4mr1877304pgs.261.1600909817418;
        Wed, 23 Sep 2020 18:10:17 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:f693:9fff:fef4:e70a])
        by smtp.gmail.com with ESMTPSA id z129sm875711pgb.84.2020.09.23.18.10.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Sep 2020 18:10:16 -0700 (PDT)
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-usb@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        Bastien Nocera <hadess@hadess.net>,
        Ravi Chandra Sadineni <ravisadineni@chromium.org>,
        Peter Chen <peter.chen@nxp.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Alan Stern <stern@rowland.harvard.edu>,
        devicetree@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
        linux-kernel@vger.kernel.org, Matthias Kaehlcke <mka@chromium.org>
Subject: [PATCH v3 1/2] dt-bindings: usb: Add binding for discrete onboard USB hubs
Date:   Wed, 23 Sep 2020 18:10:11 -0700
Message-Id: <20200923180952.v3.1.I248292623d3d0f6a4f0c5bc58478ca3c0062b49a@changeid>
X-Mailer: git-send-email 2.28.0.709.gb0816b6eb0-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Discrete onboard USB hubs (an example for such a hub is the Realtek
RTS5411) need to be powered and may require initialization of other
resources (like GPIOs or clocks) to work properly. This adds a device
tree binding for these hubs.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---

Changes in v3:
- updated commit message
- removed recursive reference to $self
- adjusted 'compatible' definition to support multiple entries
- changed USB controller phandle to be a node

Changes in v2:
- removed 'wakeup-source' and 'power-off-in-suspend' properties
- consistently use spaces for indentation in example

 .../bindings/usb/onboard_usb_hub.yaml         | 54 +++++++++++++++++++
 1 file changed, 54 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/onboard_usb_hub.yaml

diff --git a/Documentation/devicetree/bindings/usb/onboard_usb_hub.yaml b/Documentation/devicetree/bindings/usb/onboard_usb_hub.yaml
new file mode 100644
index 000000000000..c9783da3e75c
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/onboard_usb_hub.yaml
@@ -0,0 +1,54 @@
+# SPDX-License-Identifier: GPL-2.0-only or BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/onboard_usb_hub.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Binding for onboard USB hubs
+
+maintainers:
+  - Matthias Kaehlcke <mka@chromium.org>
+
+properties:
+  compatible:
+    items:
+      - enum:
+        - realtek,rts5411
+      - const: onboard-usb-hub
+
+  vdd-supply:
+    description:
+      phandle to the regulator that provides power to the hub.
+
+required:
+  - compatible
+  - vdd-supply
+
+examples:
+  - |
+    usb_hub: usb-hub {
+        compatible = "realtek,rts5411", "onboard-usb-hub";
+        vdd-supply = <&pp3300_hub>;
+    };
+
+    usb_controller {
+        dr_mode = "host";
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        /* 2.0 hub on port 1 */
+        hub@1 {
+            compatible = "usbbda,5411";
+            reg = <1>;
+            hub = <&usb_hub>;
+        };
+
+        /* 3.0 hub on port 2 */
+        hub@2 {
+            compatible = "usbbda,411";
+            reg = <2>;
+            hub = <&usb_hub>;
+        };
+    };
+
+...
-- 
2.28.0.709.gb0816b6eb0-goog

