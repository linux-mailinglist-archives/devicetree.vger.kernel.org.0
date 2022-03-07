Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 694584CF06A
	for <lists+devicetree@lfdr.de>; Mon,  7 Mar 2022 04:39:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235106AbiCGDj6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 6 Mar 2022 22:39:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235111AbiCGDjy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 6 Mar 2022 22:39:54 -0500
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60A6D52E1D
        for <devicetree@vger.kernel.org>; Sun,  6 Mar 2022 19:39:00 -0800 (PST)
Received: by mail-ot1-x32e.google.com with SMTP id e25-20020a0568301e5900b005b236d5d74fso686193otj.0
        for <devicetree@vger.kernel.org>; Sun, 06 Mar 2022 19:39:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=we3sNOOWMP//sAiq5vC6Ir4YyalDonStuZLXuyqjnSU=;
        b=LIBkUsc+OwxWZRwEnz24ZoTVyUKp3VL1Zd5qhmOQB3W5IL6onrg0ehThFolA4xfwoy
         /lR1hqSuanNcS5oIBpssotYpTvQceBHlnVdxek2gMA9NCgzNDzy30/4Y0vQGgkX5edCD
         rif+AzUawUjL2QK3arFwSaeZfePL5rYksUNfidxJT5oOCUK62k0Q6RrwLVISNT0TYkqT
         aaxGl8OGuv4Gle5aa5qZsYMFHBZNsx4FwSu9bHXRttQe5DA4+DnDHoXt67RAHQFE4KjR
         m35Av770vhP3zLIc83gdBarmJx6i0kBJ9Z3xeRHj3+Svh/91PZvDv7tNharFkMfHyr+5
         HAKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=we3sNOOWMP//sAiq5vC6Ir4YyalDonStuZLXuyqjnSU=;
        b=3yARMSRFhFTYKkUpqiU4XLIPLvEp9tpNK3u1Rb57UN9D3D0n2oCNBBQcXZldApoCRp
         6jrAAYk6HE+aY4v5JiWcjjRK5NPRN8joO7HCLaUWIN8sMeqK1HrHYUJkdTm69ZxW6P0x
         ru8pzmG5gBt2xr/WzrAkScH61YdIM8zoQI/nnHUUsN+3eZVyvyfG6oYOalF8WmnSvkcc
         G8ejgDKh0Pr/b8BUmoa1MaVwl6KbxFEogoyKbEezKKGebem+1DPNf118d4DmN2AlfyD7
         bMVqMUYautGL1tbcNXw8qzpimd2RnMITkhp0VxtXmzIsMj/ODcUqeJxOqae4Wt/aKgE/
         yXcQ==
X-Gm-Message-State: AOAM532Ce7SGvynrrMv17Q/kSTwa9j6ZeeW1BjUB4gujj5bWH7mVX6AY
        CsW69d1UNiEXS6IThV1r6ijglA==
X-Google-Smtp-Source: ABdhPJzYDj/C1Ij1Hbt1m3j3pFMxo5WDxfNI2LEJGTPzWkrV5LTKiwRiP2b7aDeS8f+vd4GoXZ3+Jg==
X-Received: by 2002:a9d:8f6:0:b0:5b2:2a34:adff with SMTP id 109-20020a9d08f6000000b005b22a34adffmr3326100otf.237.1646624339718;
        Sun, 06 Mar 2022 19:38:59 -0800 (PST)
Received: from ripper.. ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
        by smtp.gmail.com with ESMTPSA id o2-20020a05687072c200b000d9ae3e1fabsm5005172oak.12.2022.03.06.19.38.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Mar 2022 19:38:59 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Daniel Scally <djrscally@gmail.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Hans de Goede <hdegoede@redhat.com>
Cc:     linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v4 6/7] dt-bindings: usb: Add binding for fcs,fsa4480
Date:   Sun,  6 Mar 2022 19:40:39 -0800
Message-Id: <20220307034040.1111107-6-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20220307034040.1111107-1-bjorn.andersson@linaro.org>
References: <20220307034040.1111107-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Fairchild/ON Semiconductor FSA4480 Analog Audio switch is used in
USB Type-C configurations for muxing analog audio onto the USB
connector, and as such used to control the SBU signals for altmodes such
as DisplayPort.

Add a binding for this hardware block.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v3:
- None

Changes since v2:
- Picked up Rob's reviewed-by

Changes since v1:
- None

 .../devicetree/bindings/usb/fcs,fsa4480.yaml  | 72 +++++++++++++++++++
 1 file changed, 72 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml

diff --git a/Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml b/Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml
new file mode 100644
index 000000000000..9473f26b0621
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml
@@ -0,0 +1,72 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/usb/fcs,fsa4480.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: ON Semiconductor Analog Audio Switch
+
+maintainers:
+  - Bjorn Andersson <bjorn.andersson@linaro.org>
+
+properties:
+  compatible:
+    enum:
+      - fcs,fsa4480
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  vcc-supply:
+    description: power supply (2.7V-5.5V)
+
+  mode-switch:
+    description: Flag the port as possible handle of altmode switching
+    type: boolean
+
+  orientation-switch:
+    description: Flag the port as possible handler of orientation switching
+    type: boolean
+
+  port:
+    $ref: /schemas/graph.yaml#/properties/port
+    description:
+      A port node to link the FSA4480 to a TypeC controller for the purpose of
+      handling altmode muxing and orientation switching.
+
+required:
+  - compatible
+  - reg
+  - port
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    i2c13 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        fsa4480@42 {
+          compatible = "fcs,fsa4480";
+          reg = <0x42>;
+
+          interrupts-extended = <&tlmm 2 IRQ_TYPE_LEVEL_LOW>;
+
+          vcc-supply = <&vreg_bob>;
+
+          mode-switch;
+          orientation-switch;
+
+          port {
+            fsa4480_ept: endpoint {
+              remote-endpoint = <&typec_controller>;
+            };
+          };
+        };
+    };
+...
-- 
2.33.1

