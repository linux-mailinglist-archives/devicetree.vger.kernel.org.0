Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 95E7543E2F1
	for <lists+devicetree@lfdr.de>; Thu, 28 Oct 2021 16:00:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231136AbhJ1OCo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Oct 2021 10:02:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230508AbhJ1OCn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Oct 2021 10:02:43 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F019C061570
        for <devicetree@vger.kernel.org>; Thu, 28 Oct 2021 07:00:16 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id z200so5062112wmc.1
        for <devicetree@vger.kernel.org>; Thu, 28 Oct 2021 07:00:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=hwlpnlC96Iq4yd/qa1MHN9OndDMbSpFJ5nBOkRygT0Y=;
        b=v7pv9yFdFEbIlIWFU/23dm3MCFkl8dcEEeRSQjwKDYEhnFoP9/1S063RARz44GmDaM
         40KEujEAQO6COS4Rz8mlTArmgDPA3OhB1K5E61MyOzEpzqxBBgVfniWqSoUyYA18VHo3
         pAuhcAVtaJidD75t441nDkL5XG1fxRqhrXKZ1U21rNXagDk/redDafmM7oAyl4xBCuDF
         Lm4VOHYbzxVhgDpWe/jhXEsDLhlWj46LXveTHSjJVfHUv5vFbk1vE3V5zUhcF+BH9fdh
         HFefdkS0jhlXyv2KIiqYy3+/j8UiFC//gGtLbwLyP/hradZcqaftkZzGLhyz6b5CzywF
         XDtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=hwlpnlC96Iq4yd/qa1MHN9OndDMbSpFJ5nBOkRygT0Y=;
        b=Pd2vqKjGlhYEWZTtVYJw8TUJeIRKDa1xR6B7BTdVqYrM9gjU7zcSzpv6dFqLCReMsU
         9OBr5aYzC4P1aIPoLX/Axh2D1wQCtAPlciqqyJXNYO43DJS9iVKmUzcxREI7vjqp1iwg
         +Q7qSl8lwSeEcfPdL4vGdz0UvSU5zxI0ewE+G8jycI0JcR61jd/ysgsdpmXXv7mdUIyQ
         e/O8AzcD4JGzuLj10PDjmHxiPHDcsDs2OfNE0oLZ/S8ffo0qjrtGBHv/zC+ChkNe/HWC
         EoQvrfQCJFQ3fNy6I/xDC6/eUnGc+bKywswTDFeam1pOylXc0XIE8K+BL/s6/wOHzLSO
         /PMA==
X-Gm-Message-State: AOAM533in9mSQbQ+K4qIHyfpKcErQ8CSTRcyEBptcghLdmxlAXmj8XEv
        qJpjFsVOIa9UPf4/pSpUf5NNQg==
X-Google-Smtp-Source: ABdhPJwJ+02NUgidXxf8pb1dMVqiMmu/FPmh0/EQ6EzWDLAPhjrT5qeOq6Kx6tIoctfu2ZLbpqUuIg==
X-Received: by 2002:a05:600c:4f96:: with SMTP id n22mr4773500wmq.168.1635429614704;
        Thu, 28 Oct 2021 07:00:14 -0700 (PDT)
Received: from lmecxl0524.lme.st.com ([80.215.4.29])
        by smtp.gmail.com with ESMTPSA id s3sm6205693wmh.30.2021.10.28.07.00.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Oct 2021 07:00:14 -0700 (PDT)
From:   Etienne Carriere <etienne.carriere@linaro.org>
To:     linux-kernel@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org,
        Sudeep Holla <sudeep.holla@arm.com>,
        Cristian Marussi <cristian.marussi@arm.com>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Etienne Carriere <etienne.carriere@linaro.org>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v8 1/2] dt-bindings: arm: Add OP-TEE transport for SCMI
Date:   Thu, 28 Oct 2021 16:00:08 +0200
Message-Id: <20211028140009.23331-1-etienne.carriere@linaro.org>
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
Changes since v6:
 - Remove maxItems from linaro,optee-channel-id description

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
 .../bindings/firmware/arm,scmi.yaml           | 65 +++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/Documentation/devicetree/bindings/firmware/arm,scmi.yaml b/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
index 5c4c6782e052..eae15df36eef 100644
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
@@ -195,6 +203,12 @@ patternProperties:
         minItems: 1
         maxItems: 2
 
+      linaro,optee-channel-id:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        description:
+          Channel specifier required when using OP-TEE transport and
+          protocol has a dedicated communication channel.
+
     required:
       - reg
 
@@ -226,6 +240,16 @@ else:
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
@@ -340,7 +364,48 @@ examples:
                 reg = <0x11>;
                 #power-domain-cells = <1>;
             };
+        };
+    };
+
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

