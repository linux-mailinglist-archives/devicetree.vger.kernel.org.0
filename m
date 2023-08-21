Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C4A2C782FE1
	for <lists+devicetree@lfdr.de>; Mon, 21 Aug 2023 20:02:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237062AbjHUSC4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Aug 2023 14:02:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233032AbjHUSC4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Aug 2023 14:02:56 -0400
Received: from mail-io1-xd34.google.com (mail-io1-xd34.google.com [IPv6:2607:f8b0:4864:20::d34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AAF7EE2
        for <devicetree@vger.kernel.org>; Mon, 21 Aug 2023 11:02:53 -0700 (PDT)
Received: by mail-io1-xd34.google.com with SMTP id ca18e2360f4ac-790970a8706so135786939f.2
        for <devicetree@vger.kernel.org>; Mon, 21 Aug 2023 11:02:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1692640973; x=1693245773;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j6dKXlUCtF4Vk8NYYPt8EDR9ys0KycDXbvw6cAmT3AQ=;
        b=kfMDN4xGZPwqWxXOHiz9G89uT8Nid/G9bj6TKNdj9MjsBlvGNplYqaineKI+U4/SkS
         4Wpx262k+NejNh5xd6zNtaFRR3pNgCT0wQFQru9nvQ+XbZUk/sQ2HH/KL88l3+YcaZgU
         Pp6pK4T2e7OY01t2iH1B9YXdKXTwQvKMsVmAs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692640973; x=1693245773;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j6dKXlUCtF4Vk8NYYPt8EDR9ys0KycDXbvw6cAmT3AQ=;
        b=dCKPTiUlzCfnPHZTBMG+y4pZa6+VEdgh0hjPTzsEhDh2hmYRICEcj0BEWa4BoOWtr3
         spPECPc0Sjl9/NxjWoxu4xo71UWBjmUNIhfb9D7OOYAS0BPAAgkItfjbtYq+81L6xFb3
         U6T1qPiAzo/vabrWxIyf2j5nsCPhShZ0I4cNaXzs0DQxcUQx/yyf75PqRaUdcoPl31Rd
         e0uMKgko4QUbvPb+HizbAZgndwPwze8B++uhdPUjj/Ux7UiWdnsuMc1MsxPGL68oHIfA
         5LGu73QfOJlswvYiLXlBjdKA4QSll3A9O4iUA2szYAX5SG1lbUqgHKUxg0TKCZybt84c
         Cs/w==
X-Gm-Message-State: AOJu0YxWKw6NCnmv00nqFGtSeItkLSnrMSR3wVRhtPjQtk7UOKdbtG+K
        lJoU6EvVkIBsNkpqHl2Co8iqiOQmDIaR/XlIYpc=
X-Google-Smtp-Source: AGHT+IEoTLnPDF+t5t0d6gFGtssiK8fS8y86OMgrGbICVePhI7mS7tQPdT+6idPFHXgJ4nzzz15FkA==
X-Received: by 2002:a6b:ce03:0:b0:790:f866:d716 with SMTP id p3-20020a6bce03000000b00790f866d716mr8851679iob.15.1692640972927;
        Mon, 21 Aug 2023 11:02:52 -0700 (PDT)
Received: from kea.bld.corp.google.com ([2620:15c:183:200:9102:8976:7620:5093])
        by smtp.gmail.com with ESMTPSA id g5-20020a5ec745000000b007791e286fdbsm2583924iop.21.2023.08.21.11.02.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Aug 2023 11:02:52 -0700 (PDT)
From:   Simon Glass <sjg@chromium.org>
To:     devicetree@vger.kernel.org
Cc:     Tom Rini <trini@konsulko.com>,
        U-Boot Mailing List <u-boot@lists.denx.de>,
        Rob Herring <robh@kernel.org>,
        Alper Nebi Yasak <alpernebiyasak@gmail.com>,
        Neha Malcom Francis <n-francis@ti.com>,
        Stefan Herbrechtsmeier <stefan.herbrechtsmeier@weidmueller.com>,
        Philippe Reynes <philippe.reynes@softathome.com>,
        Peng Fan <peng.fan@nxp.com>, Simon Glass <sjg@chromium.org>
Subject: [PATCH v3 3/3] schemas: Add a schema for binman
Date:   Mon, 21 Aug 2023 12:01:17 -0600
Message-ID: <20230821180220.2724080-3-sjg@chromium.org>
X-Mailer: git-send-email 2.42.0.rc1.204.g551eb34607-goog
In-Reply-To: <20230821180220.2724080-1-sjg@chromium.org>
References: <20230821180220.2724080-1-sjg@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
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

 dtschema/schemas/firmware/image.yaml        | 77 +++++++++++++++++++++
 dtschema/schemas/firmware/layout/entry.yaml | 77 +++++++++++++++++++++
 2 files changed, 154 insertions(+)
 create mode 100644 dtschema/schemas/firmware/image.yaml
 create mode 100644 dtschema/schemas/firmware/layout/entry.yaml

diff --git a/dtschema/schemas/firmware/image.yaml b/dtschema/schemas/firmware/image.yaml
new file mode 100644
index 0000000..cc052e8
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
+additionalProperties: true
+
+examples:
+  - |
+    firmware {
+      image: image {
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
diff --git a/dtschema/schemas/firmware/layout/entry.yaml b/dtschema/schemas/firmware/layout/entry.yaml
new file mode 100644
index 0000000..29f0dfc
--- /dev/null
+++ b/dtschema/schemas/firmware/layout/entry.yaml
@@ -0,0 +1,77 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2023 Google LLC
+
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/firmware/layout/entry.yaml#
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
+additionalProperties: true
+
+examples:
+  - |
+    firmware {
+      image: image {
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
2.42.0.rc1.204.g551eb34607-goog

