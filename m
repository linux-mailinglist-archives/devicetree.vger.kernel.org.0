Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4E79974F9A2
	for <lists+devicetree@lfdr.de>; Tue, 11 Jul 2023 23:18:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230227AbjGKVSU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jul 2023 17:18:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33534 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229505AbjGKVST (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jul 2023 17:18:19 -0400
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com [IPv6:2607:f8b0:4864:20::d36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30A7C1709
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 14:18:18 -0700 (PDT)
Received: by mail-io1-xd36.google.com with SMTP id ca18e2360f4ac-785ccf19489so291112039f.3
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 14:18:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1689110297; x=1691702297;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/WbxYvL0qWr+E6HjgkVvPoFFObtoPrMxvyiRe/Uz0U0=;
        b=Jgp+p/je1l0Ok4Q1jK9+vfE2+QAmCKfz/4+MjXcb7hwaSuGO6iB0BGxewK5wV+aG4B
         KenK7D1KHxTxUp6nC09aIK7A3OkcQPbXFfcIkpaDpXXltti+kUHMcasWmvDiKG3boVOx
         rYRIDUr64sZqeB80EMfsbKv97ZnLNdcZSl6RQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689110297; x=1691702297;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/WbxYvL0qWr+E6HjgkVvPoFFObtoPrMxvyiRe/Uz0U0=;
        b=jgy42JioU09mdCEjcklXmcXKGP5U0l7FGoyjcu3xlx+FtboZjI+WtH03A83mMYj9v5
         7Ps/8666L/ixlqhKvx+coKSB8CHoLQpCpHyASXcPdAoLuaVtCX8uYwX6a6+B4Qdf6FIn
         kiORFkAGLXiIWDe/Mg3G6XEQZ8dFZm/fnWPm9Jq6t2GnaQ8ueaRW4cEe94TwK8c35nk9
         9no9yZcUbnVgscYeFncgmnfR7iO+rXdfjS97akKwvzV31HABZDKjN27b8ORZzZIcHv5J
         zISlyO65odmEJi8cDPCaJv9Gm+PsjOZqU8DIGxOtAj7C/fPMDACoXR2ahbkKF+2fGJ1e
         YAnA==
X-Gm-Message-State: ABy/qLYETPfnQFI8qLZdhdzTaTNjGMmCSgvBiuALSGFINVRaEBYF1AuY
        kNgeL4c2lCTqpEXmmemML1ewFvVtiM9o4e8P+2M=
X-Google-Smtp-Source: APBJJlE4VUN7Zt2DrgGiHIY9c5zF2RWfkSrVDR4tDeDCtdYZJYGR4on4Oi4IZ57sQXj46G7Rx24vUA==
X-Received: by 2002:a5d:8849:0:b0:783:5fd9:3789 with SMTP id t9-20020a5d8849000000b007835fd93789mr9911658ios.1.1689110297454;
        Tue, 11 Jul 2023 14:18:17 -0700 (PDT)
Received: from kea.bld.corp.google.com ([2620:15c:183:200:d311:4db9:a093:9b10])
        by smtp.gmail.com with ESMTPSA id i10-20020a02b68a000000b004290fd3a68dsm782774jam.1.2023.07.11.14.18.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jul 2023 14:18:17 -0700 (PDT)
From:   Simon Glass <sjg@chromium.org>
To:     devicetree@vger.kernel.org
Cc:     Tom Rini <trini@konsulko.com>, Rob Herring <robh@kernel.org>,
        U-Boot Mailing List <u-boot@lists.denx.de>,
        Simon Glass <sjg@chromium.org>
Subject: [PATCH 2/2] schemas: Add a schema for binman
Date:   Tue, 11 Jul 2023 15:18:08 -0600
Message-ID: <20230711211810.4172447-2-sjg@chromium.org>
X-Mailer: git-send-email 2.41.0.255.g8b1d071c50-goog
In-Reply-To: <20230711211810.4172447-1-sjg@chromium.org>
References: <20230711211810.4172447-1-sjg@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I am unsure whether to add this with a generic name, such as 'layout',
but for now am using /firmware/binman to avoid conflicts with any other
firmware-layout schema that others might be working on.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

 dtschema/schemas/firmware/binman.yaml       | 51 ++++++++++++++++++
 dtschema/schemas/firmware/binman/entry.yaml | 57 +++++++++++++++++++++
 2 files changed, 108 insertions(+)
 create mode 100644 dtschema/schemas/firmware/binman.yaml
 create mode 100644 dtschema/schemas/firmware/binman/entry.yaml

diff --git a/dtschema/schemas/firmware/binman.yaml b/dtschema/schemas/firmware/binman.yaml
new file mode 100644
index 0000000..4b1ecf6
--- /dev/null
+++ b/dtschema/schemas/firmware/binman.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2023 Google LLC
+
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/firmware/binman.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Binman firmware layout
+
+maintainers:
+  - Simon Glass <sjg@chromium.org>
+
+description: |
+  The binman node provides a layout for firmware, used when packaging firmware
+  from multiple projects. For now it just supports a very simple set of
+  features, as a starting point for discussion.
+
+  Documentation for Binman is available at:
+
+  https://u-boot.readthedocs.io/en/latest/develop/package/binman.html
+
+  with the current image-description format at:
+
+  https://u-boot.readthedocs.io/en/latest/develop/package/binman.html#image-description-format
+
+properties:
+  $nodename:
+    const: binman
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+  - |
+    firmware {
+      binman {
+        compatible = "u-boot,binman";
+
+        u-boot {
+          size = <0xa0000>;
+        };
+
+        atf-bl31 {
+          offset = <0x100000>;
+        };
+      };
+    };
diff --git a/dtschema/schemas/firmware/binman/entry.yaml b/dtschema/schemas/firmware/binman/entry.yaml
new file mode 100644
index 0000000..16b84c5
--- /dev/null
+++ b/dtschema/schemas/firmware/binman/entry.yaml
@@ -0,0 +1,57 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2023 Google LLC
+
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/firmware/binman/entry.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Binman entry
+
+maintainers:
+  - Simon Glass <sjg@chromium.org>
+
+description: |
+  The entry node specifies a single entry in the firmware.
+
+  Entries have a specific type, such as "u-boot" or "atf-bl31". If the type
+  is missing, the name is used as the type.
+
+  Note: This definition is intended to be hierarchical, so that entries can
+  appear in other entries. Schema for that is TBD.
+
+properties:
+  $nodename:
+    pattern: "^[-a-z]+(-[0-9]+)?$"
+
+  type:
+    $ref: /schemas/types.yaml#/definitions/string
+
+  offset:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      Provides the offset of this entry from the start of its parent section.
+
+  size:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      Provides the size of this entry in bytes.
+
+additionalProperties: false
+
+examples:
+  - |
+    firmware {
+      binman {
+        compatible = "u-boot,binman";
+
+        u-boot {
+          size = <0xa0000>;
+        };
+
+        second-area {
+          type = "atf-bl31";
+          offset = <0x100000>;
+        };
+      };
+    };
-- 
2.41.0.255.g8b1d071c50-goog

