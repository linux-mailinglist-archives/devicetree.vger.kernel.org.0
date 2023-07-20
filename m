Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C418375B85B
	for <lists+devicetree@lfdr.de>; Thu, 20 Jul 2023 21:56:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231228AbjGTT42 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Jul 2023 15:56:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231202AbjGTT40 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Jul 2023 15:56:26 -0400
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com [IPv6:2607:f8b0:4864:20::d31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1E38270A
        for <devicetree@vger.kernel.org>; Thu, 20 Jul 2023 12:56:23 -0700 (PDT)
Received: by mail-io1-xd31.google.com with SMTP id ca18e2360f4ac-7835e5fa459so48125739f.2
        for <devicetree@vger.kernel.org>; Thu, 20 Jul 2023 12:56:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1689882983; x=1690487783;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pm50cG8+VYxQrZ29a9sQ2VaIggAxKnM2gahSZhcTxbY=;
        b=f+QOL5nD3w4bP6xc0oYpcXl5qSHzLEIzrBdywXfDEcYE/GlRao2jzpFI4llwSAFp67
         H7MYhxVAv7NRUQawPjIje+gxB+z0oPaJGQUYR7OXOen+vRkWIKghkFiujvUtD5Tx05Lw
         8MAdcYdIWPsAMYGctyCoXlY8WCr1aUtB+GW0Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689882983; x=1690487783;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Pm50cG8+VYxQrZ29a9sQ2VaIggAxKnM2gahSZhcTxbY=;
        b=hWE7G/3pUzBvvvCCmOtyvJWmWP7rUhvzjqE0qQ4sCGIbQ0T4FMU/5zCpDTX/pDGDlz
         fEav2FDhhMtT6mfdQxoOxLX+7VLx0R6ffB/CY02u0WK/2VVBIcyENqwoOAkABvtkwame
         Kb/ugnvTLMzt6iCcuOzzPmKq43o0AcvJqEPMrmq3h06DHQdG2YwrB9y6RIx+G6vgtoGY
         HYVz53Q81JF8nusaddn0N/PkCMZhNIw8OzFAjaVLA0DPcmbRk6mmf9pN5Kot+zNoLOxg
         eYYtqBX+ZZ0t51liB2pv1N2gGIum6XOpmNPlD98JknZCxOWO2a0jIuuKznGb12iBKHp3
         Jz6Q==
X-Gm-Message-State: ABy/qLZ7OzvTtpoUE0lLat3kZTJ76v2fsRhkChrqW7YpjZ+rATMrhftW
        OJEJ6FI0lHzBzNlWCCdBirMa2vUIxKCWMFMiruU=
X-Google-Smtp-Source: APBJJlFO4uywDooD7Iok1A3B1dD8kBZejD+JnvUwqqP4gdtDynCfEhrYmqTUpuo9QMwx9L9h66xLrQ==
X-Received: by 2002:a05:6e02:156b:b0:346:4283:de9c with SMTP id k11-20020a056e02156b00b003464283de9cmr3662ilu.11.1689882983100;
        Thu, 20 Jul 2023 12:56:23 -0700 (PDT)
Received: from kea.bld.corp.google.com ([2620:15c:183:200:2c76:15eb:8d48:aada])
        by smtp.gmail.com with ESMTPSA id u12-20020a056e02080c00b0033e62b47a49sm475670ilm.41.2023.07.20.12.56.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jul 2023 12:56:22 -0700 (PDT)
From:   Simon Glass <sjg@chromium.org>
To:     devicetree@vger.kernel.org
Cc:     U-Boot Mailing List <u-boot@lists.denx.de>,
        Tom Rini <trini@konsulko.com>,
        Alper Nebi Yasak <alpernebiyasak@gmail.com>,
        Neha Malcom Francis <n-francis@ti.com>,
        Stefan Herbrechtsmeier <stefan.herbrechtsmeier@weidmueller.com>,
        Philippe Reynes <philippe.reynes@softathome.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh@kernel.org>,
        Simon Glass <sjg@chromium.org>
Subject: [PATCH v2 2/2] schemas: Add a schema for binman
Date:   Thu, 20 Jul 2023 13:56:02 -0600
Message-ID: <20230720195617.2276563-2-sjg@chromium.org>
X-Mailer: git-send-email 2.41.0.487.g6d72f3e995-goog
In-Reply-To: <20230720195617.2276563-1-sjg@chromium.org>
References: <20230720195617.2276563-1-sjg@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
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
index 0000000..949b067
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
+      image-desc = <&image>;
+    };
+
+  Note that the intention is to change Binman to use whatever schema is agreed
+  here.
+
+properties:
+  $nodename:
+    const: binman
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
2.41.0.487.g6d72f3e995-goog

