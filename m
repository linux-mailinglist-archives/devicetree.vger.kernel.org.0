Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7EBFB2DC940
	for <lists+devicetree@lfdr.de>; Wed, 16 Dec 2020 23:53:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730274AbgLPWv6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Dec 2020 17:51:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727821AbgLPWv6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Dec 2020 17:51:58 -0500
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EC53C061794
        for <devicetree@vger.kernel.org>; Wed, 16 Dec 2020 14:51:18 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id m25so52504329lfc.11
        for <devicetree@vger.kernel.org>; Wed, 16 Dec 2020 14:51:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ddKTn9Xl8/wZrJAUuoOV/T+vWHELgde5+/AZ3jvIKM8=;
        b=v7fuy9AXUD9bM/gJSy7sVcn5R6iY+GXNm5Qeplq9xWYNyCJlqllGAaPpCyTSRed4gT
         aI9+pAPU0ET+GRY3RNqSIGGwFDdi/+0DPMaHyiANwHBrLLY7Zuur6fiSuHyj2W97nK7Q
         cglIiVAOxyNl3us/xxf6Z1OixDcyKrgFR9V/OP2FJUhNCs5rrgK6yLwizX1IYMj9a2xK
         jfE4+o/D0Z1DxylIIB91E1AOfhsAF7aeBycOyzdXeFXkfv7h1NOlVNgHMggFsWHDXvhO
         6qfI2nVMdQzca3d7wiE7mAbLJCeyK+jg/cGcHVtOX0cB9nGnwk9onAzZl8kgK0aRh3o/
         +Gcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ddKTn9Xl8/wZrJAUuoOV/T+vWHELgde5+/AZ3jvIKM8=;
        b=MH0RIIlFC7wb8MrDoYJvsRh5xrGNDgAUL/3/istc4MhNE+A4PcbyN/d1O4QfziFwBP
         BPFPxot2W4HtefYgF/AmVaPr5jkTY7yPP0JqXBysk/61nXH9MVNp6Lmi5oX5Djyd6Ksj
         iniJ0RhzcFFHBfU+DYnHZyQyhJeHF0aZIYLAjV212rXvHAc3nXVcUWJEk1dT+ql8NrEZ
         PvsOuEaKHRbDam9+X6TbfwuKEGPlxwnAUHBZM0VbgKbhmom4pylaeQ0F9EThaW+GrCqq
         kja9zXZKSnMLaAb+wvgeSn6RdeT69HGWpUe2M+pLtZZfovehodyk4G4C87GOCzjbR/+z
         Jdww==
X-Gm-Message-State: AOAM532EzrDMiiARe47+f5olboWCDaHT9Tm5mxBCRUiIgzIbR7A76j9f
        L4vI2RpOQ/dr6juwEu9dI1V7fYDthFprIw==
X-Google-Smtp-Source: ABdhPJx27jni1KGRQhFMz72fraRiUgfdPbegBhHHlXVHzvJhXUFmhLPvdhEoyREDRk5vldOvvd0WXA==
X-Received: by 2002:ac2:4108:: with SMTP id b8mr9652742lfi.544.1608159076440;
        Wed, 16 Dec 2020 14:51:16 -0800 (PST)
Received: from gilgamesh.semihalf.com (193-106-246-138.noc.fibertech.net.pl. [193.106.246.138])
        by smtp.gmail.com with ESMTPSA id v21sm438160ljk.73.2020.12.16.14.51.15
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Dec 2020 14:51:15 -0800 (PST)
From:   Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>
To:     ssantosh@kernel.org, robh+dt@kernel.org, s-anna@ti.com
Cc:     grzegorz.jaszczyk@linaro.org, santosh.shilimkar@oracle.com,
        lee.jones@linaro.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, praneeth@ti.com,
        tony@atomide.com
Subject: [PATCH] dt-bindings: soc: ti: Update TI PRUSS bindings about schemas to include
Date:   Wed, 16 Dec 2020 23:50:27 +0100
Message-Id: <20201216225027.2681-1-grzegorz.jaszczyk@linaro.org>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Now after ti,pruss-intc.yaml and ti,pru-rproc.yaml are merged, include
them in proper property and extend the examples section.

At the occasion extend the allowed property list about dma-ranges.

Signed-off-by: Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>
---
 .../devicetree/bindings/soc/ti/ti,pruss.yaml  | 76 +++++++++++++++++++
 1 file changed, 76 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml b/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml
index 037c51b2f972..dbc62821c60b 100644
--- a/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml
+++ b/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml
@@ -81,6 +81,9 @@ properties:
   ranges:
     maxItems: 1
 
+  dma-ranges:
+    maxItems: 1
+
   power-domains:
     description: |
       This property is as per sci-pm-domain.txt.
@@ -278,6 +281,9 @@ patternProperties:
       that is common to all the PRU cores. This should be represented as an
       interrupt-controller node.
 
+    allOf:
+      - $ref: /schemas/interrupt-controller/ti,pruss-intc.yaml#
+
     type: object
 
   mdio@[a-f0-9]+$:
@@ -299,6 +305,9 @@ patternProperties:
       present on K3 SoCs have additional auxiliary PRU cores with slightly
       different IP integration.
 
+    allOf:
+      - $ref: /schemas/remoteproc/ti,pru-rproc.yaml#
+
     type: object
 
 required:
@@ -371,6 +380,36 @@ examples:
             reg = <0x32000 0x58>;
         };
 
+        pruss_intc: interrupt-controller@20000 {
+            compatible = "ti,pruss-intc";
+            reg = <0x20000 0x2000>;
+            interrupt-controller;
+            #interrupt-cells = <3>;
+            interrupts = <20 21 22 23 24 25 26 27>;
+            interrupt-names = "host_intr0", "host_intr1",
+                              "host_intr2", "host_intr3",
+                              "host_intr4", "host_intr5",
+                              "host_intr6", "host_intr7";
+        };
+
+        pru0: pru@34000 {
+            compatible = "ti,am3356-pru";
+            reg = <0x34000 0x2000>,
+                  <0x22000 0x400>,
+                  <0x22400 0x100>;
+            reg-names = "iram", "control", "debug";
+            firmware-name = "am335x-pru0-fw";
+        };
+
+        pru1: pru@38000 {
+            compatible = "ti,am3356-pru";
+            reg = <0x38000 0x2000>,
+                  <0x24000 0x400>,
+                  <0x24400 0x100>;
+            reg-names = "iram", "control", "debug";
+            firmware-name = "am335x-pru1-fw";
+        };
+
         pruss_mdio: mdio@32400 {
             compatible = "ti,davinci_mdio";
             reg = <0x32400 0x90>;
@@ -425,6 +464,43 @@ examples:
             reg = <0x32000 0x58>;
         };
 
+        pruss1_intc: interrupt-controller@20000 {
+            compatible = "ti,pruss-intc";
+            reg = <0x20000 0x2000>;
+            interrupt-controller;
+            #interrupt-cells = <3>;
+            interrupts = <GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>;
+            interrupt-names = "host_intr0", "host_intr1",
+                              "host_intr2", "host_intr3",
+                              "host_intr4",
+                              "host_intr6", "host_intr7";
+            ti,irqs-reserved = /bits/ 8 <0x20>; /* BIT(5) */
+        };
+
+        pru1_0: pru@34000 {
+            compatible = "ti,am4376-pru";
+            reg = <0x34000 0x3000>,
+                  <0x22000 0x400>,
+                  <0x22400 0x100>;
+            reg-names = "iram", "control", "debug";
+            firmware-name = "am437x-pru1_0-fw";
+        };
+
+        pru1_1: pru@38000 {
+            compatible = "ti,am4376-pru";
+            reg = <0x38000 0x3000>,
+                  <0x24000 0x400>,
+                  <0x24400 0x100>;
+            reg-names = "iram", "control", "debug";
+            firmware-name = "am437x-pru1_1-fw";
+        };
+
         pruss1_mdio: mdio@32400 {
             compatible = "ti,davinci_mdio";
             reg = <0x32400 0x90>;
-- 
2.29.0

