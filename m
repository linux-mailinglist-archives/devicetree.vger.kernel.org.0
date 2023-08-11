Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D977E779A69
	for <lists+devicetree@lfdr.de>; Sat, 12 Aug 2023 00:08:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232779AbjHKWIT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Aug 2023 18:08:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234066AbjHKWIS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Aug 2023 18:08:18 -0400
Received: from mail-il1-x134.google.com (mail-il1-x134.google.com [IPv6:2607:f8b0:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AFC512D61
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 15:08:17 -0700 (PDT)
Received: by mail-il1-x134.google.com with SMTP id e9e14a558f8ab-349a94f3d69so556625ab.1
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 15:08:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1691791697; x=1692396497;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aSpw/w7F7Q0jeXezzYKYe8R0mGOG0S0vw4WAjp2H2B8=;
        b=jDBBcPL7zYu54VUj9j74vfV6E2osmLM+sTL+fZsrkcRBJraO6x2sjRMvQ/dRWOEmh4
         I/l15klbtAMarX1vNZq6xgRHlXFHF80QWOq5gRvJqWkgWa3EZVkPrcTpLFwWnBiKSB4R
         pdReXi6Ff892oIQEco8h4h16eean2HSeLU4Hc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691791697; x=1692396497;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aSpw/w7F7Q0jeXezzYKYe8R0mGOG0S0vw4WAjp2H2B8=;
        b=Kv4vG8m6uj9Zuvxuv9tT3fBJF3pr05ivS1hcwTr7ElAfPrUp6qB66c2rordSonFPeY
         tt1he8eE8YrCQggnC3i751a3tL5uIri5hCQ0veLS7u/EUaq3fc7+n+Ffs5i6fy7rUjgS
         qgh1FIGBZohgNfJXZMfwe2mS2idEDOvjvowTBVUhKZ8W/0msebGuCUECNsr1yLHkDsoJ
         11Ax9K3kBg8HEBP4lHYeDIltzBWAaPPkAnNVW7euRUWYd2+5K3zxs2hiDw5GpXVb7WTd
         /a3frLm1b3xOa8xoE45no0LYEiR5lXgZt3ZFdy+4lwMVdligDY6O3LtNnEAJVKAHcQEq
         EZTQ==
X-Gm-Message-State: AOJu0YyCboVPKv4HVa2ne53uAT00OZOMxobINk0cY9IIvmbDg9JmJ8EO
        uLnZp9Qph9n1TRLKikOi9Ii60iynL63Q01RmmTE=
X-Google-Smtp-Source: AGHT+IHHFrOoyShqHvMP5rnXNQK2mKcIrpjoW0aCsvw9tZxcYfrGVhOK9Lv+lKIY8J3gmphxrsQHfg==
X-Received: by 2002:a05:6e02:1d87:b0:349:345b:6580 with SMTP id h7-20020a056e021d8700b00349345b6580mr4403156ila.10.1691791696964;
        Fri, 11 Aug 2023 15:08:16 -0700 (PDT)
Received: from kea.bld.corp.google.com ([2620:15c:183:200:653a:2ace:5c03:a67d])
        by smtp.gmail.com with ESMTPSA id d4-20020a92d784000000b003492dfb8a02sm1404471iln.8.2023.08.11.15.08.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Aug 2023 15:08:16 -0700 (PDT)
From:   Simon Glass <sjg@chromium.org>
To:     devicetree@vger.kernel.org
Cc:     Tom Rini <trini@konsulko.com>, Rob Herring <robh@kernel.org>,
        Alper Nebi Yasak <alpernebiyasak@gmail.com>,
        Neha Malcom Francis <n-francis@ti.com>,
        Stefan Herbrechtsmeier <stefan.herbrechtsmeier@weidmueller.com>,
        Philippe Reynes <philippe.reynes@softathome.com>,
        Peng Fan <peng.fan@nxp.com>,
        U-Boot Mailing List <u-boot@lists.denx.de>,
        Simon Glass <sjg@chromium.org>
Subject: [PATCH v3 2/2] schemas: Add a schema for binman
Date:   Fri, 11 Aug 2023 16:08:04 -0600
Message-ID: <20230811220811.3130954-2-sjg@chromium.org>
X-Mailer: git-send-email 2.41.0.694.ge786442a9b-goog
In-Reply-To: <20230811220811.3130954-1-sjg@chromium.org>
References: <20230811220811.3130954-1-sjg@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

With this version I have done with a generic name, in this case 'data',
as suggested by Alper Nebi Yasak. This may be controversial, but we may
as well have the dicussion now. I assume that there are no other
ongoing attempts to define the layout of firmware in devicetree.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

Changes in v3:
Use data,layout for the layout property

Changes in v2:
- Reworked significantly based on Alper's comments

 dtschema/schemas/firmware/binman/entry.yaml | 80 +++++++++++++++++++++
 dtschema/schemas/firmware/image.yaml        | 77 ++++++++++++++++++++
 2 files changed, 157 insertions(+)
 create mode 100644 dtschema/schemas/firmware/binman/entry.yaml
 create mode 100644 dtschema/schemas/firmware/image.yaml

diff --git a/dtschema/schemas/firmware/binman/entry.yaml b/dtschema/schemas/firmware/binman/entry.yaml
new file mode 100644
index 0000000..d50f96d
--- /dev/null
+++ b/dtschema/schemas/firmware/binman/entry.yaml
@@ -0,0 +1,80 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2023 Google LLC
+
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/firmware/image/entry.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Image entry
+
+maintainers:
+  - Simon Glass <sjg@chromium.org>
+
+description: |
+  The entry node specifies a single entry in the firmware image.
+
+  Entries have a specific type, such as "u-boot" or "atf-bl31". This is provided
+  using compatible = "data,<type>".
+
+  Note: This definition is intended to be hierarchical, so that entries can
+  appear in other entries. Schema for that is TBD.
+
+properties:
+  $nodename:
+    pattern: "^[-a-z]+(-[0-9]+)?$"
+
+  compatible:
+    $ref: /schemas/types.yaml#/definitions/string
+
+  offset:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      Provides the offset of this entry from the start of its parent section.
+
+      This may be omitted in the description provided by Binman, in which case
+      the value is calculated as part of image packing.
+
+  size:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      Provides the size of this entry in bytes.
+
+      This may be omitted in the description provided by Binman, in which case
+      the value is calculated as part of image packing.
+
+  reg:
+    description: |
+      Defines the offset and size of this entry, with reference to its parent
+      image / section.
+
+      Note This is typically omitted in the description provided to Binman,
+      since the value is calculated as part of image packing. Separate
+      properties are provided for the size and offset of an entry, so that it is
+      easy to specify none, one or both. The `reg` property is the only one that
+      needs to be looked at once the image has been built.
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    firmware {
+      image {
+        compatible = "data,image";
+        #address-cells = <1>;
+        $size-cells = <1>;
+
+        u-boot@0 {
+          compatible = "data,u-boot";
+          reg = <0 0xa0000>;
+        };
+
+        atf-bl31@0x100000 {
+          compatible = "data,atf-bl31";
+          reg = <0x100000 0x20000>;
+        };
+      };
+    };
diff --git a/dtschema/schemas/firmware/image.yaml b/dtschema/schemas/firmware/image.yaml
new file mode 100644
index 0000000..f342fa2
--- /dev/null
+++ b/dtschema/schemas/firmware/image.yaml
@@ -0,0 +1,77 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2023 Google LLC
+
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/firmware/image.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Binman firmware layout
+
+maintainers:
+  - Simon Glass <sjg@chromium.org>
+
+description: |
+  The image node provides a layout for firmware, used when packaging firmware
+  from multiple projects. For now it just supports a very simple set of
+  features, as a starting point for discussion.
+
+  The Binman tool processes this node to produce a final image which can be
+  loaded into suitable storage device. Documentation is at:
+
+  https://u-boot.readthedocs.io/en/latest/develop/package/binman.html
+
+  The current image-description format is here:
+
+  https://u-boot.readthedocs.io/en/latest/develop/package/binman.html#image-description-format
+
+  It is desirable to reference the image from the storage-device node, perhaps
+  using an image-desc property:
+
+    spiflash@0 {
+      compatible = "spidev", "jedec,spi-nor";
+      data,layout = <&image>;
+    };
+
+  Note that the intention is to change Binman to use whatever schema is agreed
+  here.
+
+properties:
+  $nodename:
+    pattern: "^[-a-z]+(-[0-9]+)?$"
+
+  compatible:
+    const: data,image
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+required:
+  - compatible
+  - "#address-cell"
+  - "#size-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    firmware {
+      image {
+        compatible = "data,image";
+        #address-cells = <1>;
+        $size-cells = <1>;
+
+        u-boot@0 {
+          compatible = "data,u-boot";
+          reg = <0 0xa0000>;
+        };
+
+        atf-bl31@0x100000 {
+          compatible = "data,atf-bl31";
+          reg = <0x100000 0x20000>;
+        };
+      };
+    };
-- 
2.41.0.694.ge786442a9b-goog

