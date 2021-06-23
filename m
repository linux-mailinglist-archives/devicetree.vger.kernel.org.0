Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E69DF3B2064
	for <lists+devicetree@lfdr.de>; Wed, 23 Jun 2021 20:41:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229881AbhFWSnu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Jun 2021 14:43:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229822AbhFWSnt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Jun 2021 14:43:49 -0400
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 271D5C06175F
        for <devicetree@vger.kernel.org>; Wed, 23 Jun 2021 11:41:32 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id bb10-20020a17090b008ab029016eef083425so4351453pjb.5
        for <devicetree@vger.kernel.org>; Wed, 23 Jun 2021 11:41:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VGosW2rs/EYJqX206hFqsFUIaq3gYBNN1MYzGGDuweM=;
        b=cZZzfHZ1xLi6jZvJq3l3fBargO4auHk9zd4F5k+s2G0TWZ7tG3q3KKotis2D+9uwW4
         5bAowKW0LUigr5fGIsS4uFAA0TP02rlErDFMYGcwuyMlEvI8COwOHiRcxbV6tdmU74M6
         pQQYH0asKuXP1DNB5ky3Na8AJHxygFp5Uotpo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VGosW2rs/EYJqX206hFqsFUIaq3gYBNN1MYzGGDuweM=;
        b=kN3oKcG3PTRqwaEAf1FEn4TOryTutE0G84bU6W+dax89E8iOHhc00alskilEEzdOqW
         YD3ls/cug4r6MNUy+L97eUEBSs4WGYS/esKbnaGrIs5w44o+3sbax3nGIJXT+JKu84B2
         lHm+FvJ0N9xH9uYdb5gtHVil+VgXxbOYxoOQIIrC8bnFOLieK8N4BTB0w8cdEjTNcs4q
         hta2UFoJ+bfkkNMoczAooYq/YHTY/ZunR1I1YczD4pov51y01a/WTOYeyb4PXp9TjxcV
         fHW70sQCyrnnJApY9HnRPiGMimOG1VL0vePzfmPUyhzNgam18sdqO3pE3zoRNBh5KpaQ
         PMKA==
X-Gm-Message-State: AOAM5323VoDkozKOKMJr8QynLEaMbO6S1WikAxZ31CtrZ/xH4EPrDMQL
        5o/zYrTnfDZjoXDam9JD4JoW3A==
X-Google-Smtp-Source: ABdhPJzI1Dv+BsMm+DAAlHpJN160SV9S+rOgzZripmsdD+vEnHbxJgnuqlht17w0Mh64R19/AsCtHA==
X-Received: by 2002:a17:902:c412:b029:127:958e:79c3 with SMTP id k18-20020a170902c412b0290127958e79c3mr735086plk.27.1624473691648;
        Wed, 23 Jun 2021 11:41:31 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:d440:232:5e25:41f4])
        by smtp.gmail.com with UTF8SMTPSA id h11sm512363pgq.68.2021.06.23.11.41.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Jun 2021 11:41:31 -0700 (PDT)
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Alan Stern <stern@rowland.harvard.edu>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Mathias Nyman <mathias.nyman@intel.com>,
        Felipe Balbi <balbi@kernel.org>
Cc:     linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Michal Simek <michal.simek@xilinx.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Peter Chen <peter.chen@kernel.org>,
        Bastien Nocera <hadess@hadess.net>,
        Stephen Boyd <swboyd@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Ravi Chandra Sadineni <ravisadineni@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v13 1/7] dt-bindings: usb: Add binding for Realtek RTS5411 hub controller
Date:   Wed, 23 Jun 2021 11:41:17 -0700
Message-Id: <20210623114025.v13.1.I248292623d3d0f6a4f0c5bc58478ca3c0062b49a@changeid>
X-Mailer: git-send-email 2.32.0.288.g62a8d224e6-goog
In-Reply-To: <20210623184124.3504047-1-mka@chromium.org>
References: <20210623184124.3504047-1-mka@chromium.org>
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

Changes in v13:
- none

Changes in v12:
- none

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
2.32.0.288.g62a8d224e6-goog

