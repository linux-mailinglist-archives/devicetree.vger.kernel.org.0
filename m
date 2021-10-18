Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 26AA94317A1
	for <lists+devicetree@lfdr.de>; Mon, 18 Oct 2021 13:41:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229569AbhJRLnZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Oct 2021 07:43:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231220AbhJRLnZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Oct 2021 07:43:25 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7CD2AC061714
        for <devicetree@vger.kernel.org>; Mon, 18 Oct 2021 04:41:14 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id u8-20020a05600c440800b0030d90076dabso5961364wmn.1
        for <devicetree@vger.kernel.org>; Mon, 18 Oct 2021 04:41:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=zPIojQ5RzeuaqadWrZEbZpzRMQdeFPgWbBMit52fPcI=;
        b=iCURnxjSOhHzfeFZMPq+Dv1DY6v6VIS3+6ETqypb9yCgscHKOnVOrAjPtOXGulwZZ2
         yquC/Z7szQ0Pbn8pcuG2VwlscpvoQFBAow+6UllYlmDBMG6/iFxXQ9lFYt1MyLAjWlq6
         BUmpKU3pHW5R0lbJNFXHAruQLO4gMIHiIgLqbvwSCbf7ciqBk4RAgSUdaw18GYyk1J1m
         NDyg3RV8Pr4iQu7EGa6rhrQ8BeuXTHex8Sr1n+EmVC9UHBICEYG4gYK1M4phkDGV8ci4
         Sx6dx/uoqydpfWYpXElfxKfXAfrHNTWx4KjMxNiKLULnoYk+h1WKbi0zjFNbQXDJxo3H
         bzvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=zPIojQ5RzeuaqadWrZEbZpzRMQdeFPgWbBMit52fPcI=;
        b=mbM8PHaThlCl1oz2bUpORtcdyDYjHlfCB1G1p//ywKuGWdhIDiQxARPMw6/6OAq1pg
         4bvn+Wc9XHty1yx0cCEXnq1oS7GS958iDnAh9LVfgQCwaHwLL39fc2W8EyJ0r6LNGteH
         jLQvgTUXZ+Cs+kFYHVtUMPajXyQX2kPNSOvyGc4KaH/g5fu60YZin9oWtGB52teqdNF/
         eTgwu1b5IN6eyNGzhdiwxts2E1gFqicUMEzflrWvusnh4PC/LlnHGSH5yKkDnCy6L/Y6
         jYdH6xT93i76SmA65c+xIBzuIwPUX7N1caEGgufpWg3j5EmUe6nAUOK4+xMcHNdZxrQE
         n/MA==
X-Gm-Message-State: AOAM532bbKAuIK8K2PMdMcFYCJu8++N0bENYJkg87t7j+zOyRpbeSaDf
        ZrlgDiRAAxXbru1cohKlA67l4Q==
X-Google-Smtp-Source: ABdhPJzmo20Ty+p4ZX0gCo3egFMPZJcbNMmW5ipqMgSzq8bz3svkpuRRIWcVRhAEXuO93/GkyzaueQ==
X-Received: by 2002:a05:600c:1d1f:: with SMTP id l31mr42782729wms.44.1634557272930;
        Mon, 18 Oct 2021 04:41:12 -0700 (PDT)
Received: from lmecxl0524.lme.st.com ([2a04:cec0:1042:58b3:f8bd:7b81:c866:9456])
        by smtp.gmail.com with ESMTPSA id p18sm13595588wrt.54.2021.10.18.04.41.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Oct 2021 04:41:12 -0700 (PDT)
From:   Etienne Carriere <etienne.carriere@linaro.org>
To:     linux-kernel@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org,
        Sudeep Holla <sudeep.holla@arm.com>,
        Cristian Marussi <cristian.marussi@arm.com>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Etienne Carriere <etienne.carriere@linaro.org>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 1/2] dt-bindings: arm: Add OP-TEE transport for SCMI
Date:   Mon, 18 Oct 2021 13:40:45 +0200
Message-Id: <20211018114046.25571-1-etienne.carriere@linaro.org>
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
Changes since v2:
 - Define mandatory property linaro,optee-channel-id
 - Rebased on yaml description file

Changes since v1:
 - Removed modification regarding mboxes property description.
---
 .../bindings/firmware/arm,scmi.yaml           | 44 +++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/Documentation/devicetree/bindings/firmware/arm,scmi.yaml b/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
index 5c4c6782e052..12154ecc081b 100644
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
+      Channel id required when using OP-TEE transports
+
   protocol@11:
     type: object
     properties:
@@ -195,6 +203,9 @@ patternProperties:
         minItems: 1
         maxItems: 2
 
+      linaro,optee-channel-id:
+        maxItems: 1
+
     required:
       - reg
 
@@ -226,6 +237,16 @@ else:
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
@@ -340,7 +361,30 @@ examples:
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
+            linaro,optee-channel = <0>;
+
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            scmi_clk: protocol@14 {
+                reg = <0x14>;
+                #clock-cells = <1>;
+            };
+
+            scmi_dvfs: protocol@13 {
+                reg = <0x13>;
 
+                #clock-cells = <1>;
+                linaro,optee-channel = <1>;
+                shmem = <&cpu_scp_hpri0>;
+            };
         };
     };
 
-- 
2.17.1

