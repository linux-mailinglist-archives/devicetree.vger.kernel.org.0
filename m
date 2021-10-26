Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 08F4843B56A
	for <lists+devicetree@lfdr.de>; Tue, 26 Oct 2021 17:21:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235777AbhJZPYM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Oct 2021 11:24:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231223AbhJZPYL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Oct 2021 11:24:11 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E363FC061745
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 08:21:47 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id s19so19830653wra.2
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 08:21:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=lE1Jf5RZ999eTUD2tditSChMc+wv5UffQMX7augoGDc=;
        b=Gxi0dprOu/xak4Wsfrj7Z2x5nZPVFxmmEPHtTlmkhyzBqPuPtnF7MbQSx4e50VRAJg
         x6yU6VOQ+M/vGCW/OTp22DOWetmbl59OLLU+oClCk4wkboxA21D9hWKjKOevmxxzUXa/
         e7xDrZoLjUQWHLnSMdHaKla+fJTDuvpbSiHxfLGQ9D+rH+aWFZvW9/9PPnJqaKSeTuye
         U409+Y1iee+vk3mWxZP88aRg/s394fandclCdVkXrGfbtWg0j+tuUjgxPOwG6woqxRg9
         OoN9grfz3ALBJPbPovIaSV320PyhkaPvWMRuqlkmd0EaBhIJ8jfBFAvt35rvT5lVMaH6
         l1OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=lE1Jf5RZ999eTUD2tditSChMc+wv5UffQMX7augoGDc=;
        b=6TkRQ85wRXg+z+b/dsGWjU0jooAucvBOIta2oPmcRixGh3+6HmdlVg6BQulpQ2rV3j
         3peqZKQTlwMD9bVORShXjurKMZKELSE2KW6mt5kSrJguV0OHonEOX5Xf1QdRQwBhy0uT
         UKCm4krHQ5MdRIq6yCWQaMKr46k0SeEbcv90P93Nzh9aBuqRF5+HJm0lbfdJuu9prNbP
         unpSD6CYfexlHdVO3gLDMLIglB8oa8sMvEmDqntY0hR2CqA0QRLBG5XOJ+ytt19YlLpg
         lbKqCkUyzMlgNL7aecMUQ7E6BUdA0W/19w4rBOIECoKvwNGGRrqYkUdcp5bBcHA9EaJD
         E5SA==
X-Gm-Message-State: AOAM531yXkN217Ww9fEDc+SKo9raPKHILZSEX7lt8UgYiUCLo4nV/HCq
        b0n3h760Co1gfgtfqLgDOnZ20w==
X-Google-Smtp-Source: ABdhPJwtLthLymxJDiZ/cGcx2Z7IgdUx/Ak1EtGQIN/GBB3A1Eg/54k58+T2z4mumRrRmoWH4Q5MAQ==
X-Received: by 2002:adf:ca09:: with SMTP id o9mr31956782wrh.303.1635261706475;
        Tue, 26 Oct 2021 08:21:46 -0700 (PDT)
Received: from lmecxl0524.lme.st.com ([2a04:cec0:1008:8c94:50ee:a5d1:4a7:ad6])
        by smtp.gmail.com with ESMTPSA id o11sm27934740wry.0.2021.10.26.08.21.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Oct 2021 08:21:45 -0700 (PDT)
From:   Etienne Carriere <etienne.carriere@linaro.org>
To:     linux-kernel@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org,
        Sudeep Holla <sudeep.holla@arm.com>,
        Cristian Marussi <cristian.marussi@arm.com>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Etienne Carriere <etienne.carriere@linaro.org>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v6 1/2] dt-bindings: arm: Add OP-TEE transport for SCMI
Date:   Tue, 26 Oct 2021 17:21:27 +0200
Message-Id: <20211026152128.5834-1-etienne.carriere@linaro.org>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Introduce compatible "linaro,scmi-optee" for SCMI transport channel
based on an OP-TEE service invocation. The compatible mandates a
channel ID defined with property "linaro,optee-channel-id".

Cc: devicetree@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Etienne Carriere <etienne.carriere@linaro.org>
---
No change since v5

Changes since v4:
 - Fix sram node name in DTS example: s/-shm-/-sram-/

Changes since v3:
 - Add description for linaro,optee-channel-id in patternProperties
   specifying protocol can optionaly define a dedicated channel id.
 - Fix DTS example (duplicated phandles issue, subnodes ordering)
 - Fix typo in DTS example and description comments.

Changes since v2:
 - Define mandatory property linaro,optee-channel-id
 - Rebased on yaml description file

Changes since v1:
 - Removed modification regarding mboxes property description.
---
 .../bindings/firmware/arm,scmi.yaml           | 66 +++++++++++++++++++
 1 file changed, 66 insertions(+)

diff --git a/Documentation/devicetree/bindings/firmware/arm,scmi.yaml b/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
index 5c4c6782e052..d09ebc80e713 100644
--- a/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
+++ b/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
@@ -38,6 +38,9 @@ properties:
                      The virtio transport only supports a single device.
         items:
           - const: arm,scmi-virtio
+      - description: SCMI compliant firmware with OP-TEE transport
+        items:
+          - const: linaro,scmi-optee
 
   interrupts:
     description:
@@ -83,6 +86,11 @@ properties:
     description:
       SMC id required when using smc or hvc transports
 
+  linaro,optee-channel-id:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Channel specifier required when using OP-TEE transport.
+
   protocol@11:
     type: object
     properties:
@@ -195,6 +203,13 @@ patternProperties:
         minItems: 1
         maxItems: 2
 
+      linaro,optee-channel-id:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        description:
+          Channel specifier required when using OP-TEE transport and
+          protocol has a dedicated communication channel.
+        maxItems: 1
+
     required:
       - reg
 
@@ -226,6 +241,16 @@ else:
       - arm,smc-id
       - shmem
 
+  else:
+    if:
+      properties:
+        compatible:
+          contains:
+            const: linaro,scmi-optee
+    then:
+      required:
+        - linaro,optee-channel-id
+
 examples:
   - |
     firmware {
@@ -340,7 +365,48 @@ examples:
                 reg = <0x11>;
                 #power-domain-cells = <1>;
             };
+        };
+    };
 
+  - |
+    firmware {
+        scmi {
+            compatible = "linaro,scmi-optee";
+            linaro,optee-channel-id = <0>;
+
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            scmi_dvfs1: protocol@13 {
+                reg = <0x13>;
+                linaro,optee-channel-id = <1>;
+                shmem = <&cpu_optee_lpri0>;
+                #clock-cells = <1>;
+            };
+
+            scmi_clk0: protocol@14 {
+                reg = <0x14>;
+                #clock-cells = <1>;
+            };
+        };
+    };
+
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        sram@51000000 {
+            compatible = "mmio-sram";
+            reg = <0x0 0x51000000 0x0 0x10000>;
+
+            #address-cells = <1>;
+            #size-cells = <1>;
+            ranges = <0 0x0 0x51000000 0x10000>;
+
+            cpu_optee_lpri0: optee-sram-section@0 {
+                compatible = "arm,scmi-shmem";
+                reg = <0x0 0x80>;
+            };
         };
     };
 
-- 
2.17.1

