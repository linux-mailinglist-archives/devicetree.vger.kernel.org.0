Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB8FD1FBF9F
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2020 22:02:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731321AbgFPUBs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Jun 2020 16:01:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731290AbgFPUBs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Jun 2020 16:01:48 -0400
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com [IPv6:2a00:1450:4864:20::241])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65142C06174E
        for <devicetree@vger.kernel.org>; Tue, 16 Jun 2020 13:01:46 -0700 (PDT)
Received: by mail-lj1-x241.google.com with SMTP id a9so26853ljn.6
        for <devicetree@vger.kernel.org>; Tue, 16 Jun 2020 13:01:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
        h=subject:from:to:cc:references:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=aWO75gel+iwtZbxOhkXHjiT9tTB+84KOocNtLqXpNQ8=;
        b=0odJg0aFPYkly8BVHsV/pucfb+OV+iXoQ4S6FYiXNwAUIjsCEE7NL+N7LLEq2vTcNM
         RMES5+lN+Vn56mO89sK4UIhOd+/y/qLN4J+tznb26HZDXi9g0D+QJEsSIvBjaiCxviSY
         7EGAcCROk8VDncv2OOd9fu5jo6MzW2cl71WFB5edtE5OeZhmGHozIkHydQ1I+EobWRh8
         1MVsQNi6z/6FMXTVSOz1FBmNMh9fg+s+tkFqYZZS+eiWoWUOemapUwduy/dmdVmZybnv
         ZzHCNhUQuZ4GMm5guFlNeen/d7nqPJ1LxFVcw/PFeQpI1GTynXNsvPnunS1G408A8KYX
         jG9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=aWO75gel+iwtZbxOhkXHjiT9tTB+84KOocNtLqXpNQ8=;
        b=oLzxVjF/Hj7GF0NZMKAybqaN5aCVq/ZfKwivsT3a2u10ChB1rAF4flYV14sAiQGWMI
         9nmltSSwy94XbMrcDWq/AWnJU+Z4HiNjwKz7QP+Wuw9ZZb9vvtBaS2AfxP68iwL1e/Tr
         aggw85TUtEIpNQSGT0lNayGT1z2toU4d6s/HhpsBH7dIKriMspv93VpbUuqt3Z9DuJnm
         fhMNYSVoIDCsNVesoPNLImmbS6WGgh2SNFvuwq1CKjwpjUd6GvlnDccfLK5CoV3PBjxr
         DPjQoTmdMJ/yiWK18v2yV3KmdoX2u67LrK5GuppWZSRqpKlH/kAAdhtEKNd8XvI1qdsj
         PtZA==
X-Gm-Message-State: AOAM531w00toB0J3Vf4vWue2noAKi2aBRcCXDQm81tUiQ8PBcsOPTRAC
        u2C71NqxABNjtWZ9ICIv/Rjmkw==
X-Google-Smtp-Source: ABdhPJzwR1DflJ6w6nkK+bK+LJFVbeD5x6k2Orz5FH5F23/BmUG+q2M4FTudf5HeY1gJBbxLN6PQSA==
X-Received: by 2002:a2e:b6c2:: with SMTP id m2mr2470985ljo.63.1592337704322;
        Tue, 16 Jun 2020 13:01:44 -0700 (PDT)
Received: from wasted.cogentembedded.com ([2a00:1fa0:44fe:a796:a57:d8fd:42a6:762c])
        by smtp.gmail.com with ESMTPSA id q14sm4598485ljj.110.2020.06.16.13.01.43
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Jun 2020 13:01:43 -0700 (PDT)
Subject: [PATCH v5 1/2] dt-bindings: memory: document Renesas RPC-IF bindings
From:   Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
To:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        Mason Yang <masonccyang@mxic.com.tw>,
        linux-spi@vger.kernel.org, Chris Brandt <chris.brandt@renesas.com>,
        linux-mtd@lists.infradead.org, linux-renesas-soc@vger.kernel.org,
        Mark Brown <broonie@kernel.org>
References: <9969c8a1-e6be-38a9-ced5-ce8c5ff07046@cogentembedded.com>
Organization: Cogent Embedded
Message-ID: <54a84c75-fa17-9976-d9a6-a69ef67c418b@cogentembedded.com>
Date:   Tue, 16 Jun 2020 23:01:42 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <9969c8a1-e6be-38a9-ced5-ce8c5ff07046@cogentembedded.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-MW
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Renesas Reduced Pin Count Interface (RPC-IF) allows a SPI flash or
HyperFlash connected to the SoC to be accessed via the external address
space read mode or the manual mode.

Document the device tree bindings for the Renesas RPC-IF found in the R-Car
gen3 SoCs.

Based on the original patch by Mason Yang <masonccyang@mxic.com.tw>.

Signed-off-by: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>

---
Changes in version 5:
- added R8A77970 to the possible values for the "compatible" prop;
- switched to my private email in the "maintainers:" clause.

Changes in version 4:
- added the SoC name comments to the RPC-IF's "compatible" prop description;
- removed a hyphen before 'enum' in the subnode description;
- removed leading 0s in the "reg" prop in the example.

Changes in version 3:
- fixed up the whitespace and added hyphens in the "compatible" prop text, also
  removed the comments;
- specified the subnode name as "flash", and used "enum" in the subnode text; 
- fixed up the SPDX-License-Identifier: tag.

Changes in version 2:
- rewrote the bindings in YAML.

 Documentation/devicetree/bindings/memory-controllers/renesas,rpc-if.yaml |   88 ++++++++++
 1 file changed, 88 insertions(+)

Index: linux/Documentation/devicetree/bindings/memory-controllers/renesas,rpc-if.yaml
===================================================================
--- /dev/null
+++ linux/Documentation/devicetree/bindings/memory-controllers/renesas,rpc-if.yaml
@@ -0,0 +1,88 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/memory-controllers/renesas,rpc-if.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Renesas Reduced Pin Count Interface (RPC-IF)
+
+maintainers:
+  - Sergei Shtylyov <sergei.shtylyov@gmail.com>
+
+description: |
+  Renesas RPC-IF allows a SPI flash or HyperFlash connected to the SoC to
+  be accessed via the external address space read mode or the manual mode.
+
+  The flash chip itself should be represented by a subnode of the RPC-IF node.
+  The flash interface is selected based on the "compatible" property of this
+  subnode:
+  - if it contains "jedec,spi-nor", then SPI is used;
+  - if it contains "cfi-flash", then HyperFlash is used.
+
+allOf:
+  - $ref: "/schemas/spi/spi-controller.yaml#"
+
+properties:
+  compatible:
+    items:
+      - enum:
+        - renesas,r8a77970-rpc-if       # R-Car V3M
+        - renesas,r8a77980-rpc-if       # R-Car V3H
+        - renesas,r8a77995-rpc-if       # R-Car D3
+      - const: renesas,rcar-gen3-rpc-if # a generic R-Car gen3 device
+
+  reg:
+    items:
+      - description: RPC-IF registers
+      - description: direct mapping read mode area
+      - description: write buffer area
+
+  reg-names:
+    items:
+      - const: regs
+      - const: dirmap
+      - const: wbuf
+
+  clocks:
+    maxItems: 1
+
+  power-domains:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+patternProperties:
+  "flash@[0-9a-f]+$":
+    type: object
+    properties:
+      compatible:
+        enum:
+          - cfi-flash
+          - jedec,spi-nor
+
+examples:
+  - |
+    #include <dt-bindings/clock/renesas-cpg-mssr.h>
+    #include <dt-bindings/power/r8a77995-sysc.h>
+
+    spi@ee200000 {
+      compatible = "renesas,r8a77995-rpc-if", "renesas,rcar-gen3-rpc-if";
+      reg = <0xee200000 0x200>,
+            <0x08000000 0x4000000>,
+            <0xee208000 0x100>;
+      reg-names = "regs", "dirmap", "wbuf";
+      clocks = <&cpg CPG_MOD 917>;
+      power-domains = <&sysc R8A77995_PD_ALWAYS_ON>;
+      resets = <&cpg 917>;
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      flash@0 {
+        compatible = "jedec,spi-nor";
+        reg = <0>;
+        spi-max-frequency = <40000000>;
+        spi-tx-bus-width = <1>;
+        spi-rx-bus-width = <1>;
+      };
+    };
