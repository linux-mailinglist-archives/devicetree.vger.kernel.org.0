Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4679239C2B5
	for <lists+devicetree@lfdr.de>; Fri,  4 Jun 2021 23:41:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231580AbhFDVnQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Jun 2021 17:43:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231610AbhFDVnN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Jun 2021 17:43:13 -0400
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7195FC061787
        for <devicetree@vger.kernel.org>; Fri,  4 Jun 2021 14:41:10 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id q16so5328733pls.6
        for <devicetree@vger.kernel.org>; Fri, 04 Jun 2021 14:41:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XlaFEkq/wHNy65Jvh9hblHLJ082mrVP3syH45tj6v+4=;
        b=NDt8RNLIdfawiZEdTDpOeV6A8iiUCNO5h3M1/8rw+ZtfgqVgKe+Gu3WbkfPNS8kn2P
         X20MVMY4h6OFJsHRKHG4lf7qqZGBkMg8PHitC1RAEh+08dlxQtiaOWx0hU0ovuyJMqL1
         62kt2LSybipZtS2xd2dz1sPWgK/z3bSloBfqo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XlaFEkq/wHNy65Jvh9hblHLJ082mrVP3syH45tj6v+4=;
        b=EuDukxujjPPWeg8r4ZJbirtIpxAhV7u/2p6a45EQxIiQW6d7Iwr+5uRbD+0AyX20k/
         634Gcfz0g6LAqChXxlPMdVY7ps76o+UY5+c+TzA3VPS5jpZkut0EtPgE3t5NIiWWVDLT
         OCblNMB4sZKbM8LtGgdQPwgRyO/jVAmo35isGbA8TLwa663we09yZ9CjIxDN9+8cUfvM
         sKswD3UxIyTHeLEKOGMaKYGyzcLCSA4jsXdZ+Jw27pMubANU+D8H5ydd7U30Pzu0j2Ue
         yFc4j1cn9vFyAByiA/VaERCaTL2E1wM9ESvPo+iKue/cPVrWVH+aa7FR3itBPpV5Q/98
         BTwA==
X-Gm-Message-State: AOAM533JMozDFDCLcxO4efe81qAxC4oWjRhtKXCdEHw13nCe5GoH3Cjj
        a5lzliK1UrSDUnGcnkGXMy4fTw==
X-Google-Smtp-Source: ABdhPJzR/L91/+LM5RioB7mN8WPukc+lj8sIGlNoQJmHBEhVm8tzcmoyJTtKfrQberXzIih0/MXqhQ==
X-Received: by 2002:a17:90a:aa14:: with SMTP id k20mr19227560pjq.88.1622842870006;
        Fri, 04 Jun 2021 14:41:10 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:1cfa:4a0b:c513:8c09])
        by smtp.gmail.com with UTF8SMTPSA id q68sm5567348pjq.45.2021.06.04.14.41.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Jun 2021 14:41:09 -0700 (PDT)
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Alan Stern <stern@rowland.harvard.edu>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Mathias Nyman <mathias.nyman@intel.com>
Cc:     Michal Simek <michal.simek@xilinx.com>,
        Ravi Chandra Sadineni <ravisadineni@chromium.org>,
        linux-usb@vger.kernel.org, Bastien Nocera <hadess@hadess.net>,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>,
        devicetree@vger.kernel.org, Peter Chen <peter.chen@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v11 1/5] dt-bindings: usb: Add binding for Realtek RTS5411 hub controller
Date:   Fri,  4 Jun 2021 14:40:57 -0700
Message-Id: <20210604144027.v11.1.I248292623d3d0f6a4f0c5bc58478ca3c0062b49a@changeid>
X-Mailer: git-send-email 2.32.0.rc1.229.g3e70b5a671-goog
In-Reply-To: <20210604214101.3363525-1-mka@chromium.org>
References: <20210604214101.3363525-1-mka@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Realtek RTS5411 is a USB 3.0 hub controller with 4 ports.

This initial version of the binding only describes USB related
aspects of the RTS5411, it does not cover the option of
connecting the controller as an i2c slave.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---

Changes in v11:
- none

Changes in v10:
- none

Changes in v9:
- added Rob's 'Reviewed-by' tag

Changes in v8:
- added entry for 'reg'
- marked 'companion-hub' as required
- changed node name of USB controller to 'usb'

Changes in v7:
- added type ref for 'companion-hub' property

Changes in v6:
- Realtek binding instead of generic onboard_usb_hub
- added 'companion-hub' property
- added reference to 'usb-device.yaml'
- 'fixed' indentation of compatible entries to keep yamllint happy
- added 'additionalProperties' entry
- updated commit message

Changes in v5:
- updated 'title'
- only use standard USB compatible strings
- deleted 'usb_hub' node
- renamed 'usb_controller' node to 'usb-controller'
- removed labels from USB nodes
- added 'vdd-supply' to USB nodes

Changes in v4:
- none

Changes in v3:
- updated commit message
- removed recursive reference to $self
- adjusted 'compatible' definition to support multiple entries
- changed USB controller phandle to be a node

Changes in v2:
- removed 'wakeup-source' and 'power-off-in-suspend' properties
- consistently use spaces for indentation in example

 .../bindings/usb/realtek,rts5411.yaml         | 62 +++++++++++++++++++
 1 file changed, 62 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/realtek,rts5411.yaml

diff --git a/Documentation/devicetree/bindings/usb/realtek,rts5411.yaml b/Documentation/devicetree/bindings/usb/realtek,rts5411.yaml
new file mode 100644
index 000000000000..04ee255eb4f0
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/realtek,rts5411.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: GPL-2.0-only or BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/realtek,rts5411.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Binding for the Realtek RTS5411 USB 3.0 hub controller
+
+maintainers:
+  - Matthias Kaehlcke <mka@chromium.org>
+
+allOf:
+  - $ref: usb-device.yaml#
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - usbbda,5411
+          - usbbda,411
+
+  reg: true
+
+  vdd-supply:
+    description:
+      phandle to the regulator that provides power to the hub.
+
+  companion-hub:
+    $ref: '/schemas/types.yaml#/definitions/phandle'
+    description:
+      phandle to the companion hub on the controller.
+
+required:
+  - companion-hub
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    usb {
+        dr_mode = "host";
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        /* 2.0 hub on port 1 */
+        hub_2_0: hub@1 {
+            compatible = "usbbda,5411";
+            reg = <1>;
+            vdd-supply = <&pp3300_hub>;
+            companion-hub = <&hub_3_0>;
+        };
+
+        /* 3.0 hub on port 2 */
+        hub_3_0: hub@2 {
+            compatible = "usbbda,411";
+            reg = <2>;
+            vdd-supply = <&pp3300_hub>;
+            companion-hub = <&hub_2_0>;
+        };
+    };
-- 
2.32.0.rc1.229.g3e70b5a671-goog

