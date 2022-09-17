Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CB9345BB600
	for <lists+devicetree@lfdr.de>; Sat, 17 Sep 2022 06:11:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229528AbiIQELn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Sep 2022 00:11:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229495AbiIQELm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Sep 2022 00:11:42 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC48679634
        for <devicetree@vger.kernel.org>; Fri, 16 Sep 2022 21:11:40 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id d2so3363040wrq.2
        for <devicetree@vger.kernel.org>; Fri, 16 Sep 2022 21:11:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=QAI/foqzLEXHZd5jZrgE/n2XZnVTrZam+SjXq++haqk=;
        b=Rj7H5/mS/OwpEMI49uZpixzzVsKR6NFFotdrhgk84AwQu10jRPvmEtjQW0c6Y2wE3v
         TbE0ESpZvH55KHApcL/zgAsbztg1enOX0R/VHvtiZxaveDE8+bFOwEL3mSO7lY1QUmJ8
         98iFsr/8uNN5+e4QqkJ8mLwPmyu6Mu/bUBaF1RQd0baanavp3lyyVTNu02IJ5NobY2Q0
         v2Zrr1Q9lcnwXLWIXU9sxeUh+sT/JwATLjGPVxNeoer2cG91JYQZhO0GmWhD+7WmBjLH
         ATF0UjDlEIr4HQFKTQF2Rf2VEzFEVuzQqeHxoWLvLvyQZqvYOx8RMZMLCxD/FoUkqHBH
         frvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=QAI/foqzLEXHZd5jZrgE/n2XZnVTrZam+SjXq++haqk=;
        b=My99kPno/Yr1i5SpCw7QYEKkSUKUWbhOctl47FkTiXTesxfoPXXkC1Ypfa94SKtCGw
         0MYp5s6FvVG0bhOD+BaHT9aZbOKkeIUX3IWlRhhf8tnt8RDuONV0sG5uX1+KfRdN0eVu
         cyw+7oShV0tlegDNh1BqU4thQRlgkBaPR01Y9daREZPmHkhLj2knSSuKwpFeSTET9mda
         5XE4uQleQg9vG6pjIYZPzLEvFQImfxFzP/vexaQx+3zJDyG+SV99POTInkSx+xcxjKh7
         p6s2GUve1WekuQOC/+s/Or+D+E494kZfg36uyiCn00t/KFK/zwlDxWY3NyzVKZBaHW3s
         CsPw==
X-Gm-Message-State: ACrzQf1SeNM8eLCQveRfSxn16nSSwyRRyUqi/12oONp7VombVGoyMQaK
        5ALwQSpAmim2zTjUdQ5j3MwZL+gtuMGYIA==
X-Google-Smtp-Source: AMsMyM6LCTxYaRjYvtzANr4i2Ei0X39EADmwMTwQ8gYLQO72/ksUsxZkgMMRo+IVbDD5t+2za34O3w==
X-Received: by 2002:adf:d1e1:0:b0:22a:cd3e:e98b with SMTP id g1-20020adfd1e1000000b0022acd3ee98bmr4860266wrd.510.1663387898950;
        Fri, 16 Sep 2022 21:11:38 -0700 (PDT)
Received: from localhost.localdomain (188.red-88-10-59.dynamicip.rima-tde.net. [88.10.59.188])
        by smtp.gmail.com with ESMTPSA id bn20-20020a056000061400b0022aeba020casm915142wrb.83.2022.09.16.21.11.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Sep 2022 21:11:38 -0700 (PDT)
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     tsbogend@alpha.franken.de, robh+dt@kernel.org, krzk+dt@kernel.org,
        arinc.unal@arinc9.com
Subject: [PATCH v2] dt-bindings: mips: add CPU bindings for MIPS architecture
Date:   Sat, 17 Sep 2022 06:11:36 +0200
Message-Id: <20220917041136.526446-1-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the yaml binding for available CPUs in MIPS architecture.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
Changes in v2:
 - Remove 'bindings/mips/brcm/brcm,bmips.txt'
 - Include 'mips-hpt-frequency' in cpus YAML schema for bmips CPUS's
 - Add a BMIPS CPU node sample

 .../bindings/mips/brcm/brcm,bmips.txt         |   8 --
 .../devicetree/bindings/mips/cpus.yaml        | 100 ++++++++++++++++++
 2 files changed, 100 insertions(+), 8 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mips/brcm/brcm,bmips.txt
 create mode 100644 Documentation/devicetree/bindings/mips/cpus.yaml

diff --git a/Documentation/devicetree/bindings/mips/brcm/brcm,bmips.txt b/Documentation/devicetree/bindings/mips/brcm/brcm,bmips.txt
deleted file mode 100644
index 8ef71b4085ca..000000000000
--- a/Documentation/devicetree/bindings/mips/brcm/brcm,bmips.txt
+++ /dev/null
@@ -1,8 +0,0 @@
-* Broadcom MIPS (BMIPS) CPUs
-
-Required properties:
-- compatible: "brcm,bmips3300", "brcm,bmips4350", "brcm,bmips4380",
-  "brcm,bmips5000"
-
-- mips-hpt-frequency: This is common to all CPUs in the system so it lives
-  under the "cpus" node.
diff --git a/Documentation/devicetree/bindings/mips/cpus.yaml b/Documentation/devicetree/bindings/mips/cpus.yaml
new file mode 100644
index 000000000000..361afde8ce0a
--- /dev/null
+++ b/Documentation/devicetree/bindings/mips/cpus.yaml
@@ -0,0 +1,100 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mips/cpus.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MIPS CPUs bindings
+
+maintainers:
+  - Sergio Paracuellos <sergio.paracuellos@gmail.com>
+
+description: |+
+  The device tree allows to describe the layout of CPUs in a system through
+  the "cpus" node, which in turn contains a number of subnodes (ie "cpu")
+  defining properties for every cpu.
+
+properties:
+  reg:
+    maxItems: 1
+
+  compatible:
+    enum:
+      - brcm,bmips3300
+      - brcm,bmips4350
+      - brcm,bmips4380
+      - brcm,bmips5000
+      - brcm,bmips5200
+      - ingenic,xburst-mxu1.0
+      - ingenic,xburst-fpu1.0-mxu1.1
+      - ingenic,xburst-fpu2.0-mxu2.0
+      - loongson,gs264
+      - mips,mips1004Kc
+      - mips,m14Kc
+      - mips,mips24KEc
+      - mips,mips4KEc
+      - mips,mips74Kc
+      - mips,mips24Kc
+      - mti,mips24KEc
+      - mti,mips14KEc
+      - mti,mips14Kc
+      - mti,interaptiv
+
+if:
+  properties:
+    compatible:
+      enum:
+        - brcm,bmips3300
+        - brcm,bmips4350
+        - brcm,bmips4380
+        - brcm,bmips5000
+        - brcm,bmips5200
+then:
+  patternProperties:
+    mips-hpt-frequency:
+      $ref: /schemas/types.yaml#/definitions/uint32
+
+required:
+  - compatible
+
+additionalProperties: true
+
+examples:
+  - |
+    cpus {
+      #size-cells = <0>;
+      #address-cells = <1>;
+
+      cpu@0 {
+        device_type = "cpu";
+        compatible = "mips,mips1004Kc";
+        reg = <0>;
+      };
+
+      cpu@1 {
+        device_type = "cpu";
+        compatible = "mips,mips1004Kc";
+        reg = <1>;
+      };
+    };
+
+  - |
+    // Example 2 (BMIPS CPU)
+    cpus {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      mips-hpt-frequency = <150000000>;
+
+      cpu@0 {
+        compatible = "brcm,bmips4350";
+        device_type = "cpu";
+        reg = <0>;
+      };
+
+      cpu@1 {
+        compatible = "brcm,bmips4350";
+        device_type = "cpu";
+        reg = <1>;
+      };
+    };
-- 
2.25.1

