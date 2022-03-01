Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 375154C8C71
	for <lists+devicetree@lfdr.de>; Tue,  1 Mar 2022 14:20:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233865AbiCANVc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Mar 2022 08:21:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234691AbiCANVa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Mar 2022 08:21:30 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FCA19BB9B
        for <devicetree@vger.kernel.org>; Tue,  1 Mar 2022 05:20:49 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id r10so20517584wrp.3
        for <devicetree@vger.kernel.org>; Tue, 01 Mar 2022 05:20:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pqrs.dk; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=e9I6Gr81p9RgEFrXcG5x2Wrj3Yq74XLrak4Xgl7o68Y=;
        b=ByMoPlOaBOuEhwZX1OE5tsZtqDWMZ+NErAiXaCiAfUE2ntkDEiBAkPM8LpOEh1S2V2
         /PjVAdl6Gy7cDH09xvE3jBHB+mRb77BfXyZtkw3VvALKL4TKo/EvAHmX4eQVHgAZPQwV
         vmb1Z83QwAsaHHaDM9GmJnMwx/uC0G0Xwxwao=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=e9I6Gr81p9RgEFrXcG5x2Wrj3Yq74XLrak4Xgl7o68Y=;
        b=j679Qy2dy9vu/tKahLh7vpK5SfNeKqJq5RSP/clYxzs2q6bJ+fWzqjh97XRYmcnwnA
         M3zYCPtz3V6YficJ1LOYI15gN36jwYIQsrACbgpYEudHkSgyThYkI4T6thVLQpAmWhw6
         T5RK5APr3XgxgZfvvndryRxycdauko/2J5n8fbjYsBYCDE0ESu6oAjsjAAx8DVMTaxRJ
         p2asHHPttszk7IfT985Blqiqx61se2wHjMTswXPu+yE5wOQxGXWQ5aUqVWJUB4TL+Ah/
         8Qvq+IuqzGQhi14JbB/lf9NuL8yoD5F8A9svAEZfZ6q7aYaP1h2XK8qCOdT9vymkL/rI
         gDgg==
X-Gm-Message-State: AOAM533dXBBbF3zjRS9+MwTOoRHFAJjrmFXZSumkbnc/W00mg//Ypis7
        lLmDuLZbpvVPnJOSFgZcAh8+nA==
X-Google-Smtp-Source: ABdhPJy5JugLamchQE82Lczi++biGY20rULCNgTL2PA2mauvLrn3sAdoxDVPL+K0ZcepGPSfetXuLw==
X-Received: by 2002:a5d:5302:0:b0:1ed:e1d2:f0fd with SMTP id e2-20020a5d5302000000b001ede1d2f0fdmr19971115wrv.585.1646140847860;
        Tue, 01 Mar 2022 05:20:47 -0800 (PST)
Received: from capella.. (80.71.142.18.ipv4.parknet.dk. [80.71.142.18])
        by smtp.gmail.com with ESMTPSA id i12-20020adfe48c000000b001ef6eab4c81sm13258492wrm.96.2022.03.01.05.20.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Mar 2022 05:20:47 -0800 (PST)
From:   =?UTF-8?q?Alvin=20=C5=A0ipraga?= <alvin@pqrs.dk>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        =?UTF-8?q?=A0ipraga?= <alsi@bang-olufsen.dk>
Cc:     linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 1/4] dt-bindings: usb: add TUSB320xA Type-C port controller
Date:   Tue,  1 Mar 2022 14:20:05 +0100
Message-Id: <20220301132010.115258-2-alvin@pqrs.dk>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220301132010.115258-1-alvin@pqrs.dk>
References: <20220301132010.115258-1-alvin@pqrs.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
        DKIM_SIGNED,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Alvin Šipraga <alsi@bang-olufsen.dk>

The TUSB320xA is a non-PD Type-C port controller managed over I2C.

Signed-off-by: Alvin Šipraga <alsi@bang-olufsen.dk>
---
 .../devicetree/bindings/usb/ti,tusb320xa.yaml | 78 +++++++++++++++++++
 1 file changed, 78 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/ti,tusb320xa.yaml

diff --git a/Documentation/devicetree/bindings/usb/ti,tusb320xa.yaml b/Documentation/devicetree/bindings/usb/ti,tusb320xa.yaml
new file mode 100644
index 000000000000..a93d53ddd01c
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/ti,tusb320xa.yaml
@@ -0,0 +1,78 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/ti,tusb320xa.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TUSB320xA Type-C port controller DT bindings
+
+description:
+  The Texas Instruments TUSB320xA is a USB Type-C port controller which
+  supports role and plug orientation detection using the CC pins. It is
+  compatible with the USB Type-C Cable and Connector Specification v1.1.
+
+maintainers:
+  - Alvin Šipraga <alsi@bang-olufsen.dk>
+
+properties:
+  compatible:
+    enum:
+      - ti,tusb320la
+      - ti,tusb320ha
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    patternProperties:
+      '^port@':
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          OF graph bindings modelling any "usb-role-switch" or "accessory" mux.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      tcpc@47 {
+        compatible = "ti,tusb320la";
+        reg = <0x47>;
+        interrupt-parent = <&gpio5>;
+        interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
+
+        ports {
+          #address-cells = <1>;
+          #size-cells = <0>;
+
+          port@0 {
+            reg = <0>;
+            typec1_mux: endpoint {
+              remote-endpoint = <&usb_audio_mux1>;
+            };
+          };
+
+          port@1 {
+            reg = <1>;
+            typec1_dr_sw: endpoint {
+              remote-endpoint = <&usbotg1_drd_sw>;
+            };
+          };
+        };
+      };
+    };
-- 
2.35.1

