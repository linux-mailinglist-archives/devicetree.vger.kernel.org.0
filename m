Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CA84643DC7F
	for <lists+devicetree@lfdr.de>; Thu, 28 Oct 2021 09:53:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230004AbhJ1H4V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Oct 2021 03:56:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229881AbhJ1H4V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Oct 2021 03:56:21 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD456C061570
        for <devicetree@vger.kernel.org>; Thu, 28 Oct 2021 00:53:54 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id i5so868240wrb.2
        for <devicetree@vger.kernel.org>; Thu, 28 Oct 2021 00:53:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=hwlpnlC96Iq4yd/qa1MHN9OndDMbSpFJ5nBOkRygT0Y=;
        b=pelz1Ufc5/UAKeFvt0zU3hIcMd/8+35nlNxNl5AGpEgnNfb5Y+o8BZhEsr1TCLrlzy
         XZFUOHSTRZ8GLwd1ZhF1bFH6is2FJtXEFJZ0bDSa2tfZVCVbyvw7WVbYAVttAv4SRKw1
         dKICJLJ+As0pk7cQeiZaB8Q5sgFoKKrCwqWzhkVartmw1zQJEyNSkX7XOIXXhygQUiFw
         8+VU9UUG7wWVgjmChhlQG1+6P1NTrJp6l/1v+CyjYWA/E43rJYNIdjyLFD6d4VA1c9FR
         OWTE2yAMeTdZ6p800O/5w8+W8Lmfcl/zsgy65h2K0qe+r0iqBTMGn1wJI3PtLboDQujE
         P8/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=hwlpnlC96Iq4yd/qa1MHN9OndDMbSpFJ5nBOkRygT0Y=;
        b=3j7fa6krOCr2N0zxfBXBbFueS1Kvh/9a2+3fBbvSc3YAZcFs0UhdgXmT9dR+X/K/gF
         iRgx7NJfzOQKI6LreCOCqNs/+YvrXg057BZjmLCpArum9VFOOdBwEBASaBdmHOvCB6xl
         e6rn6EU76L8xovBUuJ+Mq4tbQpz/oJTxL1azwYLqA3iISUrJ5w/sHl2mcvaK650m1fw+
         fd70dr9bpwpn65ZKIKjrdSaenjYnQPFWreq2ZSpelMqesg9ivr0qk3mImEosXqqqLWSD
         BgZG4qbLFKdsZ0LTihIMrAd+N3uJ9/TEiQQID3UWc8+hYbPAIGOJUJnEifPidhN0ddYw
         SMPw==
X-Gm-Message-State: AOAM5305OOdvVum7GPto9qIDENKouqL0rbhmePG1P2nVCvSVAAAxqSr8
        pNWSg6zMHmq39ncMI1l1lWWSb3XFHTYXpg==
X-Google-Smtp-Source: ABdhPJz+2cI7ART9PUdzOV7ARxZXthcWU+MfZsDw5otUo+78hcs2xAypNpMTKVLApLHW/opWjh5A3w==
X-Received: by 2002:a5d:63c2:: with SMTP id c2mr3578371wrw.174.1635407633242;
        Thu, 28 Oct 2021 00:53:53 -0700 (PDT)
Received: from lmecxl0524.lme.st.com ([2a04:cec0:10ad:cd3f:50ee:a5d1:4a7:ad6])
        by smtp.gmail.com with ESMTPSA id y12sm405677wrn.73.2021.10.28.00.53.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Oct 2021 00:53:52 -0700 (PDT)
From:   Etienne Carriere <etienne.carriere@linaro.org>
To:     linux-kernel@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org,
        Sudeep Holla <sudeep.holla@arm.com>,
        Cristian Marussi <cristian.marussi@arm.com>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Etienne Carriere <etienne.carriere@linaro.org>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v7 1/2] dt-bindings: arm: Add OP-TEE transport for SCMI
Date:   Thu, 28 Oct 2021 09:53:43 +0200
Message-Id: <20211028075344.1688-1-etienne.carriere@linaro.org>
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

